---
id: HSS-1.2
title: Use native startup prompts for tmux handoff and task sessions
status: Done
assignee: []
created_date: '2026-06-16 13:11'
updated_date: '2026-06-16 13:16'
labels: []
dependencies: []
modified_files:
  - .agents/skills/tmux-handoff/scripts/launch-agent-tmux-pane.sh
  - .agents/skills/tmux-handoff/SKILL.md
  - .agents/skills/tmux-task/SKILL.md
parent_task_id: HSS-1
priority: medium
ordinal: 3000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Fix the race where a generated prompt may be pasted into a new tmux pane before the target agent client is ready to accept input. Update the shared tmux launcher and the repo-local tmux skills so handoff-style session startup prefers native client prompt injection when the chosen client supports it, instead of relying on tmux paste timing. Keep a fallback path only for clients that do not offer a native startup-prompt mechanism.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 The shared tmux launcher supports native startup-prompt delivery for agent clients that can accept the initial prompt as a command-line argument or flag, while preserving a fallback for paste-based startup when necessary.
- [x] #2 `tmux-handoff` and `tmux-task` prefer native startup prompts instead of tmux paste when the resolved client supports it.
- [x] #3 The implementation includes verified client-specific guidance for the locally available agent clients that were checked in this environment.
- [x] #4 Validation covers the updated launcher and the affected tmux skills against the live tmux topology or equivalent dry-run evidence.
<!-- AC:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Update the shared tmux launcher so it can choose a native startup-prompt path when the selected agent client exposes one, while keeping tmux paste as a fallback.
2. Update the repo-local handoff-oriented tmux skills to prefer native startup prompts and document the verified client-specific launch forms.
3. Validate the launcher and skills against the current tmux topology with dry-run evidence plus direct client capability checks.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Added launcher auto-resolution for startup prompt delivery: Codex now uses a trailing positional prompt, OpenCode uses argv only when the resolved launch command already supports `--prompt` or `run`, and all other clients fall back to tmux paste.

Verified local client capabilities in this environment with `codex --help` showing `Usage: codex [OPTIONS] [PROMPT]` and `opencode --help` showing `--prompt` plus `--fork` support.

Validated the updated launcher against the live tmux topology using the current project window `high-school-story:eng-%13`; dry runs resolved `prompt_mode=auto` to `resolved_prompt_mode=argv` for both `codex --yolo` and `opencode --prompt`.

Ran `bash -n .agents/skills/tmux-handoff/scripts/launch-agent-tmux-pane.sh`, `python3 /home/fpiechowski/.codex/skills/.system/skill-creator/scripts/quick_validate.py .agents/skills/tmux-handoff`, `python3 /home/fpiechowski/.codex/skills/.system/skill-creator/scripts/quick_validate.py .agents/skills/tmux-task`, and `git diff --check`; all passed.

This task changes shell/script and skill documentation only, so Gradle verification was not required.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Updated the repo-local tmux handoff flow to avoid volatile tmux paste timing when the agent client supports a native startup prompt. The shared launcher now defaults to `--prompt-mode auto`, resolves Codex startup prompts to a trailing positional argument, resolves OpenCode to argv delivery only when the configured launch command already supports `--prompt` or `run`, and preserves tmux paste as the fallback for unverified clients.

Updated `tmux-handoff` and `tmux-task` to prefer native startup prompts, document the verified Codex and OpenCode launch forms, and keep the fallback behavior explicit for other clients. Validation covered shell syntax, skill validation, direct local CLI capability checks, live-topology dry runs against `high-school-story:eng-%13`, and `git diff --check`.

Residual risk: clients other than the locally verified Codex and OpenCode paths still rely on fallback paste delivery unless their launch contract is explicitly configured to expose a native startup-prompt mechanism.
<!-- SECTION:FINAL_SUMMARY:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 Specification or owning documentation is updated when behavior changes
- [x] #2 Implementation matches the accepted task scope
- [x] #3 Required Gradle checks pass
- [x] #4 Relevant visual preview or launcher scenario is verified when applicable
- [x] #5 Verification evidence records commands run
- [x] #6 Verification evidence records scenario steps
- [x] #7 Verification evidence records observed results
- [x] #8 Verification evidence records relevant logs or artifact notes
- [x] #9 Self-review is completed before handoff
- [x] #10 Final handoff references the HSS task ID and residual risks
<!-- DOD:END -->
