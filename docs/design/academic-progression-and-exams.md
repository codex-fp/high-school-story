# Academic Progression And Exams

## Design Goal

The academic system should make school performance feel meaningful, but not tyrannical.

For High School Story, grades should be one of several major pillars of the player's long-term outcome, alongside relationships and general life management.

The system should create these feelings:

- classes matter beyond attendance
- exams feel important and a little tense
- steady effort is rewarded more than last-minute perfection
- players who do not optimize academics can still have a valid, satisfying playthrough

## Assumptions

- grades are tracked per subject
- lesson engagement and broad skills affect academic results
- each semester ends with an exam
- the semester exam is a mixed model: prior performance matters, but the exam is also its own playable scene
- academic success is one of several equally important long-term pillars, not the dominant one

## Proposed System

Academic progression has three layers.

| Layer | Purpose | Time scale |
|---|---|---|
| Lesson performance | captures day-to-day class behavior and learning quality | immediate |
| Subject standing | represents ongoing performance in each subject | weekly to semester |
| Exam result | delivers a visible semester climax and meaningful checkpoint | semester |

This lets school life feel continuous instead of reducing everything to one big test.

## Core Player Question

How much of my limited time and energy do I want to invest in staying academically strong, and where do I most need to catch up?

## Subject Model

Each subject should have its own standing because this creates specialization and legible tradeoffs.

MVP subjects already identified:

- math
- history
- literature
- science
- art
- biology

Subject standing should move from repeated academic inputs rather than random swings.

## Academic Inputs

Each subject standing should be influenced by four inputs.

### 1. Lesson participation

This is the most regular source of academic progress.

- attentive lesson play gives stable contribution
- stronger performance in the relevant lesson improves subject standing more
- poor condition reduces conversion efficiency

### 2. Self-directed study

Study is the main catch-up or specialization tool.

- study should target chosen subjects rather than all subjects equally
- study is more flexible than class time but costs valuable free time
- low energy and high stress should create diminishing returns on long cram sessions

### 3. Skills

Broad skills should influence academic efficiency without replacing subject identity.

- `learning` improves conversion from lessons and study into subject progress
- other skills may influence selected subjects indirectly only when justified

### 4. Exam performance

Exams should matter enough to feel important, but should not fully overwrite the semester.

- a good exam can improve the final semester result
- a weak exam can drag the final result down
- semester preparation should matter more than one lucky or unlucky scene

## Grade Philosophy

Grades should behave like steady academic reputation, not volatile mood bars.

Recommended design rules:

- grades move slower than condition stats
- one bad lesson should not wreck a subject
- repeated neglect should be visible over time
- recovery from academic weakness should be possible, but take intentional effort

## Semester Structure

Each semester should create an academic arc:

1. early adaptation phase
2. mid-semester pattern formation
3. late-semester pressure and catch-up decisions
4. exam week resolution

This structure is important because it creates pacing. The player should not feel the same academic pressure every week.

## Exam Design

The exam should be a capstone scene, not just an automatic calculation.

Recommended exam structure:

- one semester exam period is represented as a shared scene with short subject-specific accents
- the exam scene references prior preparation and current condition
- the final exam result combines semester standing with exam-scene performance
- detailed scene structure is documented in `docs/design/semester-exam-scene-structure.md`

## Recommended Grade Weighting Model

Because you selected academics as one of several equal life pillars, use this general weighting philosophy:

- semester standing is the majority contributor
- exam performance is a strong but minority contributor

Design intent:

- consistent school engagement should be more valuable than one panic cram
- a clutch exam can help, but not fully erase a semester of neglect
- a weak exam should hurt, but not completely invalidate months of solid work

## Subject Standing Bands

For player readability, subject performance should be communicated in clear bands or grade labels rather than hidden decimal values.

Possible communication styles:

- literal school grades
- descriptive performance bands
- both together if the UI benefits from it

Recommended design direction:

- show recognizable grade-style outputs for subjects
- supplement them with plain-language hints like `stable`, `slipping`, `improving`

This helps players plan without needing spreadsheets.

## Catch-Up Model

Players need a way to recover academically without the system feeling hopeless.

Recommended catch-up rules:

- weak subjects should respond well to focused study over time
- catch-up is easier when the player starts before the very end of the semester
- late panic study should help, but with reduced efficiency
- weekends should be the main opportunity for bigger academic recovery blocks

This supports the lightly demanding target: mistakes matter, but are still repairable.

## Academic Pressure Curve

To fit the intended tone, academic pressure should be moderate and predictable.

Recommended curve:

- early semester: light pressure, room to learn systems and build habits
- mid semester: visible consequences of neglect begin to appear
- exam lead-up: pressure increases, forcing prioritization
- after exams: emotional release and reset before the next arc

## Interaction With Other Systems

### Time

- studying directly competes with relationships, work, and recovery
- timetable structure ensures academics are always present in weekly life

### Condition stats

- low energy weakens learning efficiency
- high stress makes long study blocks less effective and exam scenes riskier
- good mood slightly improves willingness to engage and sustained effort

### Relationships

- some classmates may support studying, tutoring, or subject-specific scenes
- academic neglect may close off some school-confidence outcomes but should not erase social value

### Endings

- academic outcomes should shape future opportunities and self-image
- they should stand beside, not above, relationships and overall life balance

## MVP Recommendation

For the first playable semester:

- keep all subjects present in the schedule and grade display
- make lesson engagement and targeted study the main sources of subject progress
- implement one clear exam-period scene structure with light subject accents and reusable decision logic
- ensure the player can visibly rescue at least one slipping subject before the semester ends

This validates whether academics feel legible and meaningful without requiring full long-term content scale.

## Balancing Levers

- lesson contribution to subject standing
- study efficiency by duration and condition
- `learning` skill conversion bonus
- exam weight relative to semester standing
- rate of passive decline from neglect if any is used
- semester length and timing of exam warnings
- strength of catch-up bonuses for focused study

## Risks And Edge Cases

- if exams matter too little, they lose emotional significance
- if exams matter too much, the game betrays the promise of multiple valid playstyles
- if grades rise too easily, academics stop competing for time
- if recovery is too hard, weak students feel doomed too early
- if all subjects feel mechanically identical, per-subject grades lose value

## Recommended Next Step

Next, define the activity roster and location purpose map so free-time choices across the dorm, school, district, shop, and early venues have clear gameplay roles.
