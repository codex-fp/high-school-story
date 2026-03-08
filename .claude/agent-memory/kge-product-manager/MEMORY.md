# KGE Product Manager — Persistent Memory

## Project Status Snapshot (as of 2026-02-24)

Full status document: `docs/PROJECT_STATUS.md`

### Overall State
- Sandbox mode works (window, player character, movement, road map).
- Main game launcher (`GameEntrypoint`) has `TODO()` — no content flows.
- First story beat (`RoadToLakeview`) is partially written but all gating methods are `TODO()`.
- No unit tests. One visual Preview test (`PlayerCharacterPreview`).

### Critical Path (M1 blockers in order)
1. `GameEntrypoint.run()` — must wire StoryManager + playStory() call.
2. `RoadToLakeview.shouldBePlayed()` / `shouldSpawn()` / `spawn()` — beat gating logic.
3. Vehicle movement system — bus has components but no system applies motion.
4. Camera follow — `FollowingCameraStrategy` commented out in `RoadToLakeview`.
5. Dialogue UI polish — debug table borders visible, no speaker name label.

## Engine Module Status Summary

| Module | Status |
|---|---|
| core | Functional |
| character | Functional |
| dialogue | Functional (infra) — no portrait, no typewriter, no speaker name in UI |
| interaction | Functional |
| story | Functional (infra) — StoryManager.playStory() never called from game |
| time | Functional |
| weather | Functional (infra) — state only, no rendering |
| power | Skeleton — Powered component only |
| vehicle | Skeleton — VehicleLights component only |
| annotation-processor | Functional |

## Planned Modules (do not exist yet)
- `engine/gameplay/audio` — music + SFX
- `engine/gameplay/ui` — screen management, shared styles
- `engine/gameplay/persistence` — save/load
- `engine/gameplay/inventory` — items and stat modifiers

## Key File Paths

| Concern | Path |
|---|---|
| Game entrypoint | `core/src/main/kotlin/pro/piechowski/highschoolstory/Entrypoint.kt` |
| First story beat | `core/src/main/kotlin/pro/piechowski/highschoolstory/scene/intro/RoadToLakeview.kt` |
| Game state | `core/src/main/kotlin/pro/piechowski/highschoolstory/state/GameState.kt` |
| System composer | `core/src/main/kotlin/pro/piechowski/highschoolstory/SystemComposer.kt` |
| Dialogue UI | `engine/gameplay/dialogue/src/main/kotlin/pro/piechowski/kge/ui/dialogue/DialogueUserInterface.kt` |
| Dialogue UI updater | `engine/gameplay/dialogue/src/main/kotlin/pro/piechowski/kge/ui/dialogue/DialogueUserInterfaceUpdater.kt` |
| StoryManager | `engine/gameplay/story/src/main/kotlin/pro/piechowski/kge/story/StoryManager.kt` |
| Bus game object | `core/src/main/kotlin/pro/piechowski/highschoolstory/vehicle/bus/Bus.kt` |

## Roadmap Horizons

- **M1 — Story Foundation**: Wire GameEntrypoint, complete RoadToLakeview beat, bus movement, camera follow, dialogue UI pass.
- **M2 — Engine Feature Parity**: Audio, UI framework, Save/Load, Inventory modules; Vehicle and Power systems; Weather rendering.
- **M3 — Game Content Alpha**: Intro arc beats, character creation, classroom system, stat system, relationship system, NPC roster, school map, daily loop, economy, first exam.

## Backlog Item ID Convention

Use prefix `KGE-` for engine items, `HSS-` for game items, followed by a sequential number.
Next available IDs: KGE-001, HSS-001 (none formally assigned yet as of 2026-02-24).

## Vocabulary / Architecture Reminders

- `Beat` = `Story.Beat<GameState>` — gated by `shouldBePlayed()` / `shouldSpawn()`, runs content in `play()` / `spawn()`.
- `Prototype` = `fun interface` suspend lambda that configures a Fleks Entity. Compose via `Entity.from(prototype)`.
- `SystemComposer` = `fun interface` in `core/.../SystemComposer.kt` — passthrough today, add game-specific systems here.
- `StoryManager.playStory()` must be called inside a coroutine from `GameEntrypoint.run()`.
- Engine features must be generic/reusable; game-specific logic stays in `core/`.
- `@GameObject` KSP generates `*Companion` extending `EntityGameObjectCompanion` and `Bindable*` extending `BindableEntityGameObject`.
- Bus movement: `MovementInput.AI` + `Speed` components exist, but no IntervalSystem reads them — this is the missing vehicle movement system.
