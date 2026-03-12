# Product Vision

## One-liner

High School Story is a cozy-leaning, lightly demanding social simulation game about living through a teenage school routine where time is limited, school attendance is central, and everyday choices shape a personal semester story.

## Product Intent

The product should deliver a readable school-life sim where:

- everyday routine is the main texture of play
- school is the backbone of the week, not optional background flavor
- relationships, academics, and self-maintenance compete for limited time
- the player builds a personal story through accumulated small decisions rather than one dominant scripted plot

## Player Promise

The game promises:

- your time matters
- who you invest in matters
- how you handle school pressure matters
- there is no single correct way to live through high school

## Target Experience

The intended feel is:

- nostalgic and grounded
- cozy-leaning rather than stressful
- lightly demanding rather than frictionless
- reflective and strategic rather than twitch-based

Pressure target:

- the player should often feel they cannot do everything they want today
- the player should rarely feel one bad day or one bad week has ruined the run
- recovery should matter as part of normal planning
- planning ahead should feel rewarding, not mandatory for basic success

## Target Players

### Primary audience

Players who nostalgically remember school years and want a systemic, relationship-driven life sim rather than an RPG or pure narrative visual novel.

### Secondary audience

Players who enjoy schedule-based social sims, relationship progression, and low-pressure strategic planning.

### Not for

The product is not primarily for players seeking:

- a full RPG structure
- a delinquent or truancy fantasy
- a heavily main-plot-driven school RPG in the Persona mold
- a full sandbox life sim in the style of The Sims

## Product Pillars

### 1. Meaningful time pressure

Time is the main scarcity. Activities have explicit durations, travel matters, and the player usually cannot fit every priority into one day.

### 2. School as the central structure

Weekday attendance is the default and expected rhythm. Lessons, timetable pressure, and semester pacing form the backbone of play.

### 3. Relationships as lived investment

Classmates should feel like people, not affinity bars. Relationship progress is shown through descriptive stages, with friendship and romance treated as distinct outcomes.

### 4. Multiple valid long-term priorities

Academics matter, but they stand beside relationships and life management instead of dominating the whole game. The player should be able to value grades, closeness, stability, or self-development without the product lying about those options.

## Current Product Shape

The currently aligned product model is:

- one playable semester as the first deliverable slice
- a 12-week semester rhythm
- a daily loop of dormitory morning, school block, afternoon freedom, and dormitory evening
- a shared lesson micro-game reused across subjects
- one fully supported lightweight classmate arc in MVP, with lighter support for the rest of the roster
- one semester exam period presented as a medium-complexity shared scene with short subject-specific accents

Long-term aspiration beyond MVP:

- the broader game vision still points toward a larger school journey beyond one semester
- exact post-MVP scale, including final class size, number of arcs, and final multi-year structure, remains pending product scoping

## Differentiators

- 15-minute time model with meaningful validation and travel pressure
- school attendance as a central system instead of optional framing
- repeated lessons as a strategic micro-loop rather than filler
- relationships surfaced through lived opportunities and descriptive states instead of pure number grind
- academic outcomes treated as one major pillar among several, not the only path that matters
- a grounded, cozy-leaning school-life sim tone with moderate pressure and soft failure

## Design-Driven Product Decisions

The following are now treated as established product-level decisions because they are already locked in game design:

- pressure target is cozy-leaning and lightly demanding
- weekday school attendance is default and central
- truancy may exist as an exception, but is not a promoted fantasy or core loop
- the morning slot is moderate: usually one larger action or two small ones
- the `21:00-22:00` dormitory window allows normal study, but it is usually less efficient because of condition
- relationships use descriptive stages
- friendship and romance are distinct
- the player may explore multiple interests, but can only have one active committed romance at a time
- grades are one of several equal long-term pillars, not the dominant pillar
- the semester exam is a shared exam-period scene with short subject-specific accents
- social opportunities should usually be surfaced in sets of `1-2`
- lesson variation comes from a roughly `50/50` split between subject and teacher
- subjects differ mainly through hidden-but-learnable reward biases
- teachers differ through strictness or tolerance and teaching style
- players should begin sensing a subject's character within `1-2` lessons
- MVP includes one extra social venue beyond base locations; the current recommended venue is `park`

## Success Criteria

The product direction is working if players can truthfully say:

- I always wanted a bit more time than I had
- school felt central instead of decorative
- lessons were worth paying attention to
- I cared who I spent time with
- grades mattered, but they did not erase other playstyles
- recovering from a rough stretch felt necessary but not hopeless
- I could play in a relaxed way without feeling punished for not optimizing every day

## Constraints And Scope Boundaries

- the product must preserve clarity and avoid spreadsheet-like overload
- routine should remain the dominant texture of play, with moderate event cadence rather than constant interruption
- the MVP should prove the semester loop, not the full final content scale
- the MVP should stay small in locations and cast, while still proving academics, social play, travel, and condition management
- product documentation should not lock unanswered full-game scale details as if they were already decided

## High-Level Product Requirements

- the game must track time in 15-minute increments and show activity duration before commitment
- the game must validate schedule-breaking actions before they start and distinguish blocked versus risky choices
- the game must structure standard weekdays around dormitory morning, school block, afternoon freedom, and dormitory evening
- the game must require return to the dormitory by `21:00` and mandatory sleep at `22:00`
- weekday school attendance must be the default expected loop
- lessons must use a shared 3-turn structure with distinct action roles
- the visible MVP condition stats must be `energy`, `stress`, `mood`, `money`, and `grades`
- relationships must be tracked per character and presented through descriptive states
- friendship and romance must be systemically distinct
- the player may explore multiple interests but may only have one active committed romance at a time
- grades must be tracked per subject
- semester performance must come from lessons, study, and the exam period together
- the exam period must be a playable shared scene rather than an automatic calculation only
- the MVP location set must support `dormitory`, `school`, `district`, `shop`, and one extra social venue
- the currently recommended MVP extra social venue is `park`

## Open Questions

- What is the intended post-MVP product scale beyond the first semester: one full year, multiple years, or a staged expansion path?
- What is the target final class and arc count after MVP proves the core loop?
- What are the commercial, release, and production constraints that should shape scope decisions?
- What final ending and epilogue structure should sit above the currently defined semester-level systems?
