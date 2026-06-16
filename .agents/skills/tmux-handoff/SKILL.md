---
name: tmux-handoff
description: Prepare a handoff prompt and launch a fresh agent client in a new tmux pane. Use when the user asks to hand off work to a separate tmux-backed agent session, whether the client command is Codex, Claude Code, OpenCode, or another terminal agent resolved from project or local agent instructions.
---

# Tmux Handoff

Launch a separate agent session in tmux and feed it a ready-to-run handoff.

## Resolve the launch contract

Read the active project agent instructions before launching anything. Resolve:

- tmux session name
- allowed windows and default window routing
- default agent client command such as `codex`, `codex --yolo`, `claude`, or `opencode`
- any local-only conventions from `AGENTS.local.md` when it exists

Do not hardcode project names, window names, or client commands in the skill itself.

## Build the handoff prompt

Keep the prompt compact and executable. Include:

- requested outcome
- active backlog task ID when one exists
- files, commands, constraints, and known findings that matter
- what the new session should do first
- what it must not do

If the client supports thread or session renaming, tell it to rename itself early with a label that hints this is a handoff session. Prefer a label that also includes the parent pane when that information is available.

## Launch the pane

1. Resolve the target window from user intent or project defaults.
2. Resolve the tmux session and agent client command from the project instructions.
3. Write the prompt to a temporary file.
4. Launch the pane with:

```bash
bash .agents/skills/tmux-handoff/scripts/launch-agent-tmux-pane.sh \
  --session "<session>" \
  --window "<window>" \
  --prompt-file "<prompt-file>" \
  --launch-command "<agent client command>" \
  --role handoff \
  --pane-title "<title hint>" \
  [--parent-pane "<pane id>"]
```

5. Capture the returned `pane_id`, `session`, `window`, and `target`.
6. Tell the user where the session is running and what the handoff covers.

## Safety checks

- If the requested window is outside the project-defined allowed set, stop and ask.
- If the tmux session or window does not exist, stop and report the exact missing target.
- If the project instructions do not define a launch command, use plain `codex` as the fallback only when no stronger local convention exists.
- Do not invent client-specific flags. Use the resolved launch command as written.
