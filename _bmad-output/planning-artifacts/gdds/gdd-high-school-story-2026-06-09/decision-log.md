---
title: High School Story GDD Decision Log
created: 2026-06-09
updated: 2026-06-09
task_id: HSS-15
updated_by: HSS-16
---

# High School Story - GDD Decision Log

## 2026-06-09 - Create Mode Confirmed

- User selected `Create` mode for `gds-gdd` after being offered Validate, Update, and Create.
- New planning artifact workspace created at `_bmad-output/planning-artifacts/gdds/gdd-high-school-story-2026-06-09/`.
- Existing canonical docs were used as input and were not replaced.

## 2026-06-09 - Source Inputs

- `docs/project-overview.md` supplied project summary, repository status, current implementation surface, and risks.
- `docs/game-design.md` supplied the current MVP design contract.
- `docs/narrative-content.md` supplied intro scene intent, flow, tone, and transition target.
- Active tasks `HSS-1` through `HSS-8` supplied near-term design and implementation scope.

## 2026-06-09 - Game Type Match

- Selected game type: `simulation`.
- Rationale: the design centers on interacting systems for time, calendar, school routine, grades, condition, relationships, location travel, and semester outcomes.
- Complexity: high, per `genre-complexity.csv`.
- Required simulation concerns captured in `gdd.md`: systems map, management mechanics, economic/resource loops, progression/unlocks, scenario frame, emergence boundaries, and end-state definition.

## 2026-06-09 - Scope Preservation

- MVP remains one `12`-week semester.
- MVP keeps the location set: `dormitory`, `school`, `district`, `shop`, `park`.
- MVP keeps `15`-minute time increments.
- MVP keeps one fully supported classmate arc and lighter support for remaining classmates.
- MVP keeps descriptive relationship stages and a single active committed romance.
- MVP keeps shared `3`-turn lessons and per-subject grades.
- MVP excludes full multi-year progression, heavy inventory, deep truancy, bespoke subject minigames, hard fail states, construction, multiplayer, and large economy systems.

## 2026-06-09 - Assumptions Recorded

- Desktop keyboard/mouse input is assumed for MVP controls because the project targets Desktop JVM and current launchers are desktop-based.
- Small allowances or low-risk support events are assumed as limited money sources until balancing work defines money flow.
- Exact formulas for lesson risk, condition thresholds, study efficiency, recovery efficiency, and exam weighting remain open for `HSS-2`.
- No licensed music or voiced dialogue is assumed for MVP scope.

## 2026-06-09 - Epic Mapping

- `HSS-1`, `HSS-2`, and `HSS-3` map to design finalization.
- `HSS-4` maps to calendar and day structure.
- `HSS-5` maps to first playable weekday.
- `HSS-6` maps to travel and validation.
- `HSS-7` maps to lessons and academic standing.
- `HSS-8` maps to condition and recovery.
- Future task needed for semester exam implementation because it is MVP scope but not covered by `HSS-1` through `HSS-8`.

## 2026-06-09 - Brainstorming Update Source

- Update source: `_bmad-output/brainstorming-session-2026-06-09.md`.
- Task source: `HSS-16`.
- Update mode: existing GDD update, not a new GDD artifact.
- Existing planning GDD path remains `_bmad-output/planning-artifacts/gdds/gdd-high-school-story-2026-06-09/`.

## 2026-06-09 - Core Fantasy Pivot

- Confirmed core fantasy: `Second-Chance Student Life`.
- Meaning: the player returns to high school with more awareness, intention, and agency than real life allowed.
- School remains the rhythm and pressure source, but after-school decisions should usually be the most emotionally exciting part of the day.
- GDD updated in Executive Summary, Goals and Context, Core Gameplay, Simulation Specific Elements, and Success Metrics.

## 2026-06-09 - School Role and Academic Floor

- School is now framed as a baseline cost, opportunity engine, contact point, and occasional event disruptor rather than the main excitement source.
- Academic failure can end the semester if the player fully neglects school.
- This intentionally replaces the earlier blanket claim that weak grades never create hard fail states.
- Condition still does not create hard fail states; it creates friction, weaker outcomes, and risk.
- Academic failure should be fair, readable, mostly self-inflicted, and supported by ongoing grade visibility plus at most one explicit critical warning.
- Rollback options after academic failure may include loading from `3` days, `2` weeks, or `1` month earlier.

## 2026-06-09 - Exam Role

- Exams should confirm and finalize semester-long academic trajectory more than rescue a weak semester.
- Exam execution remains affected by preparation, energy, and stress.
- Balancing still needs exact semester-standing versus exam-scene weighting.

## 2026-06-09 - Lesson Variation Pivot

- Subject identity should dominate lesson feel.
- Teacher behavior should not remain a roughly `50/50` lesson-variation driver.
- Teachers can still be characters, narrative color, hooks, or optional arc participants.
- HSS-1 and HSS-7 should treat subject framing as the main lesson differentiation contract.

## 2026-06-09 - Relationship and Social Scope

- Relationship rewards are primarily memory-making: unique scenes, emotional payoffs, route content, and richer semester memories.
- Systemic bonuses from relationships should remain light or absent.
- Full vision: every classmate has an equally rich story arc.
- MVP scope remains constrained: one fully developed classmate arc, with remaining classmates intentionally minimal as teasers.
- Long-term full-game target: a player can meaningfully push approximately `3-5` arcs toward best outcomes in one full-game run, but cannot maximize all classmate arcs.

## 2026-06-09 - Social Media and Profile Discovery

- Classmate interests and preferences begin hidden.
- Information is uncovered through interactions or indirect discovery.
- Once discovered, information becomes permanently visible in an in-world social media profile.
- Discovered preferences unlock fair future arc progress and may unlock activity or invitation types.
- Once a classmate is known, their current location and availability are visible through the social media layer.
- Social planning remains constrained by time, travel, money, and condition rather than hidden whereabouts.

## 2026-06-09 - Player Setup and Compatibility

- Player interests and favorites are chosen directly at the start, not inferred through a quiz.
- Interests/preferences use toggle-style choices across domains such as music, film, food, and leisure.
- Academic attributes start as explicit `1-10` values assigned through point-buy.
- Interests/preferences and academic attributes remain independent at start and do not cross-boost one another.
- Arc compatibility is interest-based and personality/value-based, not a freely reshaped lifestyle build.

## 2026-06-09 - Money Loop

- Money is now a regular secondary soft constraint rather than only occasional support.
- Baseline income is weekly allowance from parents.
- Optional top-up is abstract part-time work.
- Part-time work is an emergency tool and lifestyle tradeoff, not a content-rich subplot or default grind loop.
- Spending categories include social activities, recovery/comfort, academic support, consumables, and travel convenience.
- Key school events generally should not be paywalled.

## 2026-06-09 - Place-First After-School Discovery

- After-school discovery should be driven primarily by physically going places and seeing what they offer.
- Locations should have stable identities and compact exploration with readable points of interest.
- Context-sensitive variation is allowed, but locations should not become opaque dynamic generators.

## 2026-06-09 - Scope Buckets

- MVP-confirmed: Second-Chance Student Life fantasy, academic failure floor, subject-dominant lesson feel, one full classmate arc, social media/profile scaffolding, known-classmate location visibility, upfront interests, academic point-buy, weekly allowance, abstract part-time work, compact place-first exploration.
- Full-vision: equally rich arcs for every classmate, broader run structure where `3-5` arcs can be pushed toward best outcomes, more classmates and deeper relationship content.
- Still-open: exact academic failure thresholds, exact money pressure, profile categories, number of starting interest toggles, academic point-buy budget, exam weighting, final cast names and first-arc owner.
