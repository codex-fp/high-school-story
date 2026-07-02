---
title: 'Game Architecture'
project: 'High School Story'
date: '2026-07-02'
author: 'Filip Piechowski'
version: '1.0'
stepsCompleted: [1, 2, 3]
status: 'in-progress'

# Source Documents
gdd: '_bmad-output/planning-artifacts/gdds/gdd-High School Story-2026-06-25/gdd.md'
epics: '_bmad-output/planning-artifacts/gdds/gdd-High School Story-2026-06-25/epics.md'
brief: '_bmad-output/planning-artifacts/briefs/brief-High School Story-2026-06-25/brief.md'
---

# Game Architecture

## Document Status

This architecture document is being created through the GDS Architecture Workflow.

**Steps Completed:** 3 of 9 (Engine & Framework)

---

## Project Context

### Game Overview

**High School Story** is a nostalgic school social sim for PC / Steam about guiding a custom dorm student through a constrained high-school semester. The MVP is one 20-week semester, not a compressed full game. The core experience is a daily/weekly loop of lessons, travel, relationship attention, wellbeing, phone discovery, events, exams, and reflection.

### Technical Scope

**Platform:** PC / Steam first; Steam Deck-conscious where low-cost.  
**Engine Direction:** Godot; Step 3 should validate the Godot + C#/.NET boundary and starter/project layout, not reopen the engine question from zero.  
**Architecture Starting Hypothesis:** Godot as presentation/infrastructure adapter; clean C#/.NET domain isolated from Godot APIs.  
**Genre:** School-life social simulation / time-management / relationship sim.  
**Project Level:** High complexity for solo-dev because of content authoring, calendar state, relationship flags, and save-state correctness.

### Core Systems

| System | Complexity | Source |
| --- | --- | --- |
| Time / Calendar / 15-minute blocks | High | GDD E1 |
| Travel / location feasibility | Medium-High | GDD E1, UX |
| Sleep / wake / daily boundary / end-of-day summary | Medium-High | GDD E1/E2/E9, UX |
| Wellbeing: Energy / Stress / Mood | High | GDD E2 |
| Activity availability and resolution | High | GDD E2, UX |
| Lessons: 3 blocks, teacher attention/checks | High | GDD E3 |
| Academics: subjects, homework, tests, exams, grades | High | GDD E3 |
| Relationships: Bond, tiers, flags, authored beats | High | GDD E4, NDD |
| Narrative gating / story flags / Memory Ledger | High | NDD |
| Smartphone apps: Calendar, Map, Social, Messages, School App, Settings | High | GDD E5, UX |
| Locations / clubs / fixed and triggered events | High | GDD E6 |
| Character creation / preferences / identity | Medium | GDD E7 |
| Dialogue modes and UI state surfaces | High | UX, NDD |
| Save / load / checkpoints / safe manual save | High | GDD E9 |
| Content authoring pipeline | High | GDD, NDD, UX |

### Technical Requirements

- Sustain 60 FPS during representative school navigation, phone use, lessons, dialogue, travel, and day transition.
- PC first, Steam Deck readability and controller focus designed from the start.
- Scene transition target under 2 seconds; save/load and day transition under 3 seconds.
- No online multiplayer or networking requirement.
- Save model must avoid unstable contexts: no manual save during lessons, exams, action resolution, or other transient states.
- UI must be controller-first, keyboard-compatible, mouse auxiliary.
- Phone is the major information/system hub, but not a remote activity executor.
- Activities trigger through world presence: NPCs, objects, locations, events.
- Content must be data-authored where possible: calendars, activities, effects, flags, dialogues, availability, feedback, and events.
- Authoring data needs validation/preview tooling for calendar conflicts, availability conditions, flags, effects, and dialogue/event variants without manually playing a full semester for every check.

### Complexity Drivers

**High Complexity**

- Calendar/time as the central game grammar.
- Relationship progression requiring Bond/tier plus flags, context, timing, location, and authored beats.
- Lessons as repeated gameplay, not passive schedule skips.
- Save-state correctness across long semester progression.
- Content authoring and validation for many small conditions and variants.
- UI state orchestration across top-down exploration, phone overlays, lesson mode, dialogue, and activity overlays.

**Novel / Special Attention**

- Hexagonal-style Godot/C# split: domain must not depend on Godot.
- Phone-as-menu and phone-as-information-hub.
- Activity choice as top-down overlay, not menu-driven remote scheduling.
- Lesson flow as school-pressure "turn structure" without combat framing.
- Mood as qualitative state derived from pressures/tags, not just a third meter.
- Memory Ledger / semester reflection as accumulated interpretation, not epilogue closure.
- Memory Ledger as interpretive reflection over accumulated state, missed chances, relationships, academics, and wellbeing, not a quest log.

### Technical Risks

- Overfitting the domain model to Godot node structure.
- Coding story beats, activities, or calendar events directly into scenes.
- Letting relationship progression collapse into simple `Bond >= X`.
- Building UI surfaces before defining domain state and commands.
- Underestimating save/load and content validation complexity.
- Making beautiful systems that do not serve GDD/UX player-facing loops.

---

## Engine & Framework

### Selected Engine

**Godot Engine 4.7 (.NET build)** with **Godot.NET.Sdk/4.7.0**.

**Rationale:** Godot matches the project’s 2D pixel-art school-life sim needs, PC/Steam-first scope, low/no licensing cost, strong 2D scene workflow, and the project requirement to isolate domain logic from engine APIs. Godot is selected as the presentation/infrastructure shell, not as the owner of game rules.

### Runtime / Language Baseline

- Engine: Godot 4.7 .NET build.
- Godot SDK: `Godot.NET.Sdk/4.7.0`.
- Project target: `net10.0`, intentionally overriding the Godot-generated `net8.0` baseline.
- Language direction: modern C# aligned with .NET 10 where compatible.
- Local validation gate: .NET 10 SDK must be installed and verified before the first architecture spike build.
- Godot-generated Android target fallback remains untouched for now because Android is not an MVP target.
- Web export is not a target; Godot C# web export limitations are acceptable.

Verified sources on 2026-07-02:

- Godot 4.7 release page: `https://godotengine.org/releases/4.7/`
- Godot C# documentation and .NET SDK requirement: `https://docs.godotengine.org/en/stable/tutorials/scripting/c_sharp/c_sharp_basics.html`
- GodotSharp .NET 8 minimum / latest .NET support note: `https://godotengine.org/article/godotsharp-packages-net8/`
- .NET downloads and support lifecycle: `https://dotnet.microsoft.com/en-us/download/dotnet`, `https://dotnet.microsoft.com/en-us/platform/support/policy/dotnet-core`
- C# 14 language update: `https://learn.microsoft.com/en-us/dotnet/csharp/whats-new/csharp-14`

### Project Initialization

Use the **Godot-generated C# solution as the host**, then expand it into a multi-project .NET solution with explicit dependency boundaries.

Current generated files:

```text
High School Story.sln
High School Story.csproj
project.godot
src/
```

Architecture target:

```text
High School Story.sln
High School Story.csproj        # Godot presentation / composition root

src/
  HighSchoolStory.Domain/
  HighSchoolStory.Application/
  HighSchoolStory.Ports/
  HighSchoolStory.Content/

tests/
  HighSchoolStory.Domain.Tests/
  HighSchoolStory.Application.Tests/
  HighSchoolStory.Architecture.Tests/
```

Initial dependency direction:

```text
High School Story.csproj
  -> HighSchoolStory.Application
  -> HighSchoolStory.Ports
  -> HighSchoolStory.Content

HighSchoolStory.Application
  -> HighSchoolStory.Domain
  -> HighSchoolStory.Ports

HighSchoolStory.Domain
  -> no Godot
  -> no adapters
  -> no infrastructure
```

### Domain-First Authoring Rule

Engine selection must preserve domain-first authoring: Godot scenes and nodes present state and collect input; calendar rules, activity availability, relationship gates, lesson resolution, wellbeing effects, memory flags, and save-state semantics live outside Godot-specific code.

Godot may own:

- Scene composition and visual hierarchy.
- Input action collection.
- UI rendering, focus, and transitions.
- Audio/visual playback.
- Asset loading and engine integration.
- Thin adapters that translate player input into application commands and render application/domain results.

Godot must not own:

- Calendar/time rules.
- Travel feasibility.
- Activity availability and resolution.
- Lesson action resolution.
- Relationship gates and authored beat eligibility.
- Wellbeing effect semantics.
- Memory Ledger interpretation inputs.
- Save-state semantics.
- Content validation rules.

### Engine-Provided Architecture

| Component | Solution | Notes |
| --- | --- | --- |
| Rendering | Godot 2D renderer | Pixel-art top-down exploration, phone overlays, HUD, dialogue presentation. |
| Scene Management | Godot scene tree and `.tscn` scenes | Presentation composition only; domain state is not derived from node hierarchy. |
| UI | Godot `Control` / `CanvasLayer` | Implements controller-first focus, Steam Deck readability, phone/HUD/dialogue overlays. |
| Input | Godot input actions | Inbound adapter maps physical input to application commands. |
| Audio | Godot audio buses and players | Outbound adapter presents domain/application audio intents. |
| Asset Pipeline | Godot import pipeline | Visual/audio assets live in Godot; rules/content definitions need validation outside scene code. |
| Build / Export | Godot export pipeline | PC/Steam first; Steam Deck-conscious. |
| Editor Workflow | Godot editor plus external C# IDE | Godot scripts/adapters stay thin; domain code uses normal .NET project structure. |

### Starter / Template Decision

Do not adopt a full third-party Godot starter template as the architecture foundation.

Chickensoft `GodotGame` is useful as a reference for Godot + C# setup, launch configuration, tests, coverage, `global.json`, and CI ideas, but this project needs a stricter Hexagonal boundary than a general Godot starter provides.

### Development Tools / MCP

Recommended optional AI-assisted development tools:

| Tool | Role | Notes |
| --- | --- | --- |
| GoPeak Godot MCP | Godot edit-run-inspect loop | Useful for scene inspection, screenshots, diagnostics, live scene tree, and compact AI-assisted workflows. Development tooling only; not runtime architecture. |
| Context7 | Current documentation lookup | Useful for Godot/.NET/C# API verification during implementation. Development tooling only. |

These tools must not influence runtime architecture or create a dependency between domain logic and Godot editor workflows.

### Remaining Architectural Decisions

The following decisions still need to be made explicitly in later steps:

- Exact C# project references and allowed dependency direction.
- Domain command/query boundary.
- Application service boundaries for day loop, travel, activity resolution, lessons, phone, dialogue, and save/load.
- Content authoring format and validation tooling.
- Save-state ownership, serialization boundary, and safe-save state machine.
- Godot adapter patterns for UI, scene transitions, input, audio, persistence, and content loading.
- Testing pyramid: pure domain tests, application tests, architecture dependency tests, and Godot integration smoke tests.
- State machine boundaries for exploration, phone, lessons, dialogue, activity overlays, travel, daily transitions, and semester reflection.
