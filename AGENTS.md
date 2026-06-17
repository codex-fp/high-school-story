# AGENTS.md

This repository is BMAD/GDS-native. This file is a compatibility entrypoint for
AI tools that automatically read `AGENTS.md`; the durable project documentation
lives in `docs/` and the lean execution context lives in
`_bmad-output/project-context.md`.

## Mandatory Read Order

1. `_bmad-output/project-context.md` for compact implementation rules.
2. `docs/index.md` for the documentation map.
3. `docs/agent/guide.md` for operational rules.
4. `AGENTS.local.md` at the repository root, but only if that file exists locally; treat it as personal machine-local guidance rather than project documentation.
5. `_bmad-output/implementation-artifacts/sprint-status.yaml` and the active implementation story file when the work belongs to a current BMAD story.
6. Topic owner document in `docs/` before changing behavior, architecture,
   design, workflow, or authored content.

## Source Of Truth

| Topic | Owner |
|---|---|
| Project overview and status | `docs/project-overview.md` |
| Product brief and full-game promise | `docs/game/brief.md` |
| Technical architecture and engine boundary | `docs/engineering/architecture.md` |
| Game architecture and simulation structure | `docs/game/architecture.md` |
| Gameplay design and GDD | `docs/game/gdd.md` |
| UX visual identity and UI presentation | `docs/game/ux/design.md` |
| UX behavior, information architecture, and interaction rules | `docs/game/ux/experience.md` |
| Full-game narrative design | `docs/game/narrative/design.md` |
| Implementation-ready authored narrative content | `docs/game/narrative/content.md` |
| Setup, verification, packaging, workflow | `docs/engineering/development-guide.md` |
| Code and documentation conventions | `docs/agent/guide.md` and `docs/engineering/development-guide.md` |
| Source tree and module layout | `docs/engineering/source-tree.md` |
| Implemented components and assets | `docs/engineering/component-inventory.md` |
| Local agent tooling and retrieval layers | `docs/agent/` |
| Reusable engine rules | `engine/_bmad-output/project-context.md`, `engine/README.md`, and `engine/AGENTS.md` |

If docs and code disagree, update the owning document and implementation in the
same change. Do not add parallel notes that leave conflicting guidance in place.

## Context Routing Rules

- Use `mem0` only for prior-session decisions, user preferences, and long-lived
  project memory that is not already captured in repository docs or the current
  session context.
- For documentation questions, choose the retrieval method based on the task:
  - Use direct file search and reads first for keyword lookup, exact wording,
    path discovery, and line-level verification.
  - Use `hss-docs-rag` first for semantic search, cross-document questions,
    owner-document discovery when keywords are unclear, and BMAD/workflow
    guidance described across multiple docs.
- For code understanding, execution tracing, impact analysis, review, or
  refactoring questions, call `gitnexus` before using filesystem search.
- After MCP retrieval, read the returned owner documents or source files needed
  for exact implementation and verification.
- Fall back between RAG and direct filesystem search as needed when one method
  is unavailable, stale, noisy, incomplete, or slower than the task requires.

## Task And Traceability Rules

- BMAD planning truth lives in `_bmad-output/planning-artifacts/epics.md`.
- BMAD sprint execution state lives in `_bmad-output/implementation-artifacts/sprint-status.yaml`.
- Implementation stories live under `_bmad-output/implementation-artifacts/`.
- Reference the active BMAD story key or artifact path in documentation changes,
  implementation handoff, commit message, or branch name when practical.
- Do not publish or push without explicit user approval.

## Local Personal Guidance

- If `AGENTS.local.md` exists at the repository root, read it after the shared
  project guidance and treat it as a personal, machine-local supplement.
- Keep individual developer preferences and other non-project-specific
  instructions in `AGENTS.local.md`, not in shared project docs.

## Engineering Rules

- Keep game code under `pro.piechowski.highschoolstory`.
- Keep reusable engine code under `engine/` and `pro.piechowski.kge`.
- Use engine-local context and the engine project's own workflow for reusable
  engine work.
- Game code may depend on engine code; engine code must not depend on High School
  Story packages, assets, story, or product rules.
- Use `TODO()` for visible unimplemented stubs; do not replace missing behavior
  with silent no-ops.
- Let coroutine exceptions propagate unless a local API has a clearer error
  contract.
- Preserve generated output, local runtime state, secrets, and machine-specific
  data unless the user explicitly asks otherwise.

## Verification Rules

- Run `./gradlew test` after non-visual logic changes when practical.
- Run `./gradlew ktlintCheck` after Kotlin or Gradle edits.
- Run `./gradlew ktlintFormat` after formatting-sensitive Kotlin or Gradle
  edits.
- Run a targeted live preview or `SandboxLauncher` after changing visual game
  objects, maps, dialogue, scenes, or launcher wiring.
- Documentation-only changes may be verified by self-review, link checks, and
  BMAD story or sprint evidence without Gradle.

## Safety Boundaries

- Allowed mutation: files inside this workspace and local build outputs.
- Forbidden without approval: pushing to git remote, changing GitHub state,
  editing secrets, using paid or shared services, mutating external systems, or
  altering files outside the workspace.
- Stop and ask if instructions conflict with owner documents, a change crosses
  the game/engine boundary ambiguously, secrets are required, or unexpected user
  changes directly conflict with the current task.
