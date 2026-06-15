# Architecture

## System Overview

High School Story is a Kotlin/JVM game layer built on Kotlin Game Engine 2D
through the `engine/` Gradle composite build. The game layer defines the school
simulation product, content, and runtime composition. The engine layer provides
reusable game-object generation, ECS, rendering, physics, maps, input, preview,
story, dialogue, and launch infrastructure.

## Architecture Decisions

| Decision | Rationale |
|---|---|
| Use KGE through `includeBuild("./engine")` | Keeps reusable engine development local while preserving game/engine boundaries. |
| Keep game code in `core/` | Keeps platform-independent game logic separate from desktop launch and packaging. |
| Keep launchers and previews in `lwjgl3/` | Desktop concerns and live LibGDX windows stay out of game logic. |
| Use Koin for runtime composition | Matches KGE modules and keeps game service wiring explicit. |
| Use KGE game-object APIs from engine docs | Keeps reusable generated-code and ECS rules owned by `engine/`. |
| Keep narrative in docs while scenes use `Story.Beat<GameState>` | Separates authored content from executable sequencing. |

## Runtime Composition

`highSchoolStoryModule` is the root game module. It registers game services,
loads `config.yml`, binds the `Entrypoint`, creates the `AssetsLoader`, exposes
loaded `Assets`, and includes engine gameplay modules for character, dialogue,
time, interaction, story, and weather.

`SandboxLauncher` launches the current sandbox with `highSchoolStoryModule` and
`SandboxEntrypoint`.

`MainLauncher` is wired for the future full game path but should remain treated
as incomplete while `GameEntrypoint.run()` is `TODO()`.

## Game And Engine Boundary

Game layer owns:

- `pro.piechowski.highschoolstory` packages.
- High School Story assets, maps, UI skins, sprites, scenes, dialogue, and
  narrative content.
- Game-specific Koin modules and optional engine `SystemComposer` customization.
- Desktop launcher use for this game.

Engine layer owns:

- `pro.piechowski.kge` packages.
- KGE runtime, KSP annotation processing, reusable gameplay modules, preview,
  ECS, rendering, physics, input, maps, story, dialogue, and UI infrastructure.
- Engine documentation in `engine/_bmad-output/project-context.md`,
  `engine/README.md`, and `engine/AGENTS.md`.

Game code may depend on engine code. Engine code must not depend on High School
Story packages, assets, story, or product decisions.

## Game Objects And ECS

High School Story consumes KGE game-object and ECS APIs. Reusable rules for
`@GameObject`, generated companions, `Prototype`, `Archetype`, Fleks components,
system metrics, and `SystemComposer` are owned by
`engine/_bmad-output/project-context.md` until they are expanded into
`engine/docs/`.

Game-layer responsibility is limited to defining High School Story objects and
composition under `pro.piechowski.highschoolstory`.

Current game objects include:

- `Character`.
- `PlayerCharacter`.
- `Bus`.

The bus object demonstrates game-specific use of engine APIs: direction, sprite,
physics body, power, lights, speed, and AI movement input.

## Story And Dialogue

Playable scenes use `Story.Beat<GameState>`. A beat owns its `definition`, gating
logic, and suspending `play()` or `spawn()` content. Dialogue uses
`DialogueManager.startDialogue(...).await()`.

`RoadToLakeview` currently sets date, time, camera strategy, and dialogue flow
inside its beat implementation. Preview sources explicitly load assets, set the
road map, spawn the player, and play the beat.

## Assets And Maps

Desktop run tasks use `assets/` as their working directory. Runtime paths are
relative to that directory.

`Assets` aggregates textures and maps using KTX async asset storage and Arrow
`awaitAll`. Current map assets include `town.tmx` and `road.tmx`.

Runtime configuration is loaded from `core/src/main/resources/config.yml`.

## Visual Preview Architecture

Preview sources in `lwjgl3/src/preview/` open live LibGDX windows through the
manual `:lwjgl3:preview` Gradle task. They are local visual development tools.
They must pass `highSchoolStoryModule` to `preview(...)` and load required
assets before spawning objects or scenes.

## Dependency And Package Rules

- Game packages: `pro.piechowski.highschoolstory`.
- Engine packages: `pro.piechowski.kge`.
- Game Gradle modules: `:core` and `:lwjgl3`.
- Engine Gradle build: `includeBuild("./engine")`.
- Add reusable engine behavior inside `engine/`, not game packages.
- Add game-specific behavior inside `core/` or `lwjgl3/`, not reusable engine
  packages.

## Architecture Risks And Gaps

- The full game runtime path is not implemented.
- There is no accepted performance budget yet.
- The current source has placeholder localized dialogue that does not match the
  English documentation contract.
- Engine-local rules are captured in `engine/_bmad-output/project-context.md`
  and should be expanded into `engine/docs/` in the next engine documentation
  pass.
