---
name: tmux-fork
description: Fork the current agent work into a fresh tmux pane. Use when the user asks to fork, split off, or parallelize the current session into a new tmux-backed agent pane, with the client command resolved from project or local agent instructions instead of being hardcoded to one agent.
---

# Tmux Fork

Spawn a parallel agent session that inherits the current run context and owns a bounded subproblem.

## Resolve the launch contract

Read the active project agent instructions first. Resolve:

- tmux session name
- default agent client command
- any local-only overrides from `AGENTS.local.md` when present

Resolve the current pane ID when possible. Use `tmux display-message -p '#{pane_id}'` if the session is already inside tmux.
When the user did not specify a window, prefer the currently active tmux window in the resolved session. Do not treat local guidance as a closed list of allowed window names.

Detect whether the resolved client supports native session forking. Prefer the native client mechanism over a pasted manual handoff whenever it exists.

## Fork semantics

A fork inherits the current run's context and narrows it to a parallel subproblem.

Pick a short fork label before you launch the pane. The label should let the parent identify this exact fork later, for example `inventory-check` or `docs-rag-debug`.

Build the fork prompt around a metadata block plus the task body.

Required metadata:

- `TMUX_SKILL: tmux-fork`
- `FORK_LABEL: <label>`
- `PARENT_AGENT_SESSION_ID: <exact id for native forks, otherwise id or unknown>`
- `PARENT_TMUX_SESSION: <session>`
- `PARENT_TMUX_WINDOW: <window>`
- `PARENT_TMUX_PANE: <pane id or unknown>`
- `BACKLOG_TASK_ID: <id or none>`

Then include:

- current objective
- what has already been inspected, changed, or ruled out
- exact subtask the fork owns
- files, commands, constraints, and risks that matter
- expected return shape such as findings, patch, or verification evidence

Use the fork to offload a bounded piece of work, not to duplicate the whole session.
Tell the child fork to mention the same `FORK_LABEL` in its first acknowledgement and any final report so the parent can map the result to the right branch of work.

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
  --context-label "<fork label>" \
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

1. Resolve the target window in this order: explicit user target, currently active tmux window in the resolved session.
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
  --context-label "<fork label>" \
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
  --context-label "<fork label>" \
  --role fork \
  --pane-title "<title hint>" \
  [--parent-pane "<pane id>"]
```

7. Capture the returned `pane_id`, `session`, `window`, `target`, and `context_label`.
8. Tell the user what was forked, which `FORK_LABEL` it owns, whether it used native client forking or fallback handoff, and where the fork is running.

## Safety checks

- If the user explicitly requested a tmux window and that window does not exist in the resolved session, stop and report the exact missing target.
- If the tmux session or window does not exist, stop and report the exact missing target.
- If the current pane cannot be resolved, do not fake a parent-pane link. Continue without it or fall back to `tmux-handoff` if the user only wanted a generic separate session.
- For Codex, prefer an explicit session UUID over `--last` whenever both are possible.
- Do not use the fork for unrelated brainstorming or as a substitute for a clear subtask.
