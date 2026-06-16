---
name: tmux-task
description: Delegate a bounded subtask to a fresh agent session in a new tmux pane and prepare a return handoff to the originating pane. Use when the user wants tmux-based subagent-style execution, with the child session asked to confirm before pasting results back to the original tmux pane.
---

# Tmux Task

Launch a delegated agent task in tmux, then require the delegated session to hand results back only after explicit user confirmation.

## Resolve the launch contract

Read the active project agent instructions before launching anything. Resolve:

- tmux session name
- default agent client command
- any local-only overrides from `AGENTS.local.md` when it exists

Resolve the originating pane ID from the current tmux session. Pass that pane ID into the delegated prompt and into the launcher with `--parent-pane`.
When the user did not specify a target window, prefer the currently active tmux window in the resolved session. Do not treat local guidance as a closed list of allowed window names.

Prefer native startup prompts for the delegated child session when the client supports them. Verified locally, Codex accepts a trailing startup prompt and OpenCode exposes a `--prompt` flag. Use tmux paste only as the fallback for clients without a native startup-prompt path.

## Build the delegated-task prompt

Pick a short task label before you launch the pane. The label should make it obvious which delegated task a later result belongs to, for example `combat-balance-audit` or `ktlint-fix`.

Keep the prompt compact and explicit. Start with a metadata block and then the task body.

Required metadata:

- `TMUX_SKILL: tmux-task`
- `TASK_LABEL: <label>`
- `PARENT_AGENT_SESSION_ID: <id or unknown>`
- `PARENT_TMUX_SESSION: <session>`
- `PARENT_TMUX_WINDOW: <window>`
- `PARENT_TMUX_PANE: <origin pane id>`
- `BACKLOG_TASK_ID: <id or none>`

Then include:

- exact subtask scope
- relevant files, commands, constraints, and known findings
- expected output shape for the parent session
- originating pane ID
- instruction to prepare a compact return handoff instead of a generic summary

Tell the child agent to do these things near the end of the task:

1. Prepare the return handoff text addressed to the original pane.
   The return handoff must start with a metadata block:

```text
TMUX_SKILL: tmux-task-result
TASK_LABEL: <same label>
CHILD_AGENT_SESSION_ID: <id or unknown>
CHILD_TMUX_SESSION: <session>
CHILD_TMUX_WINDOW: <window>
CHILD_TMUX_PANE: <pane id or unknown>
PARENT_AGENT_SESSION_ID: <id or unknown>
PARENT_TMUX_PANE: <origin pane id>
STATUS: done | blocked
```

   After the metadata block, structure the body as:
   `Summary`, `Key Findings`, `Files Changed`, `Verification`, `Open Questions or Risks`, and `Requested Parent Action`.
2. Ask the user for confirmation with wording equivalent to:

```text
Done. Do you want me to hand off task results to the original agent session in <pane-id>?
```

3. Wait for explicit confirmation.
4. Only after confirmation, paste the return handoff into the original pane with tmux.
5. Immediately submit the pasted handoff in the original pane by sending `Enter`, so the parent agent receives it as a real message instead of an unsubmitted draft.

## Launch the delegated pane

1. Resolve the target window in this order: explicit user target, currently active tmux window in the resolved session.
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
  --context-label "<task label>" \
  --role task \
  --parent-pane "<origin pane id>" \
  --pane-title "<title hint>"
```

If the resolved client is OpenCode and the base command is plain `opencode`, adjust it to `opencode --prompt` before launching so the prompt goes through the native startup path.

5. Capture the returned `pane_id`, `session`, `window`, `target`, and `context_label`.
6. Tell the user where the delegated task is running, which `TASK_LABEL` it owns, and which pane should receive the return handoff.

## Return-handoff mechanics

The child session should use tmux buffer paste commands only after user confirmation. The flow must end with an explicit submit in the parent pane. A suitable pattern is:

```bash
tmux load-buffer -b "<buffer-name>" "<return-file>"
tmux paste-buffer -b "<buffer-name>" -t "<origin pane id>"
tmux send-keys -t "<origin pane id>" Enter
tmux delete-buffer -b "<buffer-name>"
```

The pasted result should always keep the leading metadata block intact so the parent can identify which delegated sub-session produced the result.

## Safety checks

- If the originating pane ID cannot be resolved, stop and ask instead of inventing one.
- If the user explicitly requested a tmux window and that window does not exist in the resolved session, stop and report the exact missing target.
- If the tmux session or window does not exist, stop and report the exact missing target.
- Do not send results back automatically. Explicit user confirmation is mandatory.
