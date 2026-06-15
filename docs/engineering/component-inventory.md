# Component Inventory

## Runtime Modules

| Component | File | Notes |
|---|---|---|
| `highSchoolStoryModule` | `core/src/main/kotlin/pro/piechowski/highschoolstory/Module.kt` | Root game Koin module. |
| `systemComposer` | `core/src/main/kotlin/pro/piechowski/highschoolstory/SystemComposer.kt` | Game extension point for ECS system composition. Currently pass-through. |
| `GameEntrypoint` | `core/src/main/kotlin/pro/piechowski/highschoolstory/Entrypoint.kt` | Full game entrypoint stub. `run()` is intentionally `TODO()`. |

## Game Objects

| Object | Files | Current Behavior |
|---|---|---|
| `Character` | `character/Character.kt` | Base game-specific character interface. |
| `PlayerCharacter` | `character/player/PlayerCharacter.kt` | Creates a player entity from a KGE player prototype and assigns player ownership. |
| `Bus` | `vehicle/bus/Bus.kt` | Creates a bus entity with direction, sprite, physics, power, lights, speed, and AI input. |

## Visual And Physics Components

| Area | Files | Notes |
|---|---|---|
| Character sprites | `sprite/character/**` | Player and generic character sprite sheet support. |
| Character animation | `animation/character/**` | Idle and walk movement animation sets. |
| Character physics | `physics/body/character/CharacterBody.kt` | Character body setup. |
| Bus visuals | `vehicle/bus/BusSprite.kt`, `BusColor.kt` | Bus sprite selection and color model. |
| Bus physics | `vehicle/bus/BusBody.kt` | Bus physics body setup. |
| Bus lights | `vehicle/bus/BusLights.kt` | Headlight behavior with visible `TODO()` fallback branches. |

## Maps And Assets

| Component | File | Notes |
|---|---|---|
| `Assets` | `asset/Assets.kt` | Loads textures and maps through KTX async storage and Arrow `awaitAll`. |
| `Town` | `map/Town.kt` | Game map wrapper for `assets/maps/town.tmx`. |
| `Road` | `map/Road.kt` | Game map wrapper for `assets/maps/road.tmx`. |
| `ExteriorTexture` | `exterior/ExteriorTexture.kt` | Exterior tile texture support. |
| `UserInterface` | `ui/UserInterface.kt` | Game UI integration. |

## Story And Narrative Runtime

| Component | File | Notes |
|---|---|---|
| `GameState` | `state/GameState.kt` | Root game state type used by story beats. |
| `RoadToLakeview` | `story/intro/RoadToLakeview.kt` | Intro beat that sets date, time, camera follow target, bus, and dialogue. |

## Launchers And Previews

| Component | File | Notes |
|---|---|---|
| `SandboxLauncher` | `lwjgl3/src/main/kotlin/.../SandboxLauncher.kt` | Main development entrypoint. |
| `MainLauncher` | `lwjgl3/src/main/kotlin/.../MainLauncher.kt` | Future full-game entrypoint. |
| `PlayerCharacterPreview` | `lwjgl3/src/preview/kotlin/.../PlayerCharacterPreview.kt` | Live visual preview for player character. |
| `RoadToLakeviewPreview` | `lwjgl3/src/preview/kotlin/.../RoadToLakeviewPreview.kt` | Live visual preview for intro beat. |

## Known Implementation Gaps

- `GameEntrypoint.run()` is not implemented.
- `SystemComposer` currently does not add game-specific systems.
- `RoadToLakeview` code contains placeholder Polish dialogue while canonical
  authored narrative is English.
- Core MVP systems for time validation, lessons, condition, relationships,
  grades, travel network, and semester exam are design contracts but not yet
  implemented.
