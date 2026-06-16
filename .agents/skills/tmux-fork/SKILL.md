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

Detect whether the resolved client supports native session forking. Prefer the native client mechanism over a pasted manual handoff whenever it exists.

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

## Native fork first

Use a native fork command when the client exposes one.

### Codex

Verified locally on `codex-cli 0.139.0`:

- `codex fork [SESSION_ID] [PROMPT]` exists as a real CLI command.
- It can fork a still-open interactive session into a separate terminal.
- The active session footer shows the current session UUID.

Prefer the exact current session UUID over `--last` when you can read it from the active session. Use `--last` only when you know the current session is the most recent recorded Codex session for that working context.

For Codex, build a fork-specific launch command and pass the subtask prompt as a CLI argument:

```bash
bash .agents/skills/tmux-handoff/scripts/launch-agent-tmux-pane.sh \
  --session "<session>" \
  --window "<window>" \
  --launch-command "codex fork <session-id>" \
  --prompt-file "<prompt-file>" \
  --prompt-mode argv \
  --role fork \
  --pane-title "<title hint>" \
  [--parent-pane "<pane id>"]
```

If you cannot capture the exact session UUID safely but you have just interacted with the current Codex session and know it is the newest one, use:

```bash
--launch-command "codex fork --last"
```

### OpenCode

OpenCode exposes native fork flags through session continuation, for example `--session <id> --fork` or `--continue --fork`. When using OpenCode, prefer that native path over pasted manual context and pass the prompt as a CLI argument if the chosen invocation supports it.

## Fallback path

If the resolved client does not support native session forking, fall back to a pasted manual fork handoff.

## Launch the pane

1. Resolve the target window.
2. Resolve the tmux session and launch command from the project instructions.
3. Capture the parent pane ID when available.
4. Write the fork prompt to a temporary file.
5. If the client supports native forking, launch a native fork in the new pane:

```bash
bash .agents/skills/tmux-handoff/scripts/launch-agent-tmux-pane.sh \
  --session "<session>" \
  --window "<window>" \
  --launch-command "<native fork command>" \
  --prompt-file "<prompt-file>" \
  --prompt-mode argv \
  --role fork \
  --pane-title "<title hint>" \
  [--parent-pane "<pane id>"]
```

6. Otherwise, fall back to the manual pasted handoff path:

```bash
bash .agents/skills/tmux-handoff/scripts/launch-agent-tmux-pane.sh \
  --session "<session>" \
  --window "<window>" \
  --launch-command "<agent client command>" \
  --prompt-file "<prompt-file>" \
  --prompt-mode paste \
  --role fork \
  --pane-title "<title hint>" \
  [--parent-pane "<pane id>"]
```

7. Capture the returned `pane_id`, `session`, `window`, and `target`.
8. Tell the user what was forked, whether it used native client forking or fallback handoff, and where the fork is running.

## Safety checks

- If the requested window is outside the project-defined allowed set, stop and ask.
- If the tmux session or window does not exist, stop and report the exact missing target.
- If the current pane cannot be resolved, do not fake a parent-pane link. Continue without it or fall back to `tmux-handoff` if the user only wanted a generic separate session.
- For Codex, prefer an explicit session UUID over `--last` whenever both are possible.
- Do not use the fork for unrelated brainstorming or as a substitute for a clear subtask.
