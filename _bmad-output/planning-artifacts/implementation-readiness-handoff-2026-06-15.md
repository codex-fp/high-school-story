# Implementation Readiness Handoff

**Date:** 2026-06-15
**Task:** `HSS-40`
**Predecessor:** `HSS-39`
**Primary Goal:** Close the remaining planning and architecture gaps so the project can move from `NEEDS WORK` to full implementation-readiness.

## Start Here

Read in this order:

1. `_bmad-output/project-context.md`
2. `.backlog/tasks/hss-40 - Close-implementation-readiness-gaps-in-epics-and-architecture.md`
3. `docs/index.md`
4. `docs/agent/guide.md`
5. `_bmad-output/planning-artifacts/implementation-readiness-report-2026-06-15.md`
6. `docs/game/gdd.md`
7. `docs/game/architecture.md`
8. `docs/engineering/architecture.md`
9. `docs/game/ux/design.md`
10. `docs/game/ux/experience.md`
11. `_bmad-output/planning-artifacts/epics.md`

## Scope

This is a planning-and-docs cleanup pass, not gameplay implementation.

Expected touched files:

- `_bmad-output/planning-artifacts/epics.md`
- `docs/game/architecture.md` or `docs/engineering/architecture.md`
- `.backlog/tasks/hss-40 - Close-implementation-readiness-gaps-in-epics-and-architecture.md`

Optional:

- Append a short completion note to this handoff or create a follow-up readiness note if useful.

Out of scope unless newly required by owner-doc conflicts:

- Game code changes
- Engine changes under `engine/`
- Narrative-content rewrites
- Pushing, PR work, or remote state changes

## Current Readiness Verdict

The latest readiness assessment concluded:

- Overall status: `NEEDS WORK`
- Strong areas: canonical GDD quality, existing UX documentation, overall GDD/UX/architecture direction
- Remaining blockers are structural and traceability-related, not product-definition gaps

## Must-Fix Issues

### 1. Epic 6 story structure defect

`Epic 6 / Story 6.5` currently behaves like a release-level integration milestone, not an independently completable story.

Required outcome:

- Remove or refactor Story 6.5 so Epic 6 contains only legitimate full-game progression/graduation stories
- Do not replace it with another milestone disguised as a story

### 2. FR coverage gaps in `epics.md`

The readiness report found `61/65` GDD FRs with full coverage. The remaining gaps are:

- `FR38`: soft academic profiles have no explicit story-level ownership
- `FR47`: rotating peripheral characters are only partially represented
- `FR49`: clubs do not explicitly own future-path flavor and skill-growth/efficiency flavor
- `FR64`: endgame recap package is missing explicit traceability for per-subject/overall academic summary and optional post-graduation glimpse

Required outcome:

- Update `epics.md` so each gap has explicit epic/story traceability
- Keep the new traceability consistent with the durable GDD, not with older workflow-history artifacts

### 3. UX-to-architecture ownership gaps

The accepted UX contract is ahead of the current architecture docs in three areas:

- reduced-motion and accessibility-floor behavior
- phone-overlay runtime/session state and pause semantics
- contextual alerts and notification ownership

Required outcome:

- Add explicit architectural ownership for all three
- Prefer updating `docs/game/architecture.md` when behavior is game-facing
- Use `docs/engineering/architecture.md` only if the concern is clearly framework/runtime-structure oriented

## Recommended Work Sequence

1. Re-read the readiness report sections:
   - `Epic Coverage Validation`
   - `UX Alignment Assessment`
   - `Epic Quality Review`
   - `Summary and Recommendations`
2. Patch `epics.md` first.
3. Then patch the architecture owner doc(s) to absorb the UX-runtime ownership gaps.
4. Re-check that the revised epic structure still matches the GDD and UX owner docs.
5. Record what changed in `HSS-40`.

## Constraints

- Treat `docs/` as the durable source of truth.
- Treat `_bmad-output/planning-artifacts/` as workflow artifacts unless the task explicitly promotes something into `docs/`.
- Do not reintroduce ambiguity between current owner docs and older workflow-history folders under `_bmad-output/planning-artifacts/gdds/` or `ux-designs/`.
- Do not soften the readiness findings by turning blockers into vague notes.
- Do not revert unrelated local drift.

## Practical Notes For The Next Agent

- `epics.md` is already modified in the current worktree from earlier planning work. Read it carefully before patching.
- The readiness report is new and should be treated as the authoritative problem statement for this cleanup pass.
- The current worktree also contains untracked backlog task files and an untracked `tools/docs-rag/src/hss_docs_rag/__pycache__/` directory. Leave unrelated drift alone unless explicitly asked to clean it.

## Desired End State

By the end of `HSS-40`, a fresh readiness pass should be able to say all of the following:

- Epic 6 no longer contains a fake integration story
- `FR38`, `FR47`, `FR49`, and the missing parts of `FR64` have explicit story-level ownership
- Architecture explicitly owns reduced motion/accessibility floor, phone-overlay runtime behavior, and contextual alerts
- No new source-of-truth conflict was introduced between `docs/` and `_bmad-output/`

## Verification Expectations

This is a docs/planning task, so lightweight verification is expected unless the scope expands.

Minimum:

- `git diff --check -- _bmad-output/planning-artifacts/epics.md docs/game/architecture.md docs/engineering/architecture.md _bmad-output/planning-artifacts/implementation-readiness-handoff-2026-06-15.md`
- self-review of changed owner-doc wording against the GDD and UX docs

If the task remains docs-only:

- Gradle checks are not required

## Suggested Completion Note

When done, the next agent should record:

- which FR gaps were closed and where
- whether Story 6.5 was removed, split, or replaced
- which architecture document took ownership of each UX-runtime concern
- any residual risk that still prevents a clean `READY` verdict

## HSS-40 Completion Note

- Source documents used:
  - `docs/game/gdd.md`
  - `docs/game/architecture.md`
  - `docs/game/ux/design.md`
  - `docs/game/ux/experience.md`
  - `_bmad-output/planning-artifacts/epics.md`
  - `_bmad-output/planning-artifacts/implementation-readiness-report-2026-06-15.md`
- Report sections applied:
  - `Epic Coverage Validation`
  - `UX Alignment Assessment`
  - `Epic Quality Review`
  - `Summary and Recommendations`
- Epic artifact changes:
  - Removed the release-level use of `Epic 6 / Story 6.5` as a vertical-slice packaging story.
  - Added an artifact-level `Initial Delivery Slice Scope Note` so the slice remains traceable without treating release packaging as a normal story.
  - Added explicit story-level canonical GDD traceability for:
    - `FR47` in `Epic 5 / Story 5.5`
    - `FR49` in `Epic 5 / Story 5.4`
    - `FR38` and the missing academic-summary / optional-glimpse parts of `FR64` in `Epic 6 / Story 6.5`
- Architecture ownership changes:
  - `docs/game/architecture.md` now explicitly owns phone-overlay session state, pause semantics, contextual alert routing, and accessibility-floor behavior.
- Verification expectation for a follow-up readiness pass:
  - re-run the report logic against the updated `epics.md` and `docs/game/architecture.md`
  - confirm `Story 6.5` is now independently completable full-game graduation work
  - confirm the remaining blockers for `FR38`, `FR47`, `FR49`, and `FR64` are now fully traceable

## HSS-41 Rerun Completion Note

- Rerun baseline used:
  - `_bmad-output/planning-artifacts/implementation-readiness-report-2026-06-15.md`
  - `.backlog/tasks/hss-39 - Assess-implementation-readiness-against-canonical-game-docs-and-refreshed-epics.md`
  - `.backlog/tasks/hss-40 - Close-implementation-readiness-gaps-in-epics-and-architecture.md`
- New report artifact:
  - `_bmad-output/planning-artifacts/implementation-readiness-rerun-report-2026-06-15.md`
- Why a new report was created instead of overwriting the earlier one:
  - the original `HSS-39` report is still the cleanest baseline for the pre-fix
    `NEEDS WORK` verdict
  - `HSS-40` references that baseline explicitly as the problem statement it was
    closing
  - keeping both reports avoids rewriting historical evidence and keeps the
    before/after comparison readable
- Final rerun verdict:
  - `READY`
- Closure result:
  - the fake integration-story problem in `Epic 6 / Story 6.5` is closed
  - `FR38`, `FR47`, `FR49`, and the missing `FR64` parts are now explicitly
    traceable
  - game-architecture ownership now explicitly covers phone-overlay session
    state, pause semantics, contextual alerts, and accessibility-floor behavior
- Residual non-blocking concerns:
  - Stories `2.6`, `6.2`, and `6.3` remain broad and could be split later for
    implementation convenience
  - some acceptance criteria still use qualitative language that can be tightened
    when those stories become active
