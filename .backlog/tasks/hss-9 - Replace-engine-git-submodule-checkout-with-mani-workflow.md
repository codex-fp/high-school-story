---
id: HSS-9
title: Replace engine git submodule checkout with mani workflow
status: In Progress
assignee: []
created_date: '2026-06-03 11:23'
updated_date: '2026-06-03 11:29'
labels:
  - tooling
  - docs
milestone: first-playable-weekday
dependencies: []
references:
  - .gitmodules
  - settings.gradle.kts
  - README.md
  - ARCHITECTURE.md
  - AGENTS.md
  - mani.yaml
  - .gitignore
documentation:
  - 'https://github.com/alajmo/mani'
modified_files:
  - mani.yaml
  - .gitignore
  - .gitmodules
  - README.md
  - ARCHITECTURE.md
  - AGENTS.md
priority: medium
ordinal: 9000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Switch the repository from managing engine/ as a git submodule to managing the engine checkout through mani. Update owning documentation and repository metadata so local setup and architecture guidance reflect the new workflow.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Repository no longer tracks engine/ via .gitmodules
- [x] #2 Repository includes mani configuration for fetching engine into engine/
- [x] #3 Owning documentation describes the mani-based setup and no longer instructs git submodule initialization
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Verification attempted with `./gradlew test`, `./gradlew ktlintCheck`, and `./gradlew help --stacktrace`. All failed during settings.gradle.kts compilation before task execution. Stacktrace shows `java.lang.IllegalArgumentException: 25.0.2` from `org.jetbrains.kotlin.com.intellij.util.lang.JavaVersion.parse`, which indicates an environment/toolchain issue unrelated to the mani migration itself. The repository contract requires Java 17, but the active runtime appears to expose Java version 25.0.2.
<!-- SECTION:NOTES:END -->

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
- [ ] #10 Final handoff references the HSS task ID and residual risks
<!-- DOD:END -->
