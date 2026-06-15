---
project_name: 'High School Story'
user_name: 'Filip'
date: '2026-06-09'
task_id: 'HSS-17'
sections_completed:
  - technology_stack
  - critical_implementation_rules
  - engine_specific_rules
  - performance_rules
  - code_organization_rules
  - testing_rules
  - platform_build_rules
  - critical_dont_miss_rules
  - promoted_gdd_rules
existing_patterns_found: 8
status: 'complete'
rule_count: 86
optimized_for_llm: true
source_documents:
  - README.md
  - AGENTS.md
  - ARCHITECTURE.md
  - DESIGN.md
  - STYLEGUIDE.md
  - docs/index.md
  - docs/project-overview.md
  - docs/engineering/architecture.md
  - docs/game/architecture.md
  - docs/game/gdd.md
  - docs/game/ux/design.md
  - docs/game/ux/experience.md
  - docs/game/narrative/design.md
  - docs/engineering/development-guide.md
  - docs/engineering/source-tree.md
  - docs/engineering/component-inventory.md
  - docs/game/narrative/content.md
  - docs/agent/guide.md
  - engine/README.md
  - engine/AGENTS.md
---

# Project Context for AI Agents

Critical implementation rules for AI agents working on High School Story. This
file is optimized for LLM context and records the unobvious project rules that
prevent drift from the game, engine, and documentation contracts.

## Technology Stack & Versions

- Game: Kotlin/JVM school-life social simulation built on Kotlin Game Engine 2D
  through `includeBuild("./engine")`.
- Runtime backend: LibGDX `1.13.1`, KTX `1.13.1-rc1`, LWJGL3 desktop backend.
- Language and toolchain: Kotlin `2.2.20`, Java toolchain `17`, Gradle wrapper.
- Engine architecture: code-centric KGE, Fleks ECS `2.11`, Koin `4.0.3`, KSP
  `2.2.20-2.0.4` for `@GameObject` generation.
- Async and data: Kotlin coroutines `1.10.2`, Arrow FX Coroutines `2.2.0`,
  Hoplite `2.9.0` for `core/src/main/resources/config.yml`.
- Testing and packaging: JUnit `5.13.4`, ktlint plugin catalog version `14.0.1`
  with ktlint engine `1.8.0`, Construo `1.7.1`, project version `1.0.0`.

## Critical Implementation Rules

### Source Of Truth

- Use this file first for agent execution context, then the active backlog task,
  then the owning durable document for details.
- Keep root `AGENTS.md` as a compatibility entrypoint; put durable agent behavior rules in `docs/` and BMAD customization files under `_bmad/custom/`.
- `docs/project-overview.md` owns product summary and current status.
- `docs/game/brief.md` owns the product-level brief and full-game promise.
- `docs/game/gdd.md` owns product scope and gameplay rules.
- `docs/agent/guide.md` owns the AI-agent operational contract.
- `docs/game/ux/design.md` owns durable UX visual identity and UI presentation
  decisions.
- `docs/game/ux/experience.md` owns durable UX information architecture, HUD, phone,
  dialogue, travel, lesson interaction, and accessibility-floor behavior rules.
- `docs/game/narrative/design.md` owns full-game narrative design: story thesis,
  protagonist premise, core cast arcs, relationship ending rules, Lakeview place
  memory, dialogue framework, and narrative delivery rules.
- `docs/engineering/architecture.md` owns technical architecture, KGE integration, runtime
  composition, package rules, launchers, previews, and game-layer boundaries.
- `docs/game/architecture.md` owns product-facing game architecture: discrete-time
  simulation, game state, daily loop, lessons, relationships, phone read models,
  locations, authored content, save/recovery, content scaling, and game-level
  architecture risks.
- `engine/_bmad-output/project-context.md`,
  `engine/README.md`, and `engine/AGENTS.md` own reusable engine rules.
- `docs/game/narrative/content.md` owns implementation-ready authored narrative
  content.
- `docs/agent/code-knowledge-graph.md`,
  `docs/agent/documentation-rag.md`, and `docs/agent/local-memory.md` own local
  agent-tooling setup for retrieval layers.
- Local agent context layers are split intentionally: `mem0` for memory,
  `gitnexus` for repository code knowledge graph queries, and `hss-docs-rag`
  for documentation retrieval over `docs/` and `_bmad-output/`.
- If implementation and docs disagree, update the owning document and code in
  the same change instead of adding a parallel note.

### Repository Boundary

- This repository owns game-specific code, scenes, maps, dialogue, assets,
  desktop launchers, previews, and High School Story product/design contracts.
- `engine/` is a mani-managed reusable KGE checkout. Do not introduce High
  School Story assets, story, tuning, or packages into reusable engine code.
- Game packages live under `pro.piechowski.highschoolstory`. Engine packages live
  under `pro.piechowski.kge`.
- Game code may depend on engine modules. Engine code must not depend on game
  packages or product decisions.

### Engine Consumption Rules

- Treat Kotlin Game Engine as a separate reusable project with its own context at
  `engine/_bmad-output/project-context.md`.
- Keep this game context focused on High School Story implementation and content;
  do not duplicate reusable KGE internals here.
- Before changing `engine/`, switch to the engine context and use engine `KGE-<number>`
  task traceability.
- In the game layer, use KGE APIs according to engine docs and keep game-specific
  composition in `highSchoolStoryModule` and game packages.
- `SandboxLauncher` is the game development entrypoint. `MainLauncher` is
  incomplete while `GameEntrypoint.run()` remains `TODO()`.

### Story, Dialogue, And Game State

- Implement playable scenes as `Story.Beat<GameState>` with a companion
  `Story.Beat.Definition<GameState, BeatType>`.
- Put beat gating in `shouldBePlayed(...)` and `shouldBeSpawned(...)`; do not
  hide scene eligibility in unrelated launch or UI code.
- Run scene content through suspending `play()` or `spawn()` coroutines. Let
  coroutine exceptions propagate unless a local API has a clearer error contract.
- Use `DialogueManager.startDialogue(...).await()` for dialogue sequences.
- Set required `Calendar`, `Clock`, map, camera, and player state explicitly in
  previewable scene beats.
- Keep authored script text in English in `docs/game/narrative/content.md`. Existing Polish
  placeholder dialogue in code should be treated as implementation drift unless
  intentionally localized in a future contract.

### Assets, Maps, And Runtime Files

- Desktop run tasks use `assets/` as the working directory. Runtime asset paths
  are relative to `assets/`.
- Load required assets before spawning preview objects or scene content.
- Use `AssetsLoader { Assets() }` and the project `Assets` aggregate for game
  assets. Keep asset loading suspending and explicit.
- Use Arrow `awaitAll { async { ... } }` for parallel asset loading when it
  matches the existing `Assets` pattern.
- Runtime configuration is loaded from `core/src/main/resources/config.yml` via
  Hoplite `PropertySource.resource("/config.yml")`.

### Game Design Rules Agents Must Preserve

- `docs/game/gdd.md` is the durable full-game-first GDD and canonical
  gameplay design source of truth.
- Full game target is three school years from Year 1 entry to Year 3 graduation.
- Year 1 and Year 2 carry the strongest discovery, relationship development,
  club identity, routine-building, and school-life density; Year 3 focuses on
  culmination, consequences, future choice, last chances, and closure.
- Initial delivery target is the Year 1 Semester 1 vertical slice: one playable
  `12`-week semester with `15-minute` time increments.
- Core fantasy is Second-Chance Student Life: the player returns to high school
  with clearer awareness, intention, and agency than real adolescence allowed.
- Full-game emotional thesis is remembered school life through beautiful
  incompleteness and found people.
- Core weekday rhythm: dormitory morning, school block, afternoon freedom,
  dormitory evening, sleep.
- Weekday starts at dormitory `06:00`; return to dormitory by `21:00`; sleep at
  `22:00`.
- Standard lessons use `3` decision turns of `15` minutes each and lesson feel is
  driven mainly by subject identity, not teacher behavior.
- Initial vertical-slice locations may be `dormitory`, `school`, `district`,
  `shop`, and `park`; full game targets roughly `15-25` discoverable Lakeview
  travel destinations.
- After-school discovery is place-first through compact locations with stable
  identities and readable points of interest.
- Relationship progress is player-facing descriptive stages, not raw numbers.
- Relationship rewards are memory-making first; systemic bonuses should remain
  light or absent.
- Full-game social target is `10` core classmates with full multi-year arcs; one
  run should meaningfully advance about `3-5` arcs and usually one
  best-friend-level bond.
- Romance is optional but fully supported and consumes social capacity; best
  friend and romance may overlap but do not have to.
- The in-game phone exposes planning apps such as calendar, map, social media,
  messages, class/grade info, and memory album.
- Known classmates expose discovered preferences, posts, current location,
  availability, and memories through an in-world social media/profile layer.
- Full game targets `4-5` thematic clubs as a mid-layer identity system with arcs
  lighter than core classmate arcs.
- Starting player profile uses direct interest/preference toggles plus academic
  `1-10` point-buy attributes. These axes start independent.
- Condition stats are `energy`, `stress`, and `mood`; `money` is a regular
  secondary soft constraint; grades are academic standing and a co-equal
  long-term outcome driver with relationships.
- Poor condition should create friction and risk, not hard fail states or erased
  progress.
- Academic collapse is the one hard floor: fully neglecting school can fail the
  semester and end the run after readable grade visibility and at most one
  explicit critical warning. Recovery saves should be offered from about `3`
  days, `2` weeks, and `2` months earlier.
- Money baseline is weekly allowance. Abstract part-time work is an emergency
  top-up and lifestyle tradeoff, not a content-rich subplot or default grind.
- The game should feel cozy-leaning and lightly demanding: limited time matters,
  but one bad day should not ruin a run.

### Code Organization Rules

- Keep platform-independent game logic in `core/`.
- Keep desktop launchers, packaging, and live preview tooling in `lwjgl3/`.
- Keep runtime assets in `assets/`.
- Use one Koin module per gameplay area plus root `highSchoolStoryModule`.
- Use package names that mirror gameplay areas, e.g.
  `character.player`, `vehicle.bus`, `story.intro`, `map`, `asset`.
- Naming: packages lowercase dot-separated; classes/interfaces PascalCase;
  variables/properties camelCase; constants and enum entries SCREAMING_SNAKE_CASE;
  suspend factories use `operator fun invoke(...)`.
- Follow `.editorconfig`: 4 spaces for Kotlin and Gradle Kotlin DSL, LF, UTF-8,
  final newline, no wildcard imports, alphabetized imports.

### Workflow And Task Rules

- Treat `.backlog/` task files as durable git-tracked project artifacts.
- When work changes a `.backlog/` task file, stage and commit that task-file update together with the related repository change unless the user explicitly asks to keep it out of git.
- When choosing retrieval tools inside the active client, use `hss-docs-rag`
  first for documentation questions, workflow rules, owner-document lookup, and
  `_bmad-output/` guidance.
- Use `gitnexus` first for code understanding, execution tracing, impact
  analysis, review, and refactoring questions.
- Use `mem0` for long-lived memory recall, prior decisions, and user
  preferences.
- Fall back to filesystem search and direct file reads when MCP retrieval is
  unavailable, stale, too noisy, or when exact line-level verification is
  required before editing.
- During brainstorming workflows, show visible session progress for every question or topic.
- Brainstorming progress should include the current question or topic number, the overall session position when known, and short labels in a checklist-style summary so the user can see what is done and what remains.

### Performance Rules

- No explicit FPS or frame-budget contract exists yet. Avoid inventing one; use
  narrow local profiling or visual preview evidence when changing hot runtime
  systems.
- Treat Fleks ECS systems, movement, rendering, physics, input, and dialogue UI
  updates as likely hot paths. Avoid per-frame allocations and avoid broad world
  scans unless an existing engine pattern does so.
- Reusable engine system performance rules belong in
  `engine/_bmad-output/project-context.md`; this project should only document
  game-specific performance budgets once accepted.
- Keep heavyweight asset loading out of per-frame or repeated scene logic. Load
  assets before spawning game objects in previews and scenes.

### Testing Rules

- Run `./gradlew test` for normal automated verification after code changes that
  affect non-visual logic.
- Run `./gradlew ktlintCheck` after Kotlin or Gradle edits; run
  `./gradlew ktlintFormat` after formatting-sensitive Kotlin or Gradle edits.
- Treat `lwjgl3/src/preview/` previews as live visual tooling run manually
  through `:lwjgl3:preview`, not headless unit tests.
- Preview sources must pass `highSchoolStoryModule` to `preview(...)` and load
  required assets before spawning objects or playing beats.
- Run a targeted preview test after changing visual game objects, maps,
  dialogue, scenes, or launcher wiring.
- Do not use shared services, paid APIs, real accounts, or non-local
  environments for verification.

### Platform & Build Rules

- Use Java 17 toolchains for compiled output. Gradle may run on any JDK supported
  by the wrapper.
- Sync `engine/` with `mani sync` before build work that depends on the managed
  engine checkout.
- Use `./gradlew` on Unix/WSL and `gradlew.bat` on Windows.
- Primary local run command is
  `./gradlew :lwjgl3:run -PmainClass=pro.piechowski.highschoolstory.game.lwjgl3.SandboxLauncher`.
- `MainLauncher` is wired but incomplete until the full game path exists.
- Packaging tasks are local only: `:lwjgl3:jar`, `:lwjgl3:jarWin`,
  `:lwjgl3:jarLinux`, `:lwjgl3:jarMac`, and `:lwjgl3:dist`.
- Branch names use `TASK-ID/short-description`.
- PR titles use `TASK-ID Short description`.
- Commit messages use Conventional Commits with the task ID at the start of the
  summary text, for example `type(scope): TASK-ID Short description`.
- Do not push to remote git, mutate GitHub state, edit secrets, or alter files
  outside the workspace without explicit user approval.

### Critical Don't-Miss Rules

- Do not replace missing behavior with silent no-ops. Use `TODO()` for visible
  unimplemented stubs.
- Do not make undocumented behavior, architecture, gameplay, workflow, command,
  path, packaging, or narrative contract changes.
- Do not recreate retired `docs/product/`, `docs/development/`, `docs/design/`,
  or `docs/narrative/` spaces unless a future documentation contract explicitly
  reintroduces them.
- Do not treat visual preview sources as CI-safe headless tests.
- Do not place game-specific tuning or story inside `engine/`.
- Do not add backward-compatibility code unless persisted data, shipped
  behavior, external consumers, or explicit requirements justify it.
- Do not churn generated output, runtime state, local machine data, secrets, or
  credentials.
- If a requested change crosses the game/engine boundary or instructions
  conflict with authoritative docs, stop and ask before editing.

## Known Documentation Gaps

- Legacy root documents were replaced in `HSS-13` with BMAD-native entrypoints;
  use `docs/` plus `_bmad-output/project-context.md` as the current source of
  truth.
- No explicit performance budget is documented for the game. Agents should avoid
  inventing hard targets and should record any new budget in the owning design or
  architecture document first.
- The promoted durable GDD is `docs/game/gdd.md`. Planning artifacts under
  `_bmad-output/planning-artifacts/` are workflow history unless explicitly
  promoted into `docs/`.

## Usage Guidelines

### For AI Agents

- Read this file before implementing game code or modifying project guidance.
- Follow all listed rules exactly; when uncertain, choose the narrower and more
  restrictive interpretation.
- If a new durable pattern emerges, update this file and the owning source
  document in the same change.
- Keep final handoffs tied to the active `HSS-<number>` backlog task when one
  exists.

### For Humans

- Keep this file lean and focused on rules agents are likely to miss.
- Update it when stack versions, engine contracts, documentation structure, or
  implementation patterns change.
- Remove rules that become stale, duplicated, or obvious from the current code.
- Last updated: 2026-06-09 for `HSS-17`.
