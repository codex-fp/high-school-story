---
id: HSS-10
title: Document docs/design as design documentation target
status: Done
assignee: []
created_date: '2026-06-03 12:01'
updated_date: '2026-06-03 12:05'
labels:
  - documentation
milestone: Documentation
dependencies: []
references:
  - AGENTS.md
  - README.md
  - ARCHITECTURE.md
  - DESIGN.md
documentation:
  - AGENTS.md
  - README.md
  - ARCHITECTURE.md
  - docs/design/README.md
modified_files:
  - AGENTS.md
  - README.md
  - ARCHITECTURE.md
  - docs/design/README.md
priority: medium
ordinal: 9000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Introduce docs/design as an approved space for game design documentation and update repository documentation contracts that currently imply DESIGN.md is the only design target.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Existing design documentation target definitions are inspected and summarized.
- [x] #2 Repository documentation contract approves docs/design for design documentation.
- [x] #3 Stale guidance forbidding docs/design is removed or updated.
- [x] #4 docs/design contains a README that defines purpose and scope.
<!-- AC:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Updated the documentation contract to introduce docs/design as an approved topic-specific design documentation target, added docs/design/README.md, and removed stale guidance that retired docs/design. Verification: git fetch origin; git diff --check passed. Attempted ./gradlew ktlintCheck test and ./gradlew ktlintCheck test --stacktrace, but both failed during Gradle/Kotlin DSL startup because the current launcher JVM is Java 25.0.2 and Kotlin parsing rejects version `25.0.2`; repository guidance expects Java 17. No runtime or visual preview verification was applicable for this documentation-only change.
<!-- SECTION:FINAL_SUMMARY:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 Specification or owning documentation is updated when behavior changes
- [x] #2 Implementation matches the accepted task scope
- [ ] #3 Required Gradle checks pass
- [x] #4 Relevant visual preview or launcher scenario is verified when applicable
- [x] #5 Verification evidence records commands run
- [x] #6 Verification evidence records scenario steps
- [x] #7 Verification evidence records observed results
- [x] #8 Verification evidence records relevant logs or artifact notes
- [x] #9 Self-review is completed before handoff
- [x] #10 Final handoff references the HSS task ID and residual risks
<!-- DOD:END -->
