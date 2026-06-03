---
id: HSS-8
title: Add core condition and recovery loop
status: To Do
assignee: []
created_date: '2026-06-02 20:29'
updated_date: '2026-06-02 20:36'
labels:
  - implementation
  - mvp
  - condition
  - balance
milestone: m-1
dependencies:
  - HSS-2
  - HSS-4
  - HSS-5
references:
  - DESIGN.md
documentation:
  - DESIGN.md
priority: high
ordinal: 8000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Introduce the core condition stats and recovery interactions that create the intended planning tension without producing harsh fail states. This task should establish the MVP texture of energy stress mood and money as part of everyday decision-making.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 Energy stress mood and money exist in game state
- [ ] #2 Lesson study social travel and recovery actions can affect condition
- [ ] #3 Poor condition weakens outcomes or increases risk without hard-failing the run
- [ ] #4 Dormitory and park provide distinct recovery options
- [ ] #5 Condition is visible or inspectable during playtesting
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
