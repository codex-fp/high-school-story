---
title: High School Story Development Epics
created: 2026-06-09
updated: 2026-06-09
task_id: HSS-15
updated_by: HSS-16
---

# High School Story - Development Epics

This file expands the GDD's development epic summary into implementation-ready planning structure. It preserves current active tasks `HSS-1` through `HSS-8`, folds in the `HSS-16` brainstorming pivots, and adds future epic placeholders where the GDD identifies required MVP scope not yet represented by those tasks.

## Epic 1: MVP Design Finalization

### Goal

Finalize the remaining design contracts needed before implementation locks gameplay formulas, lesson content, social cast structure, profile discovery, academic failure thresholds, money pressure, and relationship pacing.

### Design Value

This epic prevents implementation from inventing hidden product rules. It turns current open design areas into explicit contracts for academics, balance, and relationships.

### Related Tasks

- `HSS-1`: Finalize MVP subject framing and lesson assumptions.
- `HSS-2`: Create MVP balancing checklist.
- `HSS-3`: Define first classmate arc constraints and cast roles.
- `HSS-16`: Refine GDD through guided game design brainstorming.

### High-Level Stories

1. As a designer, I need all MVP subjects to have fictional framing so lesson content can be written consistently.
2. As a designer, I need at least two subjects to have clearly different reward or risk biases so the lesson loop can prove variety.
3. As a designer, I need subject-dominant lesson variation rules at MVP depth so subjects carry lesson feel while teachers remain narrative color or optional arc material.
4. As a designer, I need a balancing checklist covering time, travel, recovery, lessons, study, relationships, money, part-time work, stress, academic failure, and exam weighting so early tuning stays adjustable.
5. As a designer, I need normal weekday, weekend, and weak-condition expectations so playtests can evaluate the target feel.
6. As a narrative designer, I need five classmates with names, broad roles, and one selected first-arc owner so relationship implementation has clear scope.
7. As a narrative designer, I need first-arc pacing, unlock, failure, recovery, friendship, and romance constraints so the first social arc fits the semester.
8. As a designer, I need MVP profile discovery categories so social media can fairly reveal interests, preferences, current known-classmate locations, and availability.

### Acceptance Signals

- `docs/game-design.md` or its successor contract names subject framing, subject-dominant lesson variation, and player-facing lesson wording.
- A balancing checklist exists and avoids locking exact formulas too early.
- Five classmates and first supported arc constraints are documented.
- Academic failure rules distinguish grade collapse from condition friction.
- Social media/profile scope is documented at MVP depth.

## Epic 2: Calendar and Day Structure

### Goal

Represent semester progression, weekday/weekend state, current time, day phase, sleep, and day rollover.

### Design Value

This epic creates the backbone for every time-bound system in the MVP.

### Related Tasks

- `HSS-4`: Establish calendar time and day phase model.

### High-Level Stories

1. As a player, I need the game to track week, day, weekday/weekend, current time, and day phase so daily planning is understandable.
2. As a player, I need time to advance in `15`-minute increments so action costs are consistent.
3. As a player, I need standard weekdays to start in the dormitory at `06:00` so routine has a stable anchor.
4. As a player, I need sleep and day rollover rules so consequences carry into tomorrow.
5. As a player, I need academic structure visible from the start of the semester so lessons and exams can be planned around.
6. As a player, I need school events visible at the start of each month so institutional disruptions are readable.
7. As a tester, I need time state visible or inspectable so day-flow bugs can be verified.

### Acceptance Signals

- A standard weekday start state exists.
- Time increments are consistent.
- Day phase and sleep rollover can be observed in testing.

## Epic 3: First Playable Weekday

### Goal

Build the first coherent playable day rhythm from dormitory morning through school, afternoon, evening, return, and sleep.

### Design Value

This epic proves the core daily loop before complex content is added.

### Related Tasks

- `HSS-5`: Build first playable weekday skeleton.

### High-Level Stories

1. As a player, I need to start in the dormitory at `06:00` so the day begins from a familiar base.
2. As a player, I need at least one meaningful morning action before school so pre-school planning matters.
3. As a player, I need a clear transition into the school block so the weekday backbone is readable.
4. As a player, I need afternoon and evening free time after school so I can choose priorities.
5. As a player, I need the return-to-dorm by `21:00` rule to be enforced so curfew shapes planning.
6. As a player, I need automatic sleep at `22:00` so each day resolves cleanly.

### Acceptance Signals

- The weekday rhythm can be played end to end with placeholder actions if needed.
- Curfew and sleep are visible enough for testers to understand.

## Epic 4: Location Travel and Validation

### Goal

Add MVP locations, compact place-first exploration, travel durations, destination preview, expected arrival time, and pre-action validation.

### Design Value

This epic makes time pressure spatial and protects the player from accidental schedule violations.

### Related Tasks

- `HSS-6`: Add travel network and action validation for MVP locations.
- `HSS-16`: Place-first after-school discovery and stable location identities.

### High-Level Stories

1. As a player, I need `dormitory`, `school`, `district`, `shop`, and `park` to exist as valid gameplay locations so the MVP loop has spatial choices.
2. As a player, I need travel to show destination, duration, and expected arrival time so I can plan.
3. As a player, I need impossible actions and travel to be blocked before confirmation so mistakes are prevented.
4. As a player, I need risky actions to show warnings where allowed so deliberate risk remains possible.
5. As a player, I need school attendance and return-to-dorm boundaries enforced so routine constraints matter.
6. As a player, I need after-school places to have stable identities and compact points of interest so discovery feels spatial rather than menu-driven.

### Acceptance Signals

- Travel cost is readable before commitment.
- Impossible choices are blocked.
- Risk warnings distinguish danger from impossibility.
- Locations are compact enough to explore without becoming navigation-heavy.
- Players can learn what each location is generally good for.

## Epic 5: Lessons and Academic Standing

### Goal

Implement the shared `3`-turn lesson loop, subject-dominant variation, academic danger visibility, and per-subject grade standing.

### Design Value

This epic proves academics as a repeated strategic scene rather than a set of bespoke minigames.

### Related Tasks

- `HSS-1`: Finalize MVP subject framing and lesson assumptions.
- `HSS-7`: Implement shared 3-turn lesson loop.
- `HSS-16`: Subject identity should define lesson vibe and exams should confirm the semester.

### High-Level Stories

1. As a player, I need each standard lesson to have `3` turns of `15` minutes each so lessons match the time model.
2. As a player, I need actions for `attentive listening`, `talking`, `reading`, `browsing`, and `napping` so lessons create academic, social, relief, and survival tradeoffs.
3. As a player, I need lesson actions to affect grades, condition, or social opportunity in distinct ways so choices matter.
4. As a player, I need at least two subjects to feel observably different so the shared loop has texture.
5. As a player, I need lesson results to feed per-subject grade standing so academic consequences persist.
6. As a player, I need grade danger to be readable so semester failure feels fair if I fully neglect school.
7. As a player, I need exams to mostly confirm semester-long academic trajectory rather than rescue a weak semester.

### Acceptance Signals

- The player can complete a full standard lesson.
- Two subjects produce observably different reward or risk patterns.
- Grade standing changes from lesson outcomes.
- Academic failure risk is visible before it becomes terminal.
- Teacher personality does not overpower subject identity in lesson feel.

## Epic 6: Condition, Money, and Recovery

### Goal

Add energy, stress, mood, money, weekly allowance, abstract part-time work, spending categories, and recovery interactions that create planning tension without condition-based hard fail states.

### Design Value

This epic gives routine decisions emotional and practical texture.

### Related Tasks

- `HSS-2`: Create MVP balancing checklist.
- `HSS-8`: Add core condition and recovery loop.
- `HSS-16`: Money is a regular soft constraint and part-time work is an abstract emergency tool.

### High-Level Stories

1. As a player, I need energy, stress, mood, and money in game state so my condition can shape outcomes.
2. As a player, I need lessons, study, social actions, travel, and recovery to affect condition so the day feels connected.
3. As a player, I need poor condition to weaken outcomes or increase risk without hard-failing the run so recovery remains viable.
4. As a player, I need dormitory and park recovery options to feel distinct so location choices matter.
5. As a player, I need weekly allowance as baseline income so money is regular but secondary.
6. As a player, I need abstract part-time work as an emergency top-up so low money can be addressed at a time and condition cost.
7. As a player, I need spending on social activities, comfort, academic support, consumables, and travel convenience so money matters across the semester.
8. As a tester, I need condition and money visible or inspectable so weak-condition and low-cash scenarios can be evaluated.

### Acceptance Signals

- Weak condition affects outcomes in visible ways.
- Recovery is useful but not free optimization.
- Dormitory and park recovery differ in role.
- Money matters regularly without turning work into a default grind.
- Key school events are not paywalled.

## Epic 7: Relationships, Profiles, and First Arc

### Goal

Implement the MVP social layer with five classmates, descriptive relationship stages, social media profiles, discovered preferences, known-classmate location visibility, one fully supported lightweight arc, and minimal teaser support for the rest.

### Design Value

This epic proves that relationships can compete with time, academics, and recovery while remaining readable and emotionally grounded.

### Related Tasks

- `HSS-3`: Define first classmate arc constraints and cast roles.
- `HSS-16`: Discoverable profiles, interest-based compatibility, and known-classmate location visibility.

### High-Level Stories

1. As a player, I need five MVP classmates with distinct social roles so the social layer has texture.
2. As a player, I need descriptive relationship stages so progress is understandable without raw numbers.
3. As a player, I need one classmate arc of roughly `10` steps so a first relationship route can be completed in the semester.
4. As a player, I need friendship and romance expectations to be distinct so romance does not erase friendship play.
5. As a player, I need only one active committed romance at a time so commitment has meaning.
6. As a player, I need lighter interactions with remaining classmates so the wider cast feels present without full arc scope.
7. As a player, I need classmate interests and preferences to start hidden and become visible after discovery so social progress rewards curiosity.
8. As a player, I need known classmates' current locations and availability visible through social media so relationship pursuit is fair.
9. As a player, I need interest compatibility to matter more than lifestyle build optimization so arcs feel personal rather than mechanical.

### Acceptance Signals

- Five classmates are documented and visible to implementation.
- One first-arc owner is selected.
- Arc pacing, unlocks, recovery, friendship, and romance constraints are defined.
- Social media profiles expose discovered preferences and known-classmate locations.
- Full vision and MVP social scope are explicitly separated.

## Epic 8: Semester Exam and Outcome Reveal

### Goal

Add the semester exam period, delayed result reveal, academic failure handling, and semester outcome summary.

### Design Value

This epic gives the MVP a complete semester arc and visible academic payoff.

### Related Tasks

- Future task required.
- `HSS-16`: Academic failure can end the run and exams confirm more than rescue.

### High-Level Stories

1. As a player, I need a semester exam period after preparation so academic choices build toward a payoff.
2. As a player, I need the exam scene to use `3` phases and shared style choices so it is more meaningful than a passive result roll.
3. As a player, I need preparation, energy, and stress to affect exam execution so condition and planning matter.
4. As a player, I need results delivered after a short in-world delay so the reveal feels grounded.
5. As a player, I need emotional summary and per-subject breakdown so outcomes are readable.
6. As a player, I need academic failure to provide a clear summary and rollback options such as `3` days, `2` weeks, or `1` month earlier.

### Acceptance Signals

- Exam period can be reached from the calendar.
- Exam choices and semester preparation affect results.
- Results reveal includes emotional and per-subject feedback.
- A weak semester cannot be fully rescued by one exam scene.

## Epic 9: Player Setup and Starting Identity

### Goal

Add upfront character identity choices through interest/preference toggles and academic point-buy attributes.

### Design Value

This epic makes Second-Chance Student Life actionable before the first day. The player character starts with explicit identity, compatibility hooks, and academic strengths instead of becoming only a generic optimization vessel.

### Related Tasks

- Future task required.
- `HSS-16`: Player interests are chosen up front and academic attributes use `1-10` point-buy values.

### High-Level Stories

1. As a player, I need to select interests and favorites directly so my character has a clear identity from day one.
2. As a player, I need interest toggles across cultural domains such as music, film, food, and leisure so classmate compatibility can be legible.
3. As a player, I need academic attributes on a `1-10` scale so school outcomes have a starting baseline.
4. As a player, I need academic attributes assigned through point-buy so starting builds differ without fixed archetypes.
5. As a player, I need interests and academic attributes to remain independent at start so social compatibility does not silently boost grades.

### Acceptance Signals

- Character setup exposes direct interest toggles.
- Academic attributes use numeric `1-10` values and a point-buy budget.
- The game preserves these choices for social compatibility and academic outcome calculations.

## Traceability Matrix

| Design Pillar | Supporting Epics |
|---|---|
| Second-Chance Time Pressure | Epic 2, Epic 3, Epic 4, Epic 5, Epic 6, Epic 9 |
| Relationships As Memory-Making | Epic 1, Epic 3, Epic 6, Epic 7, Epic 9 |
| School As Opportunity Engine | Epic 1, Epic 2, Epic 5, Epic 8 |
| Place-First Personal Routine | Epic 2, Epic 3, Epic 4, Epic 6, Epic 7 |

## Open Epic Gaps

- A future task is needed for Epic 8 because `HSS-1` through `HSS-8` do not yet cover semester exam implementation.
- A future task is needed for Epic 9 because `HSS-1` through `HSS-8` do not cover player setup, interest toggles, or academic point-buy attributes.
- A future task may be needed for social media/profile UI once discovered preferences, known-classmate locations, availability, and relationship states need player-facing presentation beyond debug inspection.
- A future task may be needed for intro-to-freeform handoff if `RoadToLakeview` needs production integration beyond preview content.
