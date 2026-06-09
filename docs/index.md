# High School Story Documentation Index

This is the BMAD-native documentation entrypoint for High School Story.

Generated and reorganized for `HSS-13`. The previous root all-caps documents and
the older `docs/design/` and `docs/narrative/` split have been consolidated into
this documentation set.

## Project Classification

| Field | Value |
|---|---|
| Project type | Game, desktop, Kotlin/JVM |
| Engine | Kotlin Game Engine 2D through `engine/` Gradle composite build |
| Runtime backend | LibGDX LWJGL3 desktop |
| Primary code language | Kotlin |
| Task tracker | `backlog.md` under `.backlog/` |
| Active documentation promotion task | `HSS-19` |

## Documentation Map

| Document | Purpose |
|---|---|
| [project-overview.md](project-overview.md) | Product summary, repository ownership, current status, and BMAD conventions. |
| [game-brief.md](game-brief.md) | Durable product-level game brief and canonical full-game product promise. |
| [architecture.md](architecture.md) | Game-layer architecture, runtime composition, engine boundary, dependencies, and risks. |
| [game-design.md](game-design.md) | Durable MVP-first Game Design Document and canonical gameplay design source of truth. |
| [development-guide.md](development-guide.md) | Setup, commands, verification, packaging, workflow, and style conventions. |
| [source-tree-analysis.md](source-tree-analysis.md) | Repository layout and critical path explanation. |
| [component-inventory.md](component-inventory.md) | Implemented game objects, systems, assets, launchers, and previews. |
| [narrative-content.md](narrative-content.md) | Authored narrative source for the intro arc and implementation notes. |
| [ai-agent-guide.md](ai-agent-guide.md) | AI coding-agent operational contract. |

## Quick Reference

- Start sandbox: `./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.SandboxLauncher`
- Run tests: `./gradlew test`
- Run lint: `./gradlew ktlintCheck`
- Format Kotlin/Gradle: `./gradlew ktlintFormat`
- Sync engine checkout: `mani sync`
- Lean agent context: `_bmad-output/project-context.md`

## Source Of Truth Rules

- Use this `docs/` directory as canonical durable documentation.
- Keep `_bmad-output/project-context.md` as compact execution context for AI
  agents.
- Keep root `AGENTS.md`, `ARCHITECTURE.md`, `DESIGN.md`, and `STYLEGUIDE.md` as
  compatibility entrypoints only.
- Update the owning document in this directory before or with behavior,
  architecture, workflow, command, path, packaging, or narrative changes.
- Treat `_bmad-output/planning-artifacts/` as workflow history unless a planning
  artifact is explicitly promoted into `docs/`.
- Do not recreate old `docs/design/` or `docs/narrative/` folders unless the
  BMAD documentation contract is intentionally changed.
