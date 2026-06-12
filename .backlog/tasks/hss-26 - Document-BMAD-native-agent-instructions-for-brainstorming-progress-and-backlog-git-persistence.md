---
id: HSS-26
title: >-
  Document BMAD-native agent instructions for brainstorming progress and backlog
  git persistence
status: Done
assignee: []
created_date: '2026-06-12 21:35'
updated_date: '2026-06-12 21:36'
labels:
  - docs
  - bmad
  - workflow
milestone: Agent workflow
dependencies: []
references:
  - AGENTS.md
  - docs/ai-agent-guide.md
  - .agents/skills/gds-brainstorm-game/customize.toml
  - _bmad/custom/config.toml
  - _bmad/custom/gds-brainstorm-game.toml
documentation:
  - docs/index.md
  - docs/development-guide.md
  - _bmad-output/project-context.md
modified_files:
  - docs/ai-agent-guide.md
  - _bmad-output/project-context.md
  - _bmad/custom/gds-brainstorm-game.toml
priority: medium
ordinal: 2600
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Add project-level AI agent guidance covering two behaviors: brainstorming workflows should show explicit overall progress with the current question/topic index and checklist-style status, and `.backlog/` task files should be treated as durable git-tracked artifacts that agents stage and commit alongside the related work unless the user says otherwise. Place the rules in BMAD-native durable docs and skill customization rather than expanding AGENTS.md beyond compatibility-entrypoint scope.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Project guidance states that AGENTS.md remains a compatibility entrypoint and durable agent rules live in BMAD-native docs/customization.
- [x] #2 Brainstorming guidance requires visible session progress with current question/topic numbering and checklist context.
- [x] #3 Repository workflow guidance states that `.backlog/` task files are git-tracked artifacts that should be staged and committed with related work unless explicitly excluded by the user.
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Verification evidence: reviewed docs/ai-agent-guide.md, _bmad-output/project-context.md, and _bmad/custom/gds-brainstorm-game.toml after patching; checked git diff for the intended documentation/context changes; confirmed the new guidance explicitly keeps AGENTS.md as a compatibility entrypoint and routes durable behavior into BMAD-native docs/customization. No Gradle checks were run because this was a documentation/customization-only change with no Kotlin, Gradle, or runtime asset edits.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Placed the new instructions in BMAD-native locations instead of AGENTS.md. Added durable project guidance for git-tracked `.backlog/` task files and brainstorming progress visibility to docs/ai-agent-guide.md, mirrored the core rules into _bmad-output/project-context.md for broad workflow ingestion, and added _bmad/custom/gds-brainstorm-game.toml so the brainstorming workflow receives explicit progress-display requirements at activation time.
<!-- SECTION:FINAL_SUMMARY:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 Specification or owning documentation is updated when behavior changes
- [x] #2 Implementation matches the accepted task scope
- [ ] #3 Required Gradle checks pass
- [ ] #4 Relevant visual preview or launcher scenario is verified when applicable
- [x] #5 Verification evidence records commands run
- [x] #6 Verification evidence records scenario steps
- [x] #7 Verification evidence records observed results
- [x] #8 Verification evidence records relevant logs or artifact notes
- [x] #9 Self-review is completed before handoff
- [x] #10 Final handoff references the HSS task ID and residual risks
<!-- DOD:END -->
