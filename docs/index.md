# High School Story Documentation Index

This is the BMAD-native documentation entrypoint for High School Story.

Reorganized again in `HSS-36` to keep durable documentation grouped by domain:
root entrypoints, `docs/game/`, `docs/engineering/`, and `docs/agent/`.

## Project Classification

| Field | Value |
|---|---|
| Project type | Game, desktop, Kotlin/JVM |
| Engine | Kotlin Game Engine 2D through `engine/` Gradle composite build |
| Runtime backend | LibGDX LWJGL3 desktop |
| Primary code language | Kotlin |
| Task tracker | BMAD story files in `_bmad-output/implementation-artifacts/` plus sprint execution in `sprint-status.yaml` |
| Active documentation organization task | `HSS-36` |

## Start Here

| Document | Purpose |
|---|---|
| [project-overview.md](project-overview.md) | Product summary, repository ownership, current status, and BMAD conventions. |
| [index.md](index.md) | This navigation map and ownership entrypoint for durable docs. |
| [project-overview.md](project-overview.md) | Product summary, repository ownership, current status, and BMAD conventions. |

## Game

| Document | Purpose |
|---|---|
| [game/brief.md](game/brief.md) | Durable product-level game brief and canonical full-game product promise. |
| [game/gdd.md](game/gdd.md) | Durable full-game-first Game Design Document and canonical gameplay design source of truth. |
| [game/architecture.md](game/architecture.md) | Game-architecture source of truth for simulation structure, daily loop, lessons, relationships, phone read models, locations, saves, and content scaling. |
| [game/ux/design.md](game/ux/design.md) | Durable UX visual-identity and presentation source of truth for HUD, phone, dialogue, travel, and lesson UI. |
| [game/ux/experience.md](game/ux/experience.md) | Durable UX behavior, information-architecture, and interaction-contract source of truth. |
| [game/narrative/design.md](game/narrative/design.md) | Durable full-game-first Narrative Design Document covering story thesis, protagonist, core cast arcs, Lakeview place memory, dialogue, endings, and narrative delivery. |
| [game/narrative/content.md](game/narrative/content.md) | Implementation-ready authored narrative source for playable story beats and scripts. |

## Engineering

| Document | Purpose |
|---|---|
| [engineering/architecture.md](engineering/architecture.md) | Technical architecture: KGE integration, runtime composition, engine boundary, dependencies, and risks. |
| [engineering/development-guide.md](engineering/development-guide.md) | Setup, commands, verification, packaging, workflow, and style conventions. |
| [engineering/source-tree.md](engineering/source-tree.md) | Repository layout and critical path explanation. |
| [engineering/component-inventory.md](engineering/component-inventory.md) | Implemented game objects, systems, assets, launchers, and previews. |

## Agent

| Document | Purpose |
|---|---|
| [agent/guide.md](agent/guide.md) | AI coding-agent operational contract. |
| [agent/local-memory.md](agent/local-memory.md) | Local memory MCP setup and machine-specific notes. |
| [agent/code-knowledge-graph.md](agent/code-knowledge-graph.md) | Local code knowledge-graph indexing, MCP access, and Web UI bridge workflow. |
| [agent/documentation-rag.md](agent/documentation-rag.md) | Local documentation retrieval setup over `docs/` and `_bmad-output/`. |

## Quick Reference

- Start sandbox: `./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.SandboxLauncher`
- Run tests: `./gradlew test`
- Run manual previews: `./gradlew :lwjgl3:preview`
- Run lint: `./gradlew ktlintCheck`
- Format Kotlin/Gradle: `./gradlew ktlintFormat`
- Sync engine checkout: `mani sync`
- Lean agent context: `_bmad-output/project-context.md`
- Local code graph tooling: `docs/agent/code-knowledge-graph.md`
- Local documentation RAG tooling: `docs/agent/documentation-rag.md`
- Local memory tooling: `docs/agent/local-memory.md`

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
- Keep the folder structure intentional: `docs/game/` for product and content
  contracts, `docs/engineering/` for technical and workflow reference, and
  `docs/agent/` for agent-operational tooling and guidance.
- Do not create parallel owner documents under alternate filenames or folders
  without updating this index, `AGENTS.md`, and `_bmad-output/project-context.md`
  in the same change.
