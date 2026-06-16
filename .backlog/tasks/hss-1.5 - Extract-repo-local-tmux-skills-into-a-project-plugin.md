---
id: HSS-1.5
title: Extract repo-local tmux skills into a project plugin
status: Done
assignee:
  - Codex
created_date: '2026-06-16 16:46'
updated_date: '2026-06-16 16:57'
labels: []
dependencies: []
references:
  - /home/fpiechowski/tmux-codex/README.md
  - /home/fpiechowski/tmux-codex/.agents/plugins/marketplace.json
  - /home/fpiechowski/tmux-codex/plugins/tmux-codex/.codex-plugin/plugin.json
documentation:
  - AGENTS.md
  - docs/agent/guide.md
  - AGENTS.local.md
modified_files:
  - .agents/skills/tmux-handoff/SKILL.md
  - .agents/skills/tmux-handoff/agents/openai.yaml
  - .agents/skills/tmux-handoff/scripts/launch-agent-tmux-pane.sh
  - .agents/skills/tmux-fork/SKILL.md
  - .agents/skills/tmux-fork/agents/openai.yaml
  - .agents/skills/tmux-task/SKILL.md
  - .agents/skills/tmux-task/agents/openai.yaml
  - AGENTS.local.md
parent_task_id: HSS-1
priority: medium
ordinal: 7000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Extract the repo-local tmux orchestration skills (`tmux-handoff`, `tmux-fork`, `tmux-task`) and their shared launcher into a standalone Codex plugin maintained in a separate git repository rooted at `~/tmux-codex`. Use a plugin layout and marketplace setup that remains valid for Codex installation while keeping this repository free of a duplicate repo-local implementation. Install the plugin for local use in this project and align project-local guidance so tmux workflow instructions point at the installed plugin rather than `.agents/skills/`.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 A standalone plugin repository rooted at `~/tmux-codex` contains a valid Codex plugin manifest, marketplace setup, and the `tmux-handoff`, `tmux-fork`, and `tmux-task` skills plus their shared launcher script.
- [x] #2 Project or local agent guidance in this checkout is aligned so the tmux workflow points at the installed plugin-provided skills instead of a duplicate repo-local `.agents/skills/tmux-*` source of truth.
- [x] #3 The plugin is validated and installed for local use through the appropriate Codex marketplace flow, with verification evidence showing the installed plugin can be resolved from the configured local marketplace.
<!-- AC:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Scaffold a standalone plugin repository under `~/tmux-codex` using the plugin-creator flow, choosing a marketplace/layout that keeps the plugin installable by Codex while preserving the requested separate git repo boundary.
2. Copy the existing `tmux-handoff`, `tmux-fork`, and `tmux-task` skills plus the shared tmux launcher into the new plugin, then adjust any internal paths and manifest metadata needed for plugin packaging.
3. Validate the plugin, configure the required marketplace/install command for the standalone repo, and install the plugin locally so Codex can resolve it in this project.
4. Update this checkout's local guidance to reference the installed plugin-provided tmux skills instead of repo-local `.agents/skills/*` paths, then capture verification evidence and residual risks in the task record.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
User changed scope after initial task creation: the plugin should live in a separate git repo at `~/tmux-codex`, not as a repo-scoped plugin inside `high-school-story`.

Scaffolded a standalone plugin repo at `/home/fpiechowski/tmux-codex` with plugin content under `plugins/tmux-codex` and a repo-root marketplace file at `.agents/plugins/marketplace.json` so Codex can install it through a non-default local marketplace while keeping the requested separate git repo boundary.

Copied `tmux-handoff`, `tmux-fork`, and `tmux-task` into the plugin, kept the shared launcher bundled under `skills/tmux-handoff/scripts/`, and rewrote the skill docs to tell future agents to resolve the launcher from the installed plugin skill root instead of from `high-school-story/.agents/skills/...`.

Installed the marketplace with `codex plugin marketplace add /home/fpiechowski/tmux-codex` and installed the plugin with `codex plugin add tmux-codex@tmux-codex-local`. `codex plugin list` now reports `tmux-codex@tmux-codex-local` as `installed, enabled` at `/home/fpiechowski/tmux-codex/plugins/tmux-codex`.

Removed the repo-local tmux skill copies from `high-school-story/.agents/skills/` and updated local guidance in `AGENTS.local.md` to point at the installed `tmux-codex` plugin instead of the deleted repo-local skill folders.

Verification: `python3 /home/fpiechowski/.codex/skills/.system/plugin-creator/scripts/validate_plugin.py /home/fpiechowski/tmux-codex/plugins/tmux-codex`; `python3 /home/fpiechowski/.codex/skills/.system/skill-creator/scripts/quick_validate.py` for each of the three plugin skills; `bash -n /home/fpiechowski/tmux-codex/plugins/tmux-codex/skills/tmux-handoff/scripts/launch-agent-tmux-pane.sh`; `codex plugin marketplace list`; `codex plugin list`; `git diff --check` for `high-school-story`.

Did not run Gradle or game previews because the change is limited to local agent skills, local plugin packaging, and machine-local tmux guidance rather than Kotlin/game/runtime code.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Created a standalone `tmux-codex` plugin repository at `/home/fpiechowski/tmux-codex` and moved the local tmux workflow skills into it. The new repo contains a non-default local marketplace at `.agents/plugins/marketplace.json`, a packaged plugin under `plugins/tmux-codex`, updated manifest metadata, and bundled copies of `tmux-handoff`, `tmux-fork`, `tmux-task`, plus the shared `launch-agent-tmux-pane.sh` launcher.

Adjusted the plugin skill docs so they no longer depend on `high-school-story/.agents/skills/...` paths and instead instruct future agents to resolve the bundled launcher from the installed plugin skill root. Initialized the standalone repo with Git and added a minimal `README.md` plus `.gitignore`.

Installed the marketplace with `codex plugin marketplace add /home/fpiechowski/tmux-codex` and installed the plugin with `codex plugin add tmux-codex@tmux-codex-local`. Verification confirmed `tmux-codex@tmux-codex-local` is `installed, enabled`, plugin validation passed, all three skill folders passed `quick_validate.py`, and the launcher shell script passed `bash -n`.

In `high-school-story`, removed the now-duplicated repo-local tmux skill folders under `.agents/skills/` and updated `AGENTS.local.md` so local tmux guidance points at the installed standalone plugin instead. No Gradle or preview checks were run because no game/runtime code changed.

Residual risk: Codex typically picks up newly installed plugin skills reliably in a new thread, so an already-open thread may not surface the new plugin skill inventory until a fresh session is started.
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
