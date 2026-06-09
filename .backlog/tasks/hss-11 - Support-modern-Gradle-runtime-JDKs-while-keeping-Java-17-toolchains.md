---
id: HSS-11
title: Support modern Gradle runtime JDKs while keeping Java 17 toolchains
status: Done
assignee: []
created_date: '2026-06-05 10:01'
updated_date: '2026-06-05 10:21'
labels:
  - tooling
  - build
  - docs
milestone: first-playable-weekday
dependencies: []
references:
  - README.md
  - ARCHITECTURE.md
  - build.gradle.kts
  - settings.gradle.kts
  - gradle/wrapper/gradle-wrapper.properties
  - gradle/libs.versions.toml
  - engine/README.md
  - engine/build.gradle.kts
  - engine/settings.gradle.kts
  - engine/gradle/wrapper/gradle-wrapper.properties
  - engine/gradle/libs.versions.toml
  - gradlew
documentation:
  - 'https://docs.gradle.org/current/userguide/compatibility.html'
  - 'https://kotlinlang.org/docs/gradle-configure-project.html'
  - 'https://github.com/google/ksp/releases'
modified_files:
  - AGENTS.md
  - README.md
  - build.gradle.kts
  - gradle.properties
  - gradle/libs.versions.toml
  - gradle/wrapper/gradle-wrapper.properties
  - settings.gradle.kts
  - gradlew
  - engine/AGENTS.md
  - engine/README.md
  - engine/build.gradle.kts
  - engine/gradle/libs.versions.toml
  - engine/gradle/wrapper/gradle-wrapper.properties
  - engine/settings.gradle.kts
priority: medium
ordinal: 9100
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Update root and mani-managed engine build configuration so contributors can run Gradle with a modern JDK while the project still compiles and targets Java 17 for LibGDX compatibility. Inspect root and engine wrapper/plugin versions, align toolchain-related plugins, and update owning documentation with contributor guidance about Gradle runtime versus Java toolchain targeting.
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 Root and engine builds can run on a modern Gradle runtime JDK while keeping Java 17 compilation/toolchain targets
- [x] #2 Root and engine Gradle and plugin versions are aligned to a compatible supported set
- [x] #3 Owning documentation explains the difference between Gradle runtime JDK and Java 17 toolchain requirements for contributors
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Final verification after the wrapper update:

- `./gradlew help --console=plain` exited 0 on WSL with Java 25 and no extra flags.

- `./gradlew ktlintCheck --console=plain` exited 0 on WSL with Java 25 and no extra flags. Output only showed JVM `sun.misc.Unsafe` deprecation warnings from transitive Kotlin compiler dependencies.

- `./gradlew test --console=plain` exited 0 on WSL with Java 25 and no extra flags.

Residual risk remains limited to the upstream JVM `sun.misc.Unsafe` deprecation warnings emitted by transitive Kotlin compiler jars on Java 25; the build still passes.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Upgraded the game and engine builds to a Java-25-capable Gradle/Kotlin/KSP toolchain while keeping Java 17 compilation targets. Added wrapper-level WSL cache redirection so plain `./gradlew` commands work from a mounted Windows workspace without extra flags.
<!-- SECTION:FINAL_SUMMARY:END -->

## Definition of Done
<!-- DOD:BEGIN -->
- [x] #1 Specification or owning documentation is updated when behavior changes
- [x] #2 Implementation matches the accepted task scope
- [x] #3 Required Gradle checks pass
- [ ] #4 Relevant visual preview or launcher scenario is verified when applicable
- [x] #5 Verification evidence records commands run
- [x] #6 Verification evidence records scenario steps
- [x] #7 Verification evidence records observed results
- [x] #8 Verification evidence records relevant logs or artifact notes
- [x] #9 Self-review is completed before handoff
- [x] #10 Final handoff references the HSS task ID and residual risks
<!-- DOD:END -->
