# Project Overview

## Product Summary

High School Story is a Kotlin/JVM school-life social simulation game. The full
product promise is a three-year high school journey from the start of Year 1 to
graduation at the end of Year 3. The player creates a high school student and
guides them through routine, lessons, relationships, activities, travel,
condition management, grades, seasonal school life, and long-form outcomes.

The intended experience is grounded, nostalgic, cozy-leaning, and lightly
demanding. Time matters, relationships matter, school pressure matters, and
there should be no single correct way to live through high school.

## Repository Ownership

This repository owns:

- High School Story game code under `pro.piechowski.highschoolstory`.
- Game-specific Koin modules, objects, scenes, maps, dialogue, and assets.
- Desktop launchers, packaging, and live visual preview tooling.
- Product, design, narrative, development, and agent documentation for the game.

This repository does not own reusable engine behavior. Reusable Kotlin Game
Engine 2D implementation and conventions belong in `engine/`.

## Current Implemented Surface

- `highSchoolStoryModule` composes game services and imported engine modules.
- `SandboxLauncher` runs the current development sandbox.
- `MainLauncher` exists, but the full game path is intentionally incomplete.
- `GameEntrypoint.run()` remains `TODO()` until the full game loop is built.
- Player and generic character game-object interfaces exist.
- Bus game-object and bus visual/physics/light components exist.
- Town and road Tiled maps are loaded from `assets/maps/`.
- Dialogue UI and the `RoadToLakeview` intro beat preview exist.
- Visual previews exist for player character and intro scene inspection.

## BMAD-Native Documentation Model

This project uses BMAD/GDS documentation conventions:

- `docs/index.md` is the master documentation entrypoint.
- `docs/game-brief.md` is the durable product-level brief and canonical full-game
  promise.
- `docs/game-design.md` is the durable MVP-first GDD and canonical gameplay
  implementation design source.
- `_bmad-output/project-context.md` is optimized for AI-agent context loading.
- `.backlog/` stores task traceability with `HSS-<number>` IDs.
- Root compatibility files point to the canonical BMAD-native documents.

## Current Product Status

The project has a promoted durable product brief in `docs/game-brief.md` and a
promoted MVP-first durable GDD in `docs/game-design.md`. Remaining design work
is concentrated in subject framing, first classmate arc constraints, social
profile categories, starting-profile tuning, academic failure thresholds, money
pressure, balancing assumptions, and the post-MVP path from the first semester
slice to the full three-year product. Implementation is still early and centered
on engine integration, previews, game objects, map loading, and intro-beat
wiring.

## Current Risks

- Root runtime is incomplete until `GameEntrypoint.run()` is implemented.
- Current code contains placeholder Polish dialogue while canonical docs are
  English; treat that as implementation drift unless localization is later
  formalized.
- No explicit performance budget has been accepted yet.
- The engine checkout documents reusable rules in `engine/README.md` and
  `engine/AGENTS.md`; do not reference non-existing engine architecture files as
  authoritative.
