# MVP Scope

## Overview

The MVP is a one-semester proof of the real game. Its job is not to simulate the full long-term vision yet. Its job is to prove that the daily rhythm, school backbone, relationship surfacing, academic loop, and condition management already produce the intended High School Story feel.

## MVP Goal

The MVP should prove four things:

1. Daily time pressure creates real choices inside a cozy-leaning, lightly demanding routine.
2. The classroom loop is interesting enough to repeat across subjects.
3. One classmate arc can be meaningfully supported by the systemic layer.
4. Bad condition changes play without collapsing the run.

## In Scope

### Playable slice

- one playable semester
- `12` in-game weeks
- weekdays and weekends
- full daily rhythm: dormitory morning, school block, afternoon freedom, dormitory evening
- one semester exam period and result reveal

### Core systems

- movement and place-based interaction
- time progression in `15-minute` increments
- travel with meaningful time cost
- action validation against school and return-time boundaries
- dialogue interactions
- condition system built around `energy`, `stress`, `mood`, `money`, and grades
- broad skills: `learning`, `social`, and `physical`
- relationship system with descriptive stages
- friendship and romance as distinct outcomes
- one-active-committed-romance rule

### School and academics

- weekday school attendance as default structure
- shared lesson system with `3` turns per lesson
- lesson action set: `attentive listening`, `talking`, `reading`, `browsing`, `napping`
- per-subject grades for `math`, `history`, `literature`, `science`, `art`, and `biology`
- lesson variation driven by subject and teacher
- targeted study outside class
- semester exam scene using the shared 3-phase structure with short subject-specific accents

### Social and content layer

- roster of `5` classmates
- one lightweight fully supported arc with approximately `10` steps across the semester
- lighter relationship support for the remaining classmates
- social opportunities surfaced in readable sets of `1-2`
- weekday ambient and active social moments plus stronger weekend opportunities

### Locations

- `dormitory`
- `school`
- `district`
- `shop`
- `park`

`park` is the current recommended and aligned extra MVP venue because it proves after-school social life, recovery, and low-pressure relationship scenes without adding heavy economy scope.

## Product Outcomes The MVP Must Validate

- school feels central rather than decorative
- lessons are more than attendance filler
- the player usually wants more time than they have
- relationships feel worth scheduling around
- grades matter but do not dominate the entire experience
- poor condition creates understandable inefficiency instead of game-over spirals
- weekends feel qualitatively different from weekdays

## Out Of Scope

- full multi-year progression
- final post-school ending structure
- full cast-scale story coverage
- large venue roster beyond the defined MVP set
- heavy itemization or inventory complexity in the shop
- paid travel costs or bus-route simulation depth
- deep delinquent or truancy playstyle support
- separate bespoke minigames for each subject
- separate full exam scenes per subject
- hard fail states from condition or weak grades

## Acceptance Criteria

### Daily rhythm and structure

- The player starts standard weekdays in the dormitory at `06:00`.
- A normal morning supports one larger action or two small actions before departure pressure becomes meaningful.
- The game prevents starting actions that would make timely school attendance impossible unless an explicit rule-break path exists.
- The player must return to the dormitory by `21:00`.
- The `21:00-22:00` window supports dormitory actions including valid normal study.
- Sleep happens automatically at `22:00`.

### Lessons and academics

- Standard lessons play as `3` decision turns with distinct action roles.
- At least two different classes feel observably different within the shared lesson system.
- That variation comes from both subject reward bias and teacher profile, not from entirely separate minigames.
- Players can begin sensing a subject's character within `1-2` lessons.
- Per-subject grade standing is visible and updates from lessons, study, and exam results.
- The semester exam is playable as one shared medium-complexity scene with short subject-specific accents.
- Exam results are delivered after a short in-world delay with both an emotional summary and per-subject breakdown.

### Relationships and social surfacing

- The MVP includes `5` classmates in the social layer.
- Relationship progress is shown through descriptive stages rather than raw numbers.
- Friendship and romance are treated as distinct outcomes.
- The player can explore interest with multiple classmates before commitment.
- The player can only have one active committed romance at a time.
- The game usually surfaces social opportunities in sets of `1-2`, not a crowded list.
- The player can complete one lightweight classmate arc with roughly `10` steps across the semester.

### Condition, recovery, and pacing

- `energy`, `stress`, and `mood` all have distinct gameplay meaning.
- Poor condition reduces effectiveness and increases risk without erasing earned relationship or skill progress.
- Recovery is part of normal play and does not usually require losing an entire week.
- Evening study is allowed, but usually performs worse than earlier study because of accumulated condition.
- Weekends provide stronger opportunities for recovery, longer hangouts, and academic catch-up.

### Locations and free-time play

- The player can move between `dormitory`, `school`, `district`, `shop`, and `park`.
- Each MVP location supports a distinct gameplay purpose.
- `park` meaningfully supports social and recovery play outside school and the dormitory.
- Travel time affects what can still be done before the next schedule boundary.

### Overall feel

- The combined experience is sufficient to judge whether the game already feels like a cozy-leaning, lightly demanding school-life sim.
- Testers can reasonably report that they cared about both routine planning and at least one relationship.

## Open Questions And Pending Design

### Pending tuning, not blocked by scope alignment

- Exact formulas for lesson catch risk, condition thresholds, and action efficiency.
- Exact weighting between semester standing and exam-scene execution.
- Exact numeric values for teacher strictness, subject bias strength, and diminishing returns.

### Pending broader product decisions

- What the post-MVP expansion path is after the first semester is proven.
- What final cast size and arc density the full product should target.
- Which additional venues, if any, should be the next expansion after `park`.
