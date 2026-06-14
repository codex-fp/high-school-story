---
id: HSS-6
title: Add travel network and action validation for MVP locations
status: To Do
assignee: []
created_date: '2026-06-02 20:29'
updated_date: '2026-06-14 18:07'
labels:
  - implementation
  - mvp
  - travel
  - validation
milestone: m-1
dependencies: []
references:
  - DESIGN.md
  - ARCHITECTURE.md
documentation:
  - DESIGN.md
  - ARCHITECTURE.md
priority: high
ordinal: 6000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Implement location-to-location travel and pre-action validation for the MVP spaces so time pressure becomes readable and the player cannot accidentally violate school attendance or return-time rules without explicit rule-breaking support.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 Dormitory school district shop and park exist as valid gameplay locations even if some use placeholder presentation
- [ ] #2 Travel shows destination duration and expected arrival time
- [ ] #3 Impossible actions or travel are blocked before confirmation
- [ ] #4 Risky actions give readable warnings where allowed
- [ ] #5 School attendance and return-to-dorm boundaries are enforced
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
