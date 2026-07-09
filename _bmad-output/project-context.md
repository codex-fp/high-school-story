---
project_name: 'High School Story'
user_name: 'Filip Piechowski'
date: '2026-07-05'
sections_completed: ['technology_stack', 'engine_specific_rules', 'performance_rules', 'code_organization_rules', 'testing_rules', 'platform_build_rules', 'critical_dont_miss_rules']
status: 'complete'
rule_count: 79
optimized_for_llm: true
---

# Project Context for AI Agents

_This file contains critical rules and patterns that AI agents must follow when implementing game code in this project. Focus on unobvious details that agents might otherwise miss._

---

## Technology Stack & Versions

- Engine: Godot Engine 4.7 .NET build.
- Godot SDK: `Godot.NET.Sdk/4.7.0`.
- Runtime target: `net10.0` for the main Godot/C# project.
- Android fallback target: `net9.0` remains in the generated Godot project, but Android is not an MVP target.
- Language: C# with modern .NET 10 direction where compatible with Godot.
- UI/reactive layer: R3 is approved at the Application/Godot boundary, not in Domain.
- Content authoring: JSON systems and custom JSON dialogue, validated outside Godot.
- Primary platform: PC / Steam, with Steam Deck-conscious UI and controller focus.
- Godot project file: `project.godot`.
- Root Godot host project: `High School Story.csproj`.
- Root solution: `High School Story.sln`.

## Critical Implementation Rules

### Engine-Specific Rules

- Treat Godot as the presentation/infrastructure host only. Gameplay rules live in clean C# projects outside Godot-specific code.
- Godot scenes and nodes may present state, collect input, play audio/animation, and compose views; they must not own calendar rules, activity availability, lesson resolution, relationship gates, wellbeing effects, Memory Ledger logic, or save legality.
- Godot signals are allowed only for local presentation wiring, focus, animation, and node-to-node UI behavior. They must not become the gameplay event bus or cross the Domain/Application boundary.
- Input flows through `Godot InputMap -> GodotInputAdapter -> Application commands/intents`. Godot captures devices; Application interprets meaning in the current runtime mode.
- Runtime mode is Application-owned. Do not scatter mode truth across Godot node visibility flags or scene-local booleans.
- Godot views subscribe to Application-owned read models/projections and dispose subscriptions with the node/view lifecycle.
- Godot views and presenters must not query Domain directly, mutate `GameState`, or mutate R3 projections.
- Godot scene transitions load/render locations, but Application owns logical location, travel legality, time cost, and whether the transition is allowed.
- Godot may implement outbound adapters such as save file access and audio playback, but Application decides save eligibility and emits audio intents.
- Do not serialize Godot node paths, focus, animation state, or UI state as gameplay truth.
- Keep `src/HighSchoolStory.Godot/` as host code compiled by the root Godot project, not a clean domain project.
- Avoid autoloads for gameplay state. If an autoload is used later, it should act as composition/infrastructure glue, not as global mutable game logic.

### Performance Rules

- Target 60 FPS during representative school navigation, phone use, lessons, dialogue, travel, and day transition.
- Keep scene transitions under 2 seconds on target PC spec.
- Keep save/load and day transition under 3 seconds for normal MVP run state.
- Treat the 10-minute representative loop as the practical performance scenario: navigation, lesson decisions, smartphone use, relationship dialogue, travel, and day transition.
- Do not run broad content validation, reachability analysis, or scenario simulation during normal gameplay. Those belong in CLI tools, editor/debug previews, or tests.
- Runtime activity availability and phone clues may query validated catalogs and current state, but must not parse raw JSON or scan content files on demand.
- Normalize time costs to 15-minute blocks before feasibility checks; avoid repeated ad hoc time math in UI code.
- R3 projections are UI/read state rebuilt from canonical `GameState`; avoid making incremental projection caches the only performant path unless tests compare them to a full rebuild.
- Godot UI should render Application read models directly; do not walk Domain aggregates or content graphs from views to assemble screens.
- Load validated content into a runtime `ContentCatalog` at startup or controlled boundaries, not mid-interaction.
- Keep Godot smoke/E2E tests few and focused. Most confidence and performance-sensitive rule coverage belongs below the engine boundary.

### Code Organization Rules

- Use the Godot-generated C# solution as host, then expand into explicit clean projects: `HighSchoolStory.Domain`, `HighSchoolStory.Ports`, `HighSchoolStory.Application`, `HighSchoolStory.Content`, tools, and tests.
- `HighSchoolStory.Domain` has no project references and no Godot, R3, Ports, Application, Content, JSON, logging, or adapter dependencies.
- `HighSchoolStory.Ports` may reference Domain for stable IDs/value objects/result types, but must not expose mutable aggregates for adapter-side manipulation.
- `HighSchoolStory.Application` references Domain, Ports, and R3. It owns commands, queries, runtime mode, save orchestration, projections, read models, and side-effect orchestration through ports.
- `HighSchoolStory.Content` references Domain and Ports. It owns JSON loading, schema validation, reports, migrations, `ContentCatalog`, and content repository implementations.
- The root `High School Story.csproj` is the Godot host/composition root and should reference Application, Ports, and Content. It should not directly reference Domain unless a concrete need is explicitly approved.
- Root Godot `.csproj` must exclude clean library, tool, and test source folders from direct compilation; reference them via `ProjectReference` instead.
- Godot host code lives under `src/HighSchoolStory.Godot/` and is compiled by the root Godot project, not by a standalone clean-project boundary unless explicitly approved later.
- Godot resources stay in Godot-friendly root folders such as `scenes/` and `assets/`.
- CLI tools live under `tools/`, especially `HighSchoolStory.ContentValidator` and `HighSchoolStory.ScenarioRunner`.
- Tests live under `tests/` with separate projects for Domain, Application, Content, SaveMigration, Scenario, Architecture, and GodotSmoke.
- Use namespace roots matching project/boundary names, e.g. `HighSchoolStory.Domain.Activities`, `HighSchoolStory.Application.Features.Lessons`, `HighSchoolStory.Godot.Views.Phone`.
- C# classes use PascalCase; interfaces/ports use `I` + PascalCase.
- JSON content IDs and JSON files use lower-kebab-case; Godot scenes use PascalCase; pixel art/audio assets use lower_snake_case; fixture files use descriptive lower-kebab-case.
- Do not create abstract adapter base classes such as `InboundAdapter` or `OutboundAdapter` just because architecture diagrams use those stereotypes. Add shared base types only when real shared behavior appears.

### Testing Rules

- `dotnet test` should remain the fast, non-flaky default confidence gate and should not require launching Godot.
- Most coverage belongs below the engine boundary: Domain, Application, Content, SaveMigration, Scenario, and Architecture tests.
- Godot smoke tests are a separate slower integration gate and must remain few and focused.
- No gameplay rule is considered tested only because it worked in a Godot scene.
- Architecture tests must enforce: Domain has no Godot/R3/Ports/JSON/logging refs; Application has no Godot refs; Content has no Application/Godot refs; Godot host does not compile clean library/tool/test source directly.
- Test command handlers and domain policies with deterministic clocks, seeded RNG, fixture catalogs, and in-memory stores.
- `ContentValidator` tests must catch design correctness issues, not only JSON syntax: unknown IDs, impossible availability, dead dialogue targets, missing phone clues, and invalid effects.
- `ScenarioRunner` tests must execute the same Application command handlers used by Godot; it must not become a parallel simulation engine.
- Save tests must cover save/load preservation, blocked saves in unsafe runtime modes, old fixture migration, and projection rebuild after load.
- R3 projection tests must compare incremental updates against full rebuild from canonical `GameState`.
- Lesson tests must cover 3 blocks in order, duplicate/idempotency behavior, teacher strictness/risk, and exact `3x15` minute advancement.
- Activity occasion tests must prove phone clues cannot start ordinary activities and stale prompts block after time, flag, or location changes.
- Dialogue tests must prove unavailable choices cannot be selected, typed effects apply once, dead targets are caught by validation, and raw relationship math stays hidden from projections.

### Platform & Build Rules

- Primary platform is PC / Steam. Optimize decisions for desktop Godot .NET first.
- Steam Deck is a design constraint for readability, controller focus, and 720p usability where low-cost, but full Steam Deck support is not a binding MVP requirement.
- Android is not an MVP target even though the Godot project has a conditional Android target framework.
- Web export is not a target; do not spend implementation effort on Godot C# web constraints.
- Console and mobile are out of first release scope.
- Controller-first UI is required; keyboard-compatible input is required; mouse is auxiliary.
- Physical input belongs in Godot InputMap. Gameplay meaning belongs in Application commands/intents.
- Do not add platform services directly to Domain or Application rules. Steam-ready services should enter through ports/adapters.
- Steam Cloud is deferred, but save envelopes should remain future-ready for cloud/conflict metadata.
- Player settings are separate from gameplay save-state.
- Godot smoke command may use `godot --headless --path . --quit-after 1`, but the local executable name may vary by machine.
- Build confidence should start with `dotnet build "High School Story.sln"` and fast non-Godot `dotnet test`; Godot smoke is separate.

### Critical Don't-Miss Rules

- Do not let Godot own gameplay rules. If a rule affects time, availability, relationships, lessons, wellbeing, save legality, or Memory Ledger, it belongs outside Godot nodes.
- Do not implement relationship progression as `Bond >= X` only. Authored beats require Bond/tier plus flags, context, timing, location, prior attention, and content-defined eligibility.
- Do not let the phone start ordinary activities remotely. Phone apps may reveal clues, schedules, messages, maps, and hints; activities start through world presence at NPCs, objects, locations, or events.
- Do not persist R3 projections, Godot node paths, focus, animation state, screen state, or prompt caches as gameplay truth.
- Do not make UI previews authoritative. Activity/time previews must revalidate through the same rules when the command executes.
- Do not hardcode story beats, activities, calendar events, relationship gates, or lesson effects into scenes. Use validated content definitions and Application/Domain handlers.
- Do not make `ScenarioRunner` bypass Application command handlers. It must exercise the same paths used by Godot.
- Do not make `ContentValidator` a syntax checker only. It must catch playable reachability, references, conditions, effects, dialogue graph, phone clues, and GDD/UX rule violations.
- Do not build full Academics, full Memory Ledger, all phone apps, broad romance, Steam services, many locations, or a large dialogue DSL before the first vertical slice proves the core loop.
- First vertical slice order is: content fixture, ContentValidator, ScenarioRunner happy path, Time/Commitment policy, ActivityOccasion, LessonSession, DialogueSession/effects, Save/load rebuild, Godot smoke view.
- Save legality is Application-owned. Manual save is blocked during lessons, exams, action resolution, active dialogue, and other transient/unsafe runtime modes.
- Expected gameplay rejections are typed Result errors, not exceptions. Exceptions are for programmer mistakes, corrupted infrastructure, broken invariants, and unexpected failures.
- Memory Ledger is not a raw event log or quest log. Store intentional typed reflection records from accumulated state, missed chances, relationships, academics, wellbeing, and significant choices.
- Mood is qualitative/interpretive, not just a third numeric meter displayed like Energy and Stress.
- Lessons are active 3-block school-pressure flows, not passive schedule skips and not combat UI.
- The player cannot voluntarily skip school, arrive late, or break curfew through normal activities unless an authored/scripted event explicitly permits it.

---

## Usage Guidelines

**For AI Agents:**

- Read this file before implementing any game code.
- Follow all rules exactly as documented.
- When in doubt, prefer the more restrictive architectural boundary.
- Update this file if new implementation patterns become canonical.

**For Humans:**

- Keep this file lean and focused on agent needs.
- Update it when the technology stack, architecture, or production constraints change.
- Review periodically for outdated rules.
- Remove rules that become obvious from code structure or enforced tests.

Last Updated: 2026-07-05
