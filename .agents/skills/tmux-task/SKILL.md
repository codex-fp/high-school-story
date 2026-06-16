---
name: tmux-task
description: Delegate a bounded subtask to a fresh agent session in a new tmux pane and prepare a return handoff to the originating pane. Use when the user wants tmux-based subagent-style execution, with the child session asked to confirm before pasting results back to the original tmux pane.
---

# Tmux Task

Launch a delegated agent task in tmux, then require the delegated session to hand results back only after explicit user confirmation.

## Resolve the launch contract

Read the active project agent instructions before launching anything. Resolve:

- tmux session name
- allowed windows and default window routing
- default agent client command
- any local-only overrides from `AGENTS.local.md` when it exists

Resolve the originating pane ID from the current tmux session. Pass that pane ID into the delegated prompt and into the launcher with `--parent-pane`.

Prefer native startup prompts for the delegated child session when the client supports them. Verified locally, Codex accepts a trailing startup prompt and OpenCode exposes a `--prompt` flag. Use tmux paste only as the fallback for clients without a native startup-prompt path.

## Build the delegated-task prompt

Keep the prompt compact and explicit. Include:

- exact subtask scope
- relevant files, commands, constraints, and known findings
- expected output shape for the parent session
- originating pane ID
- instruction to prepare a compact return handoff instead of a generic summary

Tell the child agent to do these things near the end of the task:

1. Prepare the return handoff text addressed to the original pane.
2. Ask the user for confirmation with wording equivalent to:

```text
Done. Do you want me to hand off task results to the original agent session in <pane-id>?
```

3. Wait for explicit confirmation.
4. Only after confirmation, paste the return handoff into the original pane with tmux and submit it.

If the client supports session or thread renaming, tell it to rename itself early with a task label that hints at the parent pane.

## Launch the delegated pane

1. Resolve the target window.
2. Resolve the session and launch command from the project instructions.
3. Write the delegated-task prompt to a temporary file.
4. Launch the pane with:

```bash
bash .agents/skills/tmux-handoff/scripts/launch-agent-tmux-pane.sh \
  --session "<session>" \
  --window "<window>" \
  --launch-command "<agent client command>" \
  --prompt-file "<prompt-file>" \
  --prompt-mode auto \
  --role task \
  --parent-pane "<origin pane id>" \
  --pane-title "<title hint>"
```

If the resolved client is OpenCode and the base command is plain `opencode`, adjust it to `opencode --prompt` before launching so the prompt goes through the native startup path.

5. Capture the returned `pane_id`, `session`, `window`, and `target`.
6. Tell the user where the delegated task is running and which pane should receive the return handoff.

## Return-handoff mechanics

The child session should use tmux buffer paste commands only after user confirmation. A suitable pattern is:

```bash
tmux load-buffer -b "<buffer-name>" "<return-file>"
tmux paste-buffer -b "<buffer-name>" -t "<origin pane id>"
tmux send-keys -t "<origin pane id>" Enter
tmux delete-buffer -b "<buffer-name>"
```

## Safety checks

- If the originating pane ID cannot be resolved, stop and ask instead of inventing one.
- If the requested window is outside the project-defined allowed set, stop and ask.
- If the tmux session or window does not exist, stop and report the exact missing target.
- Do not send results back automatically. Explicit user confirmation is mandatory.
