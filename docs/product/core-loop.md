# Core Loop

## Overview

High School Story is built around a readable daily loop where the player manages limited time across school obligations, condition, travel, and relationships. The loop is meant to feel cozy-leaning but lightly demanding: the player should usually have a sensible next move, but not enough time to do everything.

## Core Daily Loop

1. Start the day in the dormitory at `06:00`.
2. Use a moderate morning window for preparation, light recovery, or a small social or academic action.
3. Attend the school block as the default weekday backbone.
4. Make short lesson-by-lesson and between-class decisions that affect grades, condition, and social momentum.
5. Use the afternoon and early evening for one major priority plus, usually, one smaller supporting action.
6. Return to the dormitory by `21:00`.
7. Use the final `21:00-22:00` window for recovery, prep, light social play, or valid-but-usually-weaker study.
8. Sleep at `22:00` and carry the consequences of the day into tomorrow.

## Day Structure

### Dormitory morning

- Starts at `06:00`.
- The morning slot is intentionally moderate.
- A normal morning usually fits one larger action or two small ones.
- Typical roles: wash up, breakfast, short rest, review notes, focused study, schedule prep, brief dorm interaction.
- The player should feel setup pressure, not full free-time freedom.

### School block

- School attendance is default and central on weekdays.
- Truancy is not a promoted fantasy or recommended core strategy.
- Lessons and short school interstitial windows form the backbone of weekday structure.
- School is where academics, condition management, and many small social opportunities naturally intersect.

### Afternoon freedom

- This is the main agency window.
- A normal afternoon should usually fit one major goal and one small supporting action, not all priorities.
- Typical competing goals: academic catch-up, relationship progress, work, recovery, venue use, and story advancement.

### Dormitory evening

- The player must return by `21:00`.
- The final hour is a low-intensity closure window, not dead time.
- Typical roles: evening wind-down, short rest, light review, prepare for tomorrow, dorm social beat, quiet leisure, focused study.
- Normal study is allowed from `21:00-22:00`, but usually runs at worse efficiency because of accumulated condition cost.

## Time And Validation Model

- The base unit of time is `15 minutes`.
- Current time is always visible.
- Activities show duration before confirmation.
- Travel shows destination, duration, and expected arrival time.
- The game validates actions before they start.
- Impossible actions are blocked.
- Risky actions are allowed with a warning and readable likely consequences.

The validation model should usually protect the player from accidental self-sabotage while preserving agency for understandable risky choices.

## Weekly And Semester Rhythm

### Weekdays

- Routine is the default texture.
- Most meaningful pressure comes from timetable structure, condition, and limited free time.
- Social opportunities during weekdays should usually appear as small ambient signals or `1` meaningful active choice.

### Weekends

- Weekends should feel structurally different, not just longer.
- They should emphasize longer hangouts, better recovery, stronger story beats, and larger catch-up blocks.
- Weekend timing is the best home for milestone social scenes and larger academic rescue sessions.

### Semester rhythm

- MVP uses one `12-week` semester.
- The semester should progress through settling in, pattern formation, rising pressure, commitment window, exam and resolution.
- Routine should remain dominant, with moderate event cadence and a few visible peaks.

## Lesson Loop

### Shared structure

- A standard lesson lasts `3` turns.
- Each turn represents `15 minutes`.
- The player chooses one action per turn.
- The result depends on condition, subject, teacher, prior lesson actions, and occasional context events.

### Lesson actions

- `attentive listening` - safest academic baseline
- `talking` - social opportunism with catch risk
- `reading` - targeted academic focus
- `browsing` - low-effort relief with academic cost
- `napping` - short-term survival tool

### Variation model

- Lesson variation comes from a roughly `50/50` split between subject and teacher.
- Subjects differ mainly through hidden-but-learnable reward biases.
- Teachers differ through strictness or tolerance and teaching style.
- The system should be readable enough that players start sensing subject character within `1-2` lessons.

## Social Loop

### Relationship model

- Relationships are tracked per known classmate.
- The player-facing layer uses descriptive stages rather than raw numbers.
- Confirmed baseline stages are `stranger`, `acquaintance`, `comfortable`, `close`, and `very close`.
- Friendship and romance are distinct outcomes.
- The player may explore multiple interests, but can only have one active committed romance at a time.

### Opportunity surfacing

- Social opportunities should usually be surfaced in sets of `1-2`.
- Weekdays lean toward ambient signals and medium opportunities.
- After school and weekends carry the strongest planned hangouts and milestone beats.
- Missed opportunities should often feel like life tradeoffs, not hard punishment.

## Academic Loop

- Grades are tracked per subject.
- Current MVP subjects are `math`, `history`, `literature`, `science`, `art`, and `biology`.
- Academic standing comes from lesson performance, targeted study, broad skills, and the semester exam.
- Grades are one major pillar of long-term outcome, but not the dominant one.
- The player should be able to recover from academic weakness through intentional effort.

### Semester exam

- Each semester ends with an exam period.
- The exam is a medium-complexity shared scene with short subject-specific accents.
- The scene uses `3` phases and a shared style-choice structure.
- Semester preparation is the main driver of result.
- Day-of condition, especially energy and stress, meaningfully affects execution.

## Location Loop

The current MVP location set is:

- `dormitory` - recovery and preparation base
- `school` - mandatory academic and social backbone
- `district` - connective movement hub
- `shop` - utility spending and small support actions
- `park` - extra social venue for hangouts, recovery, and low-pressure scenes

The addition of `park` is important because it proves that social life exists outside school and the dormitory.

## Condition And Recovery Philosophy

- `energy` is the main performance limiter.
- `stress` is the main risk amplifier.
- `mood` is the main quality-of-life and social-efficiency stat.
- `money` opens selected options without replacing time as the main scarcity.
- Poor condition should create friction, weaker outcomes, and increased risk.
- Poor condition should not normally create hard fail states or erase earned progress.

## What Is Settled Versus Pending

### Settled in current design

- daily rhythm structure
- moderate morning slot
- late-evening study remaining allowed but usually weaker
- school attendance as central default
- 1-2 social opportunities at a time
- descriptive relationship stages
- distinct friendship and romance structure
- shared exam-period scene with short subject accents
- subject and teacher lesson variation framework
- `park` as the current recommended extra MVP venue

### Pending game design or product follow-up

- exact numeric tuning for condition thresholds, lesson risk, and study efficiency
- final long-term product scale beyond the first semester
- detailed post-MVP content plan for larger cast and broader venue set

## Open Questions

- How should exact player-facing UI communicate hidden subject reward biases without over-explaining them?
- What final weighting should be used between semester standing and exam execution?
- What post-MVP expansion path best fits the proven semester loop?
