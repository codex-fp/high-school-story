# Game Design Contract

## Player Promise

High School Story should deliver a readable school-life simulation where everyday
routine is the main texture of play. School is the backbone of the week, and
relationships, academics, travel, and self-maintenance compete for limited time.

The player promise:

- Your time matters.
- Who you invest in matters.
- How you handle school pressure matters.
- There is no single correct way to live through high school.

## Target Experience

The intended feel is nostalgic, grounded, cozy-leaning rather than stressful,
lightly demanding rather than frictionless, and reflective rather than
twitch-based.

The player should often feel they cannot do everything they want today. The
player should rarely feel one bad day or one bad week has ruined the run.
Recovery should matter as normal planning.

## MVP Scope

MVP includes:

- One `12`-week semester.
- Weekdays and weekends.
- Dormitory morning, school block, afternoon freedom, dormitory evening, and
  sleep.
- Time progression in `15-minute` increments.
- Travel with meaningful time cost.
- Action validation against school and return-time boundaries.
- Dialogue interactions.
- Condition stats: `energy`, `stress`, `mood`, `money`, and grades.
- Broad skills: `learning`, `social`, and `physical`.
- Relationships with descriptive stages.
- Distinct friendship and romance outcomes.
- One active committed romance at a time.
- Per-subject grades for `math`, `history`, `literature`, `science`, `art`, and
  `biology`.
- One playable semester exam period and result reveal.
- Five classmates in the social layer.
- One lightweight fully supported classmate arc with about `10` steps.
- Lighter relationship support for the remaining classmates.
- Locations: `dormitory`, `school`, `district`, `shop`, and `park`.

MVP excludes:

- Full multi-year progression.
- Final post-school ending structure.
- Full cast-scale story coverage.
- Large venue roster beyond the MVP set.
- Heavy itemization or inventory complexity.
- Deep delinquent or truancy playstyle support.
- Separate bespoke minigames for each subject.
- Hard fail states from condition or weak grades.

## Core Daily Loop

1. Start the day in the dormitory at `06:00`.
2. Use the morning for preparation, recovery, a small social action, or a small
   academic action.
3. Attend school as the default weekday backbone.
4. Make lesson-by-lesson and between-class decisions affecting grades, condition,
   and social momentum.
5. Use afternoon and early evening for one major priority plus usually one small
   supporting action.
6. Return to the dormitory by `21:00`.
7. Use `21:00-22:00` for recovery, prep, light social play, or weaker study.
8. Sleep at `22:00` and carry consequences into tomorrow.

## Time And Validation

- Base time unit is `15 minutes`.
- Current time is always visible.
- Activities show duration before confirmation.
- Travel shows destination, duration, and expected arrival time.
- The game validates actions before they start.
- Impossible actions are blocked.
- Risky actions are allowed only with a warning and readable likely consequences.

The validation model should prevent accidental self-sabotage while preserving
agency for understandable risky choices.

## Lessons And Academics

Standard lessons use a shared `3`-turn structure. Each turn represents `15`
minutes, and the player chooses one action per turn.

Lesson actions:

- `attentive listening` - safest academic baseline.
- `talking` - social opportunism with catch risk.
- `reading` - targeted academic focus.
- `browsing` - low-effort relief with academic cost.
- `napping` - short-term survival tool.

Lesson variation comes from a roughly `50/50` split between subject and teacher.
Subjects differ through hidden-but-learnable reward biases. Teachers differ
through strictness, tolerance, and teaching style. Players should begin sensing a
subject's character within `1-2` lessons.

Grades are tracked per subject. Academic standing comes from lessons, targeted
study, broad skills, and the semester exam. Grades are a major pillar, not the
dominant one.

## Semester Exam

Each semester ends with an exam period. The exam is a medium-complexity shared
scene with short subject-specific accents.

The exam scene uses `3` phases and a shared style-choice structure. Semester
preparation is the main driver of results. Day-of condition, especially energy
and stress, meaningfully affects execution.

Results are delivered after a short in-world delay with an emotional summary and
per-subject breakdown.

## Relationships

Relationships are tracked per known classmate. The player-facing layer uses
descriptive stages rather than raw numbers.

Baseline stages:

- `stranger`.
- `acquaintance`.
- `comfortable`.
- `close`.
- `very close`.

Friendship and romance are distinct outcomes. The player may explore interest
with multiple classmates before commitment, but can only have one active
committed romance at a time.

Social opportunities should usually be surfaced in sets of `1-2`. Missed
opportunities should feel like life tradeoffs, not hard punishment.

## Condition And Recovery

- `energy` is the main performance limiter.
- `stress` is the main risk amplifier.
- `mood` is the main quality-of-life and social-efficiency stat.
- `money` opens selected options without replacing time as the main scarcity.
- Poor condition creates friction, weaker outcomes, and increased risk.
- Poor condition should not normally create hard fail states or erase earned
  progress.

Weekends should feel structurally different from weekdays. They emphasize longer
hangouts, better recovery, stronger story beats, and larger catch-up blocks.

## Location Roles

- `dormitory` - recovery and preparation base.
- `school` - mandatory academic and social backbone.
- `district` - connective movement hub.
- `shop` - utility spending and small support actions.
- `park` - social venue for hangouts, recovery, and low-pressure scenes.

`park` is the aligned MVP extra venue because it proves after-school social life,
recovery, and low-pressure relationship scenes without heavy economy scope.

## MVP Acceptance Criteria

- Standard weekdays start in the dormitory at `06:00`.
- A normal morning supports one larger action or two small actions before
  departure pressure becomes meaningful.
- The game prevents starting actions that would make timely school attendance
  impossible unless an explicit rule-break path exists.
- The player must return to the dormitory by `21:00`.
- Sleep happens automatically at `22:00`.
- Standard lessons play as `3` decision turns with distinct action roles.
- At least two classes feel observably different within the shared lesson system.
- Per-subject grade standing is visible and updates from lessons, study, and
  exam results.
- The MVP includes `5` classmates in the social layer.
- Relationship progress is shown through descriptive stages rather than raw
  numbers.
- The player can complete one lightweight classmate arc with roughly `10` steps.
- Poor condition reduces effectiveness and increases risk without erasing earned
  relationship or skill progress.
- The player can move between `dormitory`, `school`, `district`, `shop`, and
  `park`.
- Testers can reasonably report that they cared about routine planning and at
  least one relationship.

## Open Design Questions

- What is the post-MVP expansion path after the first semester is proven?
- What final class size and relationship-content density should the full product
  target?
- What exact formulas define lesson risk, condition thresholds, recovery
  efficiency, and study efficiency?
- What final weighting should be used between semester standing and exam-scene
  execution?
- How should UI communicate hidden subject reward biases without over-explaining
  them?
- Should preference tags affect school subjects, and should they affect stress,
  mood, or other outcomes?
- Should the game use formal recurring teacher archetypes beyond the MVP?
