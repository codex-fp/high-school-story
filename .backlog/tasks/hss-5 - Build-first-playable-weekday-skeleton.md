---
id: HSS-5
title: Build first playable weekday skeleton
status: To Do
assignee: []
created_date: '2026-06-02 20:28'
updated_date: '2026-06-02 20:36'
labels:
  - implementation
  - mvp
  - gameplay-loop
milestone: m-1
dependencies:
  - HSS-4
references:
  - DESIGN.md
  - README.md
documentation:
  - DESIGN.md
priority: high
ordinal: 5000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Create the first coherent weekday loop that starts in the dormitory, transitions into the school block, exposes afternoon and evening free time, and ends with enforced return and automatic sleep. This task should prove the shape of the daily rhythm even if some actions still use placeholder content.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 A weekday starts in the dormitory at 06:00
- [ ] #2 Morning supports at least one meaningful action before school
- [ ] #3 The school block is entered through a clear transition
- [ ] #4 Afternoon and evening free time exist after school
- [ ] #5 The player must return to the dormitory by 21:00
- [ ] #6 Sleep occurs automatically at 22:00
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
