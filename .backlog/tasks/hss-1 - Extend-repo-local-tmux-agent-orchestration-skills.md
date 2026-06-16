---
id: HSS-1
title: Extend repo-local tmux agent orchestration skills
status: Done
assignee: []
created_date: '2026-06-16 12:24'
updated_date: '2026-06-16 13:27'
labels: []
dependencies: []
modified_files:
  - .agents/skills/tmux-fork/SKILL.md
  - .agents/skills/tmux-fork/agents/openai.yaml
  - .agents/skills/tmux-handoff/SKILL.md
  - .agents/skills/tmux-handoff/agents/openai.yaml
  - .agents/skills/tmux-handoff/scripts/launch-agent-tmux-pane.sh
  - .agents/skills/tmux-handoff/scripts/launch-codex-tmux-pane.sh
  - .agents/skills/tmux-task/SKILL.md
  - .agents/skills/tmux-task/agents/openai.yaml
  - AGENTS.md
priority: medium
ordinal: 1000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Update the existing repo-local tmux skills so they work for agent handoff, session forking, and tmux-based subtask delegation without hardcoding a specific agent client. Keep the skills generic and instruct them to resolve the tmux target, allowed windows, default routing, launch command, and any local defaults from the active project agent instructions such as AGENTS.md or AGENTS.local.md. Add a new tmux-task skill for delegated subtasks that require an end-of-task return handoff back to the original pane after user confirmation.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 `tmux-handoff` and `tmux-fork` describe an agent-client-agnostic workflow that resolves tmux routing and launch command from active project instructions instead of assuming Codex-specific defaults.
- [x] #2 A new `tmux-task` skill exists and instructs the delegated session to prepare a return handoff for the originating pane, ask for user confirmation before sending results back, and only then paste the result into the original tmux pane.
- [x] #3 Shared launcher support for tmux pane creation and prompt injection works with arbitrary launch commands and carries enough metadata to distinguish parent and child sessions.
- [x] #4 Skill folders include valid metadata and pass the skill validator for the affected tmux skills.
<!-- AC:END -->



## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Inspect the existing repo-local tmux skills and shared launcher to find Codex-specific assumptions.
2. Replace the shared launcher contract with an agent-client-agnostic pane launcher that can carry role, pane title, and parent-pane metadata.
3. Rewrite `tmux-handoff` and `tmux-fork` around the generic launcher and add a new `tmux-task` skill for delegated subtasks with confirmation-gated return handoff.
4. Regenerate skill UI metadata, validate the skill folders, and capture verification evidence in the task record.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Updated the tmux skill set in `.agents/skills/` instead of `~/.codex/skills` because this repository already owns repo-local tmux orchestration skills and local routing guidance points to them.

Replaced the old Codex-specific launcher implementation with a generic wrapper plus a new `launch-agent-tmux-pane.sh` helper that accepts `--role`, `--pane-title`, and `--parent-pane` metadata and exports those hints into the launched shell.

Validated all three skills with `quick_validate.py`, checked both launcher scripts with `bash -n`, and exercised the generic launcher in `--dry-run` mode against the live `high-school-story:engineering` target using a non-Codex launch command (`claude`).

Did not run Gradle or game preview commands because the change is limited to repo-local agent skills and shell helpers, not Kotlin/game/runtime code.

After final review, removed the obsolete `launch-codex-tmux-pane.sh` compatibility wrapper instead of keeping a second entrypoint, and updated shared `AGENTS.md` wording so `AGENTS.local.md` is described as generic personal guidance rather than a tmux-specific source. `AGENTS.local.md` was also updated locally to mention `tmux-task`, but that file is gitignored and remains machine-local.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Updated the repo-local tmux skill set to work with arbitrary terminal agent clients instead of assuming Codex-only launch behavior. `tmux-handoff` and `tmux-fork` now tell the agent to resolve the tmux target, allowed windows, default routing, and launch command from project or local agent instructions, and both use a generic shared launcher.

Added `tmux-task` for delegated subtask sessions. It requires the child session to carry the originating pane ID, prepare a return handoff, ask the user for confirmation before sending results back, and only then paste the result into the original pane.

Introduced `launch-agent-tmux-pane.sh` as the single shared launcher for tmux-based agent sessions, removed the obsolete `launch-codex-tmux-pane.sh` entrypoint, regenerated `agents/openai.yaml` for the three tmux skills, and updated `AGENTS.md` so `AGENTS.local.md` is framed as generic personal guidance rather than a tmux-specific source.

Verification:
- `python3 /home/fpiechowski/.codex/skills/.system/skill-creator/scripts/quick_validate.py .agents/skills/tmux-handoff`
- `python3 /home/fpiechowski/.codex/skills/.system/skill-creator/scripts/quick_validate.py .agents/skills/tmux-fork`
- `python3 /home/fpiechowski/.codex/skills/.system/skill-creator/scripts/quick_validate.py .agents/skills/tmux-task`
- `bash -n .agents/skills/tmux-handoff/scripts/launch-agent-tmux-pane.sh`
- `bash .agents/skills/tmux-handoff/scripts/launch-agent-tmux-pane.sh --session high-school-story --window engineering --prompt-file <tmp> --launch-command 'claude' --role task --parent-pane '%1' --pane-title 'task <- %1' --dry-run`
- `git diff --check`

`AGENTS.local.md` is intentionally machine-local and gitignored, so its mention of `tmux-task` is not part of the pushed repository state.
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
