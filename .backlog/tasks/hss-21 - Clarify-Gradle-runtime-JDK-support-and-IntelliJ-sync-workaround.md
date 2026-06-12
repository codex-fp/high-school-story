---
id: HSS-21
title: Clarify Gradle runtime JDK support and IntelliJ sync workaround
status: Done
assignee: []
created_date: '2026-06-12 11:52'
updated_date: '2026-06-12 11:52'
labels:
  - tooling
  - docs
  - intellij
milestone: first-playable-weekday
dependencies: []
references:
  - README.md
  - docs/development-guide.md
  - gradle/wrapper/gradle-wrapper.properties
documentation:
  - 'https://docs.gradle.org/current/userguide/compatibility.html'
modified_files:
  - README.md
  - docs/development-guide.md
priority: medium
ordinal: 9200
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Document that the current Gradle wrapper version supports running Gradle up to Java 24, while the project still compiles with Java 17 toolchains. Add contributor guidance for IntelliJ Gradle JVM selection to avoid Java 25 sync failures with errors like Unsupported class file major version 69 or JavaVersion.parse(25.0.2).
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 README or development guide explains that Gradle runtime support currently stops at Java 24 for this wrapper
- [x] #2 IntelliJ sync guidance tells contributors to set Gradle JVM to JDK 24 or 21 instead of JDK 25
- [x] #3 Documentation preserves Java 17 toolchain guidance for compilation output
<!-- AC:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Verification evidence:
- Reproduced with `java -version` reporting `25.0.2`.
- Reproduced with `./gradlew help --console=plain` failing immediately.
- Captured stacktrace with `./gradlew help --stacktrace --console=plain` showing Kotlin DSL `JavaVersion.parse(25.0.2)` failure before project configuration.
- Confirmed from Gradle compatibility docs that `8.14.x` supports running Gradle on Java 24 and `9.1.0+` is required for Java 25.
- Could not run a passing local Gradle verification command because this environment only has JBR 25 installed.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Documented the actual Gradle runtime constraint behind IntelliJ sync failures on Java 25. Contributors are now directed to use JDK 21 or 24 for the Gradle runtime while keeping Java 17 toolchains for compilation.
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
