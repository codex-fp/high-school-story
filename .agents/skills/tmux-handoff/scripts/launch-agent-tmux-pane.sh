#!/usr/bin/env bash
set -euo pipefail

session=""
window=""
prompt_file=""
launch_command=""
pane_title=""
context_label=""
role=""
parent_pane=""
prompt_mode="auto"
dry_run=0

usage() {
    cat <<'EOF'
Usage: launch-agent-tmux-pane.sh --session <name> --window <window> --launch-command <command> [--prompt-file <file>] [--prompt-mode auto|paste|argv|none] [--pane-title <title>] [--context-label <label>] [--role <role>] [--parent-pane <pane-id>] [--dry-run]

Starts a new tmux pane in the requested window, launches the requested agent
client command, then either pastes the prompt, passes it as a final CLI
argument, or skips prompt injection entirely.
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
        --prompt-mode)
            require_arg "$1" "${2:-}"
            prompt_mode="$2"
            shift 2
            ;;
        --pane-title)
            require_arg "$1" "${2:-}"
            pane_title="$2"
            shift 2
            ;;
        --context-label)
            require_arg "$1" "${2:-}"
            context_label="$2"
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

case "$prompt_mode" in
    auto|paste|argv|none)
        ;;
    *)
        echo "Unsupported prompt mode: $prompt_mode" >&2
        usage >&2
        exit 1
        ;;
esac

if [[ -z "$session" || -z "$window" || -z "$launch_command" ]]; then
    usage >&2
    exit 1
fi

if [[ -z "$pane_title" && -n "$context_label" ]]; then
    pane_title="$context_label"
fi

if [[ "$prompt_mode" != "none" && -z "$prompt_file" ]]; then
    echo "Prompt file is required when prompt mode is $prompt_mode" >&2
    exit 1
fi

if [[ -n "$prompt_file" ]]; then
    if [[ ! -f "$prompt_file" ]]; then
        echo "Prompt file not found: $prompt_file" >&2
        exit 1
    fi

    if [[ "$prompt_mode" != "none" && ! -s "$prompt_file" ]]; then
        echo "Prompt file is empty: $prompt_file" >&2
        exit 1
    fi
fi

client_name="${launch_command%% *}"
resolved_prompt_mode="$prompt_mode"
if [[ "$prompt_mode" == "auto" ]]; then
    case "$client_name" in
        codex)
            resolved_prompt_mode="argv"
            ;;
        opencode)
            if [[ "$launch_command" == "opencode run"* || "$launch_command" == "opencode --prompt"* || "$launch_command" == "opencode "* && "$launch_command" == *" --prompt"* ]]; then
                resolved_prompt_mode="argv"
            else
                resolved_prompt_mode="paste"
            fi
            ;;
        *)
            resolved_prompt_mode="paste"
            ;;
    esac
fi

if [[ "$resolved_prompt_mode" != "none" && -z "$prompt_file" ]]; then
    echo "Prompt file is required when resolved prompt mode is $resolved_prompt_mode" >&2
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
if [[ -n "$context_label" ]]; then
    payload_segments+=("export TMUX_AGENT_CONTEXT_LABEL=$(printf '%q' "$context_label")")
fi

launch_fragment="exec $launch_command"
if [[ "$resolved_prompt_mode" == "argv" ]]; then
    prompt_arg="$(<"$prompt_file")"
    launch_fragment+=" $(printf '%q' "$prompt_arg")"
fi
payload_segments+=("$launch_fragment")

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
context_label=$context_label
prompt_mode=$prompt_mode
resolved_prompt_mode=$resolved_prompt_mode
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

if [[ "$resolved_prompt_mode" == "paste" ]]; then
    buffer_name="agent-tmux-${window}-$$"
    tmux load-buffer -b "$buffer_name" "$prompt_file"
    tmux paste-buffer -b "$buffer_name" -t "$pane_id"
    tmux send-keys -t "$pane_id" Enter
    tmux delete-buffer -b "$buffer_name" >/dev/null 2>&1 || true
fi

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
context_label=$context_label
prompt_mode=$prompt_mode
resolved_prompt_mode=$resolved_prompt_mode
EOF
