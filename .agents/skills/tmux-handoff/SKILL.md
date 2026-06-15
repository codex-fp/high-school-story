---
name: tmux-handoff
description: Launch a fresh Codex tmux pane with a handoff prompt. Use when the user asks to hand off work to a new tmux-backed Codex session.
---

# Tmux Handoff

Use this skill when the user wants a new Codex session started in tmux and fed a handoff prompt.

## Project-specific routing

Resolve the tmux session name, allowed windows, default window routing, and
Codex launch flags from the active project agent instructions.

## What this skill does

1. Build a handoff prompt for a fresh agent.
2. Launch a new pane in the resolved tmux target.
3. Start the resolved Codex launch command from project instructions or use default `codex`.
4. Paste the handoff prompt into the new Codex session and submit it.

## Handoff prompt requirements

Keep the prompt compact and task-oriented. Include:

- The requested outcome.
- The active backlog task ID when one exists.
- Relevant files, commands, constraints, and known findings.
- What the new session should do first.
- What it must not do.

Do not write a generic summary. Write a working handoff for immediate execution.

## Execution steps

1. Resolve the target window.
2. Resolve the tmux session name and Codex launch command from project instructions.
3. Create a temporary prompt file with a multiline handoff prompt.
4. Run:

```bash
bash .agents/skills/tmux-handoff/scripts/launch-codex-tmux-pane.sh --session "<session>" --window "<window>" --prompt-file "<prompt-file>" --launch-command "<codex command>"
```

5. Capture the returned `pane_id`, `session`, and `window`.
6. Tell the user which tmux target was started and what the handoff covers.

## Safety checks

- If the user specifies a window outside the project-defined allowed set, stop and ask.
- If the tmux session or window does not exist, stop and report the exact missing target.
- Do not improvise alternate launch flags. Use the launch command defined by project instructions.
