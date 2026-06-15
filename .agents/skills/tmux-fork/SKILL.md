---
name: tmux-fork
description: Fork the current Codex work into a fresh tmux pane. Use when the user asks to fork, split off, or parallelize the current session into a new tmux Codex pane.
---

# Tmux Fork

Use this skill when the user wants a parallel Codex session spawned from the current work rather than a generic handoff.

## Project-specific routing

Resolve the tmux session name, allowed windows, default window routing, and
Codex launch flags from the active project agent instructions.

## Fork semantics

A fork inherits the current run's context and narrows it to a parallel subproblem.

The fork prompt should include:

- The current objective.
- What has already been inspected or changed.
- The exact subtask the fork should own.
- Files, commands, constraints, and risks that matter.
- The expected return shape: findings, patch, or verification evidence.

Use the fork to offload a bounded piece of work, not to duplicate the whole session.

## Execution steps

1. Resolve the target window.
2. Resolve the tmux session name and Codex launch command from project instructions.
3. Build a compact fork prompt from the current thread state.
4. Write the fork prompt to a temporary file.
5. Run:

```bash
bash .agents/skills/tmux-handoff/scripts/launch-codex-tmux-pane.sh --session "<session>" --window "<window>" --prompt-file "<prompt-file>" --launch-command "<codex command>"
```

6. Capture the returned `pane_id`, `session`, and `window`.
7. Tell the user what was forked and where the fork is running.

## Safety checks

- If the user specifies a window outside the project-defined allowed set, stop and ask.
- If the tmux session or window does not exist, stop and report the exact missing target.
- Do not use the fork for unrelated brainstorming or as a substitute for a clear subtask.
