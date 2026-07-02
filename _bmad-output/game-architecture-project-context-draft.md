# Game Architecture - Project Context Draft

Status: draft for review; not yet committed into `game-architecture.md`.

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

## Validation Check

- Have all core systems been captured?
- Are the complexity assessments accurate?
- Are any technical constraints missing?

## Step 2 Menu

- **A** - Advanced Elicitation: deep dive into technical requirements.
- **P** - Party Mode: get multiple perspectives on complexity.
- **C** - Continue: save this into `game-architecture.md` and move to Engine / Starter Selection.
