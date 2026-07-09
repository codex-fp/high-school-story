---
project: High School Story
artifact: glossary
status: draft
source_workflow: gds-create-epics-and-stories
created_for: epics-and-stories terminology support
owner: Paige / Technical Writer
---

# High School Story Glossary

This glossary defines recurring product, design, architecture, UX, content, and testing terms used in planning artifacts, epics, stories, and acceptance criteria.

The glossary is a living document. Terms should be added when they first become important for story understanding, implementation boundaries, or team alignment.

## Usage Notes

- Definitions should clarify how the term is used in this project.
- Definitions should stay short enough to help during story review.
- This document is not a replacement for the GDD, UX design, architecture, or test strategy.
- When a term has different player-facing, design, architecture, or test meanings, the distinction should be called out explicitly.
- Paige / Technical Writer owns editorial consistency. Domain specialists contribute definitions for their areas.

## Terms

### Activity Preview

A preview for an activity occasion before the player starts it, showing expected duration, requirements, feasibility, likely resource effects, and hard conflicts such as curfew or upcoming commitments. It helps the player judge whether the activity fits the current day, location, and wellbeing situation without turning activities into remote menu optimization.

Boundary: An activity preview must not start or guarantee the activity. Activity execution must revalidate availability, time, travel, return rules, resources, flags, and location.

### Application Command

An explicit player or system intent handled by the Application layer, such as starting an activity, choosing a lesson action, selecting a dialogue option, traveling, ending the day, or saving the game. Commands validate runtime legality, call Domain rules, update canonical state, and produce typed results or errors.

Boundary: Godot captures input, but gameplay meaning and mutation happen through Application commands.

### Application-Owned Runtime Mode

The authoritative Application state describing the current gameplay mode, such as exploration, phone use, active lesson, active dialogue, travel transition, or day boundary. Runtime mode controls which commands are legal, which saves are allowed, and which projections should be active.

Boundary: Runtime truth must not be scattered across Godot node visibility, scene-local booleans, or UI focus state.

### Choice Preview

A preview attached to a specific selectable option, such as a dialogue choice, lesson action, travel option, or confirmation button. It communicates the immediate meaning of that option in player-facing terms, such as risk level, time cost, likely wellbeing impact, or why the option is blocked.

Boundary: A choice preview can become stale if state changes. Selecting the choice must trigger fresh validation before execution.

### ContentCatalog

A validated runtime representation of authored content such as schedules, activities, dialogue, lessons, flags, phone clues, and event definitions. Application systems query the ContentCatalog during controlled gameplay flows instead of reading raw JSON files on demand.

Boundary: Content loading and validation belong to Content. Godot views and Domain rules must not parse content files directly.

### ContentValidator

A CLI/content-layer tool that validates authored content before it becomes a runtime ContentCatalog or is used by gameplay systems. It checks schema correctness, unknown IDs, broken references, availability conditions, dialogue graph integrity, phone clues, typed effects, GDD/UX rules, save/content version mismatches, and playable reachability issues such as impossible activities or dead dialogue targets.

Useful output includes structured validation reports and typed errors with severity, failure category, content ID, source path, rule ID, causality trace, readable message, and suggested fix.

Boundary: ContentValidator is not a runtime gameplay authority. It proves content correctness before runtime; Application commands still revalidate player actions against current GameState.

### Deterministic Scenario

A scripted scenario that runs the same path every time using controlled clock, seeded RNG, fixture catalog data, and in-memory stores. It proves that a player-relevant flow can be executed through real Application command handlers with stable outputs and repeatable failure modes.

Boundary: A deterministic scenario must not become a parallel simulation engine or bypass the Application paths used by Godot.

### Fixture Catalog

A curated set of deterministic content and state fixtures used by Domain, Application, Content, ScenarioRunner, and save/migration tests. It provides known schedules, GameState seeds, content definitions, read-model snapshots, and golden saves so tests can prove behavior without ad hoc setup.

Boundary: A fixture catalog is test and design evidence, not runtime-authored game truth or a shortcut around ContentCatalog validation.

### Preview

A player-facing forecast of what a pending choice is expected to cost, require, block, or change before the player commits. A preview helps the player understand likely consequences, timing pressure, and feasibility in readable terms.

Boundary: A preview is not authoritative. The execution command must revalidate the current rules, state, time, location, and content before applying any result.

### Read Model / Projection

A screen-ready view of gameplay state produced by the Application layer for UI consumption, such as HUD, phone, activity choice, lesson, dialogue, or save/load views. Projections are rebuilt from canonical GameState and may be exposed reactively through R3 at the Application/Godot boundary.

Boundary: Godot renders read models but must not mutate projections or query Domain aggregates directly.

### Regression Artifact

A saved test evidence artifact used to detect whether future changes altered important behavior. In this project, regression artifacts may include ScenarioRunner reports, read-model snapshots, validation reports, golden save fixtures, migration outputs, or Godot smoke evidence.

Boundary: A regression artifact should be stable and reviewable. Noisy logs or environment-dependent output should not be treated as regression evidence.

### ScenarioRunner

A deterministic CLI/test tool that executes authored gameplay scenarios through the same Application command handlers used by the Godot host. It is used to prove vertical-slice flows, blocked paths, save/load behavior, and projection snapshots without launching Godot.

Boundary: ScenarioRunner must not become a parallel simulation engine or bypass Application commands.

### ScenarioRunner Evidence

The structured output produced by ScenarioRunner after executing a deterministic scenario, including commands executed, state transitions, blocked-choice results, read-model snapshots, validation/report references, and final state. It serves as inspectable proof that authored content is playable through real Application flows and that expected failures return typed results rather than exceptions.

Boundary: ScenarioRunner evidence is not a replacement for lower-level Domain/Application tests. It proves integrated flow behavior.

### Typed Result Error

A structured, expected failure returned by Domain or Application code for rejected gameplay actions, content-authoring problems, corrupted saves, or illegal runtime commands. It carries machine-readable category/reason data and developer/player-facing diagnostics so tests can assert exact failure causality.

Boundary: Typed Result errors are for expected recoverable failures. Programmer bugs, broken invariants, and corrupted infrastructure boundaries should still surface as exceptions.
