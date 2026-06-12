---
id: HSS-26
title: >-
  Document BMAD-native agent instructions for brainstorming progress and backlog
  git persistence
status: In Progress
assignee: []
created_date: '2026-06-12 21:35'
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
documentation:
  - docs/index.md
  - docs/development-guide.md
  - _bmad-output/project-context.md
priority: medium
ordinal: 2600
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Add project-level AI agent guidance covering two behaviors: brainstorming workflows should show explicit overall progress with the current question/topic index and checklist-style status, and `.backlog/` task files should be treated as durable git-tracked artifacts that agents stage and commit alongside the related work unless the user says otherwise. Place the rules in BMAD-native durable docs and skill customization rather than expanding AGENTS.md beyond compatibility-entrypoint scope.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 Project guidance states that AGENTS.md remains a compatibility entrypoint and durable agent rules live in BMAD-native docs/customization.
- [ ] #2 Brainstorming guidance requires visible session progress with current question/topic numbering and checklist context.
- [ ] #3 Repository workflow guidance states that `.backlog/` task files are git-tracked artifacts that should be staged and committed with related work unless explicitly excluded by the user.
<!-- AC:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [ ] #1 Specification or owning documentation is updated when behavior changes
- [ ] #2 Implementation matches the accepted task scope
- [ ] #3 Required Gradle checks pass
- [ ] #4 Relevant visual preview or launcher scenario is verified when applicable
- [ ] #5 Verification evidence records commands run
- [ ] #6 Verification evidence records scenario steps
- [ ] #7 Verification evidence records observed results
- [ ] #8 Verification evidence records relevant logs or artifact notes
- [ ] #9 Self-review is completed before handoff
- [ ] #10 Final handoff references the HSS task ID and residual risks
<!-- DOD:END -->
