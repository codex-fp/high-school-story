---
name: tmux-handoff
description: Prepare a handoff prompt and launch a fresh agent client in a new tmux pane. Use when the user asks to hand off work to a separate tmux-backed agent session, whether the client command is Codex, Claude Code, OpenCode, or another terminal agent resolved from project or local agent instructions.
---

# Tmux Handoff

Launch a separate agent session in tmux and feed it a ready-to-run handoff.

## Resolve the launch contract

Read the active project agent instructions before launching anything. Resolve:

- tmux session name
- default agent client command such as `codex`, `codex --yolo`, `claude`, or `opencode`
- any local-only conventions from `AGENTS.local.md` when it exists

Do not hardcode project names, window names, or client commands in the skill itself.

When the user did not name a target window explicitly, prefer the currently active tmux window in the resolved tmux session. Do not treat local guidance as a closed list of allowed window names.

## Prefer native startup prompts

Avoid tmux paste timing when the client can accept the initial prompt natively.

Verified locally:

- Codex accepts a startup prompt as a trailing positional argument, so `codex "<prompt>"` and `codex --yolo "<prompt>"` can start the session with the prompt already attached.
- OpenCode exposes a `--prompt` flag for startup prompts. When launching OpenCode interactively, prefer `opencode --prompt "<prompt>"` over tmux paste injection.

For unverified clients that do not expose a native startup prompt mechanism, fall back to tmux paste.

## Build the handoff prompt

Pick a short handoff label before you launch the pane. The label should be stable enough that the parent can recognize later references to the same sub-session, for example `dialogue-audit` or `gradle-fix`.

Keep the prompt compact and executable. Start with a metadata block and then the task body.

Required metadata:

- `TMUX_SKILL: tmux-handoff`
- `HANDOFF_LABEL: <label>`
- `PARENT_AGENT_SESSION_ID: <id or unknown>`
- `PARENT_TMUX_SESSION: <session>`
- `PARENT_TMUX_WINDOW: <window>`
- `PARENT_TMUX_PANE: <pane id or unknown>`
- `BACKLOG_TASK_ID: <id or none>`

Then include:

- requested outcome
- active backlog task ID when one exists
- files, commands, constraints, and known findings that matter
- what the new session should do first
- what it must not do

Tell the child session to repeat the same `HANDOFF_LABEL` in its first acknowledgement and in any later report back to the user.

## Launch the pane

1. Resolve the target window in this order: explicit user target, currently active tmux window in the resolved session.
2. Resolve the tmux session and agent client command from the project instructions.
3. Write the prompt to a temporary file.
4. Launch the pane with:

```bash
bash .agents/skills/tmux-handoff/scripts/launch-agent-tmux-pane.sh \
  --session "<session>" \
  --window "<window>" \
  --launch-command "<agent client command>" \
  --prompt-file "<prompt-file>" \
  --prompt-mode auto \
  --context-label "<handoff label>" \
  --role handoff \
  --pane-title "<title hint>" \
  [--parent-pane "<pane id>"]
```

If the resolved client is OpenCode and the base command is plain `opencode`, adjust the launch command to `opencode --prompt` so the launcher can deliver the prompt natively with `--prompt-mode argv` or `auto`.

5. Capture the returned `pane_id`, `session`, `window`, `target`, and `context_label`.
6. Tell the user where the session is running, which `HANDOFF_LABEL` it owns, and what the handoff covers.

## Safety checks

- If the user explicitly requested a tmux window and that window does not exist in the resolved session, stop and report the exact missing target.
- If the tmux session or window does not exist, stop and report the exact missing target.
- If the project instructions do not define a launch command, use plain `codex` as the fallback only when no stronger local convention exists.
- Do not invent client-specific flags. Use the resolved launch command as written.
- Exception: for verified native startup-prompt support such as Codex positional prompts or OpenCode `--prompt`, it is acceptable to wrap the base client command so the prompt is delivered natively instead of by tmux paste.
