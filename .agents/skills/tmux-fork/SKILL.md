---
name: tmux-fork
description: Fork the current agent work into a fresh tmux pane. Use when the user asks to fork, split off, or parallelize the current session into a new tmux-backed agent pane, with the client command resolved from project or local agent instructions instead of being hardcoded to one agent.
---

# Tmux Fork

Spawn a parallel agent session that inherits the current run context and owns a bounded subproblem.

## Resolve the launch contract

Read the active project agent instructions first. Resolve:

- tmux session name
- allowed windows and default window routing
- default agent client command
- any local-only overrides from `AGENTS.local.md` when present

Resolve the current pane ID when possible. Use `tmux display-message -p '#{pane_id}'` if the session is already inside tmux.

## Fork semantics

A fork inherits the current run's context and narrows it to a parallel subproblem.

Build the fork prompt around:

- current objective
- what has already been inspected, changed, or ruled out
- exact subtask the fork owns
- files, commands, constraints, and risks that matter
- expected return shape such as findings, patch, or verification evidence

Use the fork to offload a bounded piece of work, not to duplicate the whole session.

If the client supports session or thread renaming, instruct it to rename itself early with a fork label that hints at the parent pane.

## Launch the pane

1. Resolve the target window.
2. Resolve the tmux session and launch command from the project instructions.
3. Capture the parent pane ID when available.
4. Write the fork prompt to a temporary file.
5. Launch the pane with:

```bash
bash .agents/skills/tmux-handoff/scripts/launch-agent-tmux-pane.sh \
  --session "<session>" \
  --window "<window>" \
  --prompt-file "<prompt-file>" \
  --launch-command "<agent client command>" \
  --role fork \
  --pane-title "<title hint>" \
  [--parent-pane "<pane id>"]
```

6. Capture the returned `pane_id`, `session`, `window`, and `target`.
7. Tell the user what was forked and where the fork is running.

## Safety checks

- If the requested window is outside the project-defined allowed set, stop and ask.
- If the tmux session or window does not exist, stop and report the exact missing target.
- If the current pane cannot be resolved, do not fake a parent-pane link. Continue without it or fall back to `tmux-handoff` if the user only wanted a generic separate session.
- Do not use the fork for unrelated brainstorming or as a substitute for a clear subtask.
