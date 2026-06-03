---
id: HSS-7
title: Implement shared 3-turn lesson loop
status: To Do
assignee: []
created_date: '2026-06-02 20:29'
updated_date: '2026-06-02 20:36'
labels:
  - implementation
  - mvp
  - lessons
  - academics
milestone: m-1
dependencies:
  - HSS-1
  - HSS-4
  - HSS-5
references:
  - DESIGN.md
  - README.md
documentation:
  - DESIGN.md
priority: high
ordinal: 7000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Build the MVP lesson backbone as a reusable 3-turn structure with distinct action roles. This task should prove that lessons can feel strategically different across subjects while feeding grades condition and social tradeoffs.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 A standard lesson has 3 turns of 15 minutes each
- [ ] #2 Available actions include attentive listening talking reading browsing and napping
- [ ] #3 Actions affect grades condition or social opportunity in distinct ways
- [ ] #4 At least two subjects feel observably different
- [ ] #5 Lesson results feed into per-subject grade standing
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
