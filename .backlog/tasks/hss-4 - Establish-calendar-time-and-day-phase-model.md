---
id: HSS-4
title: Establish calendar time and day phase model
status: To Do
assignee: []
created_date: '2026-06-02 20:28'
updated_date: '2026-06-02 20:36'
labels:
  - implementation
  - mvp
  - time
  - core-systems
milestone: m-1
dependencies:
  - HSS-1
  - HSS-2
references:
  - DESIGN.md
  - ARCHITECTURE.md
  - README.md
documentation:
  - DESIGN.md
  - ARCHITECTURE.md
priority: high
ordinal: 4000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Create the core MVP time model that tracks semester progression, weekday or weekend state, current time in 15-minute increments, and major day phases. This is the foundation for daily flow, validation, lessons, and scheduling pressure.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 Game state represents week day weekday or weekend current time and day phase
- [ ] #2 Time advances in 15-minute increments
- [ ] #3 A standard weekday starts in the dormitory at 06:00
- [ ] #4 Sleep and day rollover rules are represented
- [ ] #5 Time state is available to UI or sandbox-oriented debug display
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
