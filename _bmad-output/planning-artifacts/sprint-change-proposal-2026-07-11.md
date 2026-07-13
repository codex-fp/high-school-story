# Sprint Change Proposal — 2026-07-11

## 1. Issue Summary

Story 0.1 exposed an execution-order dependency while validating `T2.S5`, which creates the versioned Godot host source directory. The root `High School Story.csproj` currently compiles generated C# files beneath clean-project `obj` directories and `.godot`, producing 32 duplicate-assembly-attribute (`CS0579`) errors.

The required fix is already specified by Story 0.1 task `T3.S3`: explicit root-host `Compile Remove` items for clean source, tool, and test directories. The issue is task ordering, not an architecture, product, or scope defect.

## 2. Impact Analysis

- **Epic impact:** Epic 0 remains viable and unchanged.
- **Story impact:** Only Story 0.1 execution order changes. `T3.S3` must be completed before `T2.S5` can pass its agreed root-host build validation.
- **Architecture impact:** None. The architecture already requires root-host compile exclusions and clean-project isolation.
- **GDD, narrative, and UX impact:** None.
- **Future epic impact:** None. Correct host compilation isolation is a prerequisite guardrail for all later clean projects and tests.

## 3. Recommended Approach

Use a direct adjustment with low effort and low risk:

1. Record an execution-order exception in Story 0.1's Dev Agent Record.
2. Implement and validate `T3.S3` only: explicit root-host `Compile Remove` entries for `src/HighSchoolStory.Domain/**`, `src/HighSchoolStory.Application/**`, `src/HighSchoolStory.Ports/**`, `src/HighSchoolStory.Content/**`, `tools/**`, and `tests/**`.
3. Return to `T2.S5` and rerun `dotnet build "High School Story.csproj"`.

Rollback is not recommended because the clean project boundaries are correct. An MVP review is not needed because player-facing scope and requirements are unchanged.

## 4. Detailed Change Proposal

### Story 0.1 — Dev Agent Record / Approved Implementation Plan

**Old**

No ordering exception exists. `T2.S5` is blocked waiting for a later `T3.S3` compile-exclusion task.

**New**

Record an approved execution-order exception authorizing `T3.S3` before completion of `T2.S5`. Preserve all task wording, acceptance criteria, architecture decisions, and sprint-status values.

**Rationale**

The earliest valid host-build check reveals the mandatory dependency. Applying the existing, narrowly scoped architecture guardrail restores the build and prevents the root Godot host from compiling clean-project generated artifacts.

## 5. Implementation Handoff

- **Scope classification:** Minor.
- **Owner:** Developer agent using the coached development workflow.
- **Success criteria:** `T3.S3` adds only the agreed compile exclusions; `dotnet build "High School Story.csproj"` succeeds; `T2.S5` can then complete its existing validation.
- **Sprint tracking:** No `sprint-status.yaml` change is required; Story 0.1 remains `in-progress`.
