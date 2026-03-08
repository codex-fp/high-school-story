# Project Status — High School Story + KGE

**Date:** 2026-02-24
**Branch:** master

---

## 1. Project Overview

**High School Story** is a desktop social simulation game covering three in-game years of high school life. The player manages a daily routine, attends classes, builds relationships, and navigates key story events across a structured school calendar. Design inspirations include Persona 5. Target platform: Windows, Linux, macOS via LibGDX/LWJGL3.

The game runs on **KGE (Kotlin Game Engine 2D)**, a custom in-house engine developed alongside the game. KGE is a Gradle composite build (`./engine`) using LibGDX, Fleks ECS, Koin DI, Box2D physics, KTX coroutines, and a KSP annotation processor for the `@GameObject` factory pattern.

The two projects are co-developed: game content needs drive engine features, and engine capabilities are kept generic and reusable.

---

## 2. Current Status (as of 2026-02-24)

### What Is Playable

- The `SandboxLauncher` opens a working LibGDX window.
- A `PlayerCharacter` entity spawns and can be moved with input.
- The `Road` map loads and renders via TiledMapManagerAdapter.
- A `Bus` entity can be instantiated with direction, color, and speed.
- The dialogue box appears on screen and can display a line of text when a dialogue is triggered manually.
- `Preview` tests work for visual iteration on game objects without running the full game loop.

### What Is Not Yet Connected

- `GameEntrypoint.run()` is a bare `TODO()`. The main launcher has no content flow.
- `RoadToLakeview` (the first story beat) has a partial `play()` but `shouldBePlayed()`, `shouldSpawn()`, and `spawn()` are all `TODO()`. The beat cannot be driven by `StoryManager`.
- Bus movement AI (`MovementInput.AI` direction vector) and camera follow (`FollowingCameraStrategy`) are commented out in `RoadToLakeview.play()`.
- The `StoryManager` has never been wired to `GameEntrypoint`. `playStory()` is never called.
- No unit tests exist. One visual `Preview` test exists (`PlayerCharacterPreview`).

---

## 3. Engine Modules Status

| Module | Location | Status | Notes |
|---|---|---|---|
| core | `engine/core` | Functional | ECS world, Koin DI, camera, input manager, physics, asset loading, Preview harness, KtxAsync coroutine contexts |
| character | `engine/gameplay/character` | Functional | `CharacterBase`, `PlayerCharacterBase`, `PlayerCharacterManager`, movement, animation, DI module |
| dialogue | `engine/gameplay/dialogue` | Functional (infra) | `DialogueManager`, `DialogueBuilder` DSL, `DialogueState`, input processor, `DialogueUserInterface` with label + options list + scroll pane, `DialogueUserInterfaceUpdater`. No speaker portrait, no typewriter effect, no choice branching logic wired to game consequences |
| interaction | `engine/gameplay/interaction` | Functional | `InteractionSystem`, range and facing checks, input processor |
| story | `engine/gameplay/story` | Functional (infra) | `Story.Beat` interface, `StoryManager` with flow-based beat selection, priority filtering, `shouldBePlayed`/`spawn`/`play` lifecycle. `StoryManager.playStory()` is implemented but never called from game code |
| time | `engine/gameplay/time` | Functional | `Clock`, `Calendar`, Flow-based state, DI module |
| weather | `engine/gameplay/weather` | Functional (infra) | `Weather` enum, `WeatherManager` with Flow state. No rendering, no particle effects, no gameplay effects wired |
| power | `engine/gameplay/power` | Skeleton | Single `Powered` boolean component. No system, no behaviour |
| vehicle | `engine/gameplay/vehicle` | Skeleton | `VehicleLights` component (Headlights/Taillights via Box2D lights). No movement system, no AI driving system |
| smartphone | `engine/gameplay/smartphone` | Planned | In-game phone UI. Icon atlas (100+ icons) already present in assets. Module not started |
| annotation-processor | `engine/annotation-processor` | Functional | KSP generates `*Companion` and `Bindable*` for `@GameObject` interfaces. Raw string templates (no KotlinPoet). Generates unconditionally each round |

**Status key:**
- **Functional** — works end-to-end, suitable for use
- **Functional (infra)** — core classes exist and compile, but significant capabilities are missing or unconnected
- **Skeleton** — only data structures exist; no behaviour
- **Planned** — not started

---

## 4. Game Content Status

### Game Objects

| Object | File | Status | Notes |
|---|---|---|---|
| `PlayerCharacter` | `core/.../character/player/PlayerCharacter.kt` | Functional | `@GameObject`, KSP-generated companion and bindable. Spawns with physics body and animation |
| `Character` (NPC) | `core/.../character/Character.kt` | Functional | Generic NPC game object |
| `Bus` | `core/.../vehicle/bus/Bus.kt` | Partial | Spawns with physics body, sprite, lights, speed, AI movement input. Movement AI direction vector and camera follow commented out |
| `BusSprite` | `core/.../vehicle/bus/BusSprite.kt` | Partial | Right direction only. Other directions have TODO comments |
| `BusLights` | `core/.../vehicle/bus/BusLights.kt` | Partial | Headlights for right-facing direction only |

### Maps

| Map | File | Status |
|---|---|---|
| `Road` | `core/.../map/Road.kt` | Functional — loads, renders |
| `Town` | `core/.../map/Town.kt` | Unknown — present but not exercised |

### Scene / Story Beats

| Beat | File | Status | Notes |
|---|---|---|---|
| `RoadToLakeview` | `core/.../scene/intro/RoadToLakeview.kt` | Stubbed | `play()` partially written (sets date/time, loads Road map, spawns bus, triggers one Polish-language player dialogue). `shouldBePlayed()`, `shouldSpawn()`, `spawn()` are `TODO()` |

### Entrypoints

| Class | Status | Notes |
|---|---|---|
| `SandboxEntrypoint` | Functional | Loads assets, spawns player character, passes input ownership. Used for dev. `IntroScene` call commented out |
| `GameEntrypoint` | Stub | `run()` is `TODO()`. Main launcher has no content |

### UI

| Component | Status | Notes |
|---|---|---|
| `UserInterface` | Functional (basic) | Scene2D stage with bottom-anchored dialogue box at 25% screen height |
| `DialogueUserInterface` | Functional (basic) | Label + options list + scroll pane. Debug table rendering visible. No speaker name display, no portrait |

### Tests

| Test | Type | Status |
|---|---|---|
| `PlayerCharacterPreview` | Visual Preview | Functional — opens LibGDX window, shows player character |

---

## 5. Roadmap

### M1 — Story Foundation
**Goal:** Make `RoadToLakeview` play end-to-end from `GameEntrypoint`. A player launches the game and sees the first story beat without using the sandbox.

This milestone is about wiring, not new features. Every piece needed is already partially in place.

**Scope:**

1. **Wire `GameEntrypoint.run()`** — load assets, instantiate `GameState`, wire `StoryManager`, call `playStory()`. This is the critical path item that unblocks everything else.
2. **Implement `RoadToLakeview.shouldBePlayed()`** — define what `Story.Fact` (if any) gates this beat, or make it the unconditional opener.
3. **Implement `RoadToLakeview.shouldSpawn()` and `spawn()`** — decide what "spawning" means for this beat (likely: spawn the bus entity off-screen before `play()` runs).
4. **Restore bus AI movement** — uncomment and fix `aiMovementInput.movementInput = Direction4.Right.vector` in the bus prototype.
5. **Restore camera follow** — uncomment `FollowingCameraStrategy(bus.body)` and confirm `CameraManager` picks it up correctly.
6. **Complete `BusSprite` and `BusLights`** — fill in remaining direction variants so the bus renders correctly as it moves.
7. **Dialogue UI pass** — strip debug table borders from `DialogueUserInterface`, add a speaker name label above the dialogue text.
8. **Dialogue wait node** — `RoadToLakeview.play()` uses `wait(2.seconds)` inside the DSL; confirm `DialogueBuilder` supports a timed wait node and the updater handles it.

**Out of scope for M1:** new engine modules, save/load, audio, inventory.

---

### M2 — Engine Feature Parity
**Goal:** Bring four missing engine modules online and flesh out the Vehicle and Power modules so the engine can support the full gameplay loop designed in `docs/design/global.md`.

**Scope:**

1. **Audio / Music module** (`engine/gameplay/audio`) — background music playback, SFX triggers, volume control. Required for any content that feels finished.
2. **UI Framework module** (`engine/gameplay/ui`) — shared widget styles, screen management (title screen, pause menu, HUD), scene transitions. Currently all UI is ad-hoc.
3. **Save / Load module** (`engine/gameplay/persistence`) — serialize `GameState` (current date, facts, player stats, map). Autosave checkpoints at 1 week / 1 month / 3 months per design doc.
4. **Inventory / Items module** (`engine/gameplay/inventory`) — item data model, player inventory, stat modifier application. Required by core loop (energy drinks, study aids, etc.).
5. **Vehicle module — movement system** — add a Fleks `IntervalSystem` that reads `MovementInput.AI` and `Speed` and applies physics force or velocity on `PhysicsBody` for vehicle entities. Register it in `SystemComposer`.
6. **Power module — system** — add a system that reacts to `Powered` state (e.g., enables/disables `VehicleLights` when a vehicle powers on/off).
7. **Weather rendering** — connect `WeatherManager` state to particle effects or shader overlays (rain, fog). The state management is already in place.

---

### M3 — Game Content Alpha
**Goal:** Author the full intro arc and establish the gameplay systems described in the design documents. At the end of this milestone the game should be playable from start through the first in-game week.

**Scope:**

1. **Intro arc beats** — day 1 (arriving at Lakeview, first look at the dorm, meeting first classmates). Additional `Story.Beat` implementations following the `RoadToLakeview` pattern.
2. **Character creation beat** — name, gender, and initial stat selection before the game starts.
3. **Classroom system** — turn-based class mechanic (focus/risk management), class schedule per year, stat gains from actions.
4. **Stat system** — Energy, Stress, Mood, per-subject Knowledge/Skills. Decay and regeneration rules.
5. **Relationship system** — numeric relationship values per NPC, dialogue unlock gates, NPC daily schedules.
6. **NPC roster — Year 1 classmates** — at minimum 3-4 named NPCs with sprite, dialogue lines, and a basic arc.
7. **School map** — playable school interior (classrooms, cafeteria, hallways) with travel time cost.
8. **Daily loop** — enforced sleep at 22:00, time skip to next morning, wakeup routine.
9. **Economy scaffold** — currency field on player state, at least one shop interaction (vending machine or cafeteria).
10. **First exam** — end-of-arc academic check with pass/fail outcome and autosave rollback.

---

## 6. Immediate Next Steps

Ordered by impact and dependency. All of these are in `core/` or involve connecting existing engine pieces — no new engine modules required.

1. **Implement `GameEntrypoint.run()`** (`core/.../Entrypoint.kt`)
   Load assets. Instantiate `GameState`. Bind `StoryManager<GameState>` with a `Story` containing `[RoadToLakeview()]`. Call `storyManager.playStory()` in a coroutine. This single task makes the main launcher runnable and unblocks all beat work. Currently `TODO()`.

2. **Implement `RoadToLakeview.shouldBePlayed()` and `shouldSpawn()`** (`core/.../scene/intro/RoadToLakeview.kt`)
   For the opener beat, `shouldBePlayed` can return `true` unconditionally (or gate on a "game not yet started" fact). `shouldSpawn` should return `true` when the beat is about to play so the bus entity is ready. Define the `Story.Fact` type if gating is needed.

3. **Implement `RoadToLakeview.spawn()`** (`core/.../scene/intro/RoadToLakeview.kt`)
   Spawn the `Bus` entity off-screen to the left of the Road map. This is the entity that `play()` then animates. Uncomment the `MovementInput.AI` direction vector and the `FollowingCameraStrategy` inside `play()`.

4. **Add a vehicle movement `IntervalSystem`** (`engine/gameplay/vehicle/` or `core/.../SystemComposer.kt`)
   The bus has `MovementInput.AI` and `Speed` components but nothing reads them and applies motion. A minimal system that translates `MovementInput.AI.vector * Speed.value` into a physics velocity will make the bus actually move. Register it via `systemComposer`.

5. **Strip debug rendering and add speaker name to `DialogueUserInterface`** (`engine/gameplay/dialogue/.../DialogueUserInterface.kt`)
   Remove `debugTable()` calls. Add a `Label` above the dialogue text that displays the current speaker's name. The `DialogueState` and `Dialogue.Node.Sentence` already carry a `line`; the speaker identity needs to be threaded through `DialogueBuilder` (`says()` extension already knows the actor).
