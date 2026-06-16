#!/usr/bin/env bash
set -euo pipefail

session=""
window=""
prompt_file=""
launch_command=""
pane_title=""
role=""
parent_pane=""
dry_run=0

usage() {
    cat <<'EOF'
Usage: launch-agent-tmux-pane.sh --session <name> --window <window> --prompt-file <file> --launch-command <command> [--pane-title <title>] [--role <role>] [--parent-pane <pane-id>] [--dry-run]

Starts a new tmux pane in the requested window, launches the requested agent
client command, then pastes the prompt file contents and submits Enter.
EOF
}

require_arg() {
    local flag="$1"
    local value="${2:-}"
    if [[ -z "$value" ]]; then
        echo "Missing value for $flag" >&2
        exit 1
    fi
}

while [[ $# -gt 0 ]]; do
    case "$1" in
        --session)
            require_arg "$1" "${2:-}"
            session="$2"
            shift 2
            ;;
        --window)
            require_arg "$1" "${2:-}"
            window="$2"
            shift 2
            ;;
        --prompt-file)
            require_arg "$1" "${2:-}"
            prompt_file="$2"
            shift 2
            ;;
        --launch-command)
            require_arg "$1" "${2:-}"
            launch_command="$2"
            shift 2
            ;;
        --pane-title)
            require_arg "$1" "${2:-}"
            pane_title="$2"
            shift 2
            ;;
        --role)
            require_arg "$1" "${2:-}"
            role="$2"
            shift 2
            ;;
        --parent-pane)
            require_arg "$1" "${2:-}"
            parent_pane="$2"
            shift 2
            ;;
        --dry-run)
            dry_run=1
            shift
            ;;
        --help|-h)
            usage
            exit 0
            ;;
        *)
            echo "Unknown argument: $1" >&2
            usage >&2
            exit 1
            ;;
    esac
done

if [[ -z "$session" || -z "$window" || -z "$prompt_file" || -z "$launch_command" ]]; then
    usage >&2
    exit 1
fi

if [[ ! -f "$prompt_file" ]]; then
    echo "Prompt file not found: $prompt_file" >&2
    exit 1
fi

if [[ ! -s "$prompt_file" ]]; then
    echo "Prompt file is empty: $prompt_file" >&2
    exit 1
fi

tmux has-session -t "$session" >/dev/null 2>&1 || {
    echo "tmux session not found: $session" >&2
    exit 1
}

target="${session}:${window}"
tmux list-windows -t "$session" -F '#{window_name}' | grep -Fx "$window" >/dev/null 2>&1 || {
    echo "tmux window not found: $target" >&2
    exit 1
}

if [[ -n "$parent_pane" ]]; then
    tmux list-panes -a -F '#{pane_id}' | grep -Fx "$parent_pane" >/dev/null 2>&1 || {
        echo "tmux parent pane not found: $parent_pane" >&2
        exit 1
    }
fi

cwd="$(tmux display-message -p -t "$target" '#{pane_current_path}')"
shell_path="${SHELL:-/bin/zsh}"
shell_name="${shell_path##*/}"

payload_segments=()
if [[ -n "$role" ]]; then
    payload_segments+=("export TMUX_AGENT_ROLE=$(printf '%q' "$role")")
fi
if [[ -n "$parent_pane" ]]; then
    payload_segments+=("export TMUX_PARENT_PANE=$(printf '%q' "$parent_pane")")
fi
if [[ -n "$pane_title" ]]; then
    payload_segments+=("export TMUX_PANE_TITLE_HINT=$(printf '%q' "$pane_title")")
fi
payload_segments+=("exec $launch_command")

launch_payload=""
for segment in "${payload_segments[@]}"; do
    if [[ -n "$launch_payload" ]]; then
        launch_payload+="; "
    fi
    launch_payload+="$segment"
done

shell_command="$shell_path -lc $(printf '%q' "$launch_payload")"

if [[ "$dry_run" -eq 1 ]]; then
    cat <<EOF
session=$session
window=$window
target=$target
cwd=$cwd
launch_command=$launch_command
prompt_file=$prompt_file
role=$role
parent_pane=$parent_pane
pane_title=$pane_title
shell_command=$shell_command
EOF
    exit 0
fi

pane_id="$(tmux split-window -P -F '#{pane_id}' -t "$target" -c "$cwd" "$shell_command")"

if [[ -n "$pane_title" ]]; then
    tmux select-pane -t "$pane_id" -T "$pane_title"
fi

for _ in $(seq 1 40); do
    current_command="$(tmux display-message -p -t "$pane_id" '#{pane_current_command}' 2>/dev/null || true)"
    if [[ -n "$current_command" && "$current_command" != "$shell_name" ]]; then
        break
    fi
    sleep 0.25
done

buffer_name="agent-tmux-${window}-$$"
tmux load-buffer -b "$buffer_name" "$prompt_file"
tmux paste-buffer -b "$buffer_name" -t "$pane_id"
tmux send-keys -t "$pane_id" Enter
tmux delete-buffer -b "$buffer_name" >/dev/null 2>&1 || true

cat <<EOF
pane_id=$pane_id
session=$session
window=$window
target=$target
cwd=$cwd
launch_command=$launch_command
role=$role
parent_pane=$parent_pane
pane_title=$pane_title
EOF
