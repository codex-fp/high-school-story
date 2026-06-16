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

## Prefer native startup prompts

Avoid tmux paste timing when the client can accept the initial prompt natively.

Verified locally:

- Codex accepts a startup prompt as a trailing positional argument, so `codex "<prompt>"` and `codex --yolo "<prompt>"` can start the session with the prompt already attached.
- OpenCode exposes a `--prompt` flag for startup prompts. When launching OpenCode interactively, prefer `opencode --prompt "<prompt>"` over tmux paste injection.

For unverified clients that do not expose a native startup prompt mechanism, fall back to tmux paste.

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
  --launch-command "<agent client command>" \
  --prompt-file "<prompt-file>" \
  --prompt-mode auto \
  --role handoff \
  --pane-title "<title hint>" \
  [--parent-pane "<pane id>"]
```

If the resolved client is OpenCode and the base command is plain `opencode`, adjust the launch command to `opencode --prompt` so the launcher can deliver the prompt natively with `--prompt-mode argv` or `auto`.

5. Capture the returned `pane_id`, `session`, `window`, and `target`.
6. Tell the user where the session is running and what the handoff covers.

## Safety checks

- If the requested window is outside the project-defined allowed set, stop and ask.
- If the tmux session or window does not exist, stop and report the exact missing target.
- If the project instructions do not define a launch command, use plain `codex` as the fallback only when no stronger local convention exists.
- Do not invent client-specific flags. Use the resolved launch command as written.
- Exception: for verified native startup-prompt support such as Codex positional prompts or OpenCode `--prompt`, it is acceptable to wrap the base client command so the prompt is delivered natively instead of by tmux paste.
