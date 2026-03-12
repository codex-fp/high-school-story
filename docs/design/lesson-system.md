# Lesson System

## Design Goal

Lessons should be a repeated strategic micro-game that connects academics, condition management, and social opportunity.

They must feel more interesting than simply clicking through attendance, while remaining cheap enough to reuse across subjects.

## Assumptions

- a standard lesson lasts 3 turns
- each turn represents 15 minutes
- the player usually attends lessons on weekdays
- subjects share a common lesson framework, but should not feel identical

## Proposed System

Each lesson is a 3-turn decision sequence built around choosing the best use of limited focus under current conditions.

Every turn, the player chooses one classroom action. The result depends on:

- current energy, stress, and mood
- current classroom situation
- previous actions in the same lesson
- occasional lesson context events

## Core Player Question

The lesson system should repeatedly ask:

What is the smartest thing to do in class right now, given my condition and priorities?

## Shared Lesson Resources

The lesson layer should care about four values:

- `lesson attention` - how prepared the player is to benefit academically right now
- `classroom attention` - how much off-task behavior is likely to attract notice right now
- `social opening` - whether peer interaction is likely to create relationship value this turn
- `fatigue pressure` - how likely the player is to underperform, zone out, or seek recovery

These values do not all need to be fully visible as numbers. They can partly exist behind the scenes.

## Action Set And Roles

Each action must have a unique purpose.

### Attentive listening

Primary role:

- safest academic action

Typical effects:

- good grade gain
- low social value
- low catch risk
- modest stress increase

Use case:

- default reliable choice when the player wants stable academic progress

### Talking

Primary role:

- relationship pressure valve and social opportunism

Typical effects:

- relationship gain with nearby classmate when context allows
- low or very low grade gain
- moderate to high catch risk
- mood improvement when successful

Use case:

- best when social opening is high and classroom attention is not high

### Reading

Primary role:

- self-directed academic specialization

Typical effects:

- supports another chosen subject if the player is reading school material
- offers minor relief instead if the player is reading non-school material
- low to medium catch risk depending on classroom situation
- slight stress increase

Use case:

- when the player wants to trade current-class focus for cross-subject preparation or light self-regulation

### Texting

Primary role:

- remote relationship maintenance and opportunistic social investment

Typical effects:

- small relationship gain with one chosen person
- very low or no grade gain
- small baseline catch risk that scales with classroom situation
- no effect if the target relationship is too weak or the other person does not want to risk replying

Use case:

- best when the player wants to invest in someone who is not physically available in the classroom seat context

### Napping

Primary role:

- short-term survival tool

Typical effects:

- immediate energy recovery
- no grade gain or grade loss opportunity cost
- medium to high catch risk depending on classroom situation
- may reduce stress if uninterrupted

Use case:

- rescue option when energy is too low for productive actions

## Turn Resolution Logic

Every turn should resolve in this order:

1. apply current context modifiers from teacher, subject, and event state
2. preview likely benefits and risks of each action in readable terms
3. resolve chosen action
4. update lesson resources and player condition
5. carry consequences into the next turn

This carry-over is important. Lessons become strategic only if turn one changes turn two.

## Cross-Turn Interaction Rules

Recommended interaction rules:

- repeating `attentive listening` gains consistency but slightly declining marginal value
- `reading` after `attentive listening` gets a small bonus because the player is already engaged
- `talking` lowers classroom attention for later turns
- `texting` lowers lesson attention and may lower classroom attention if noticed
- `napping` restores energy but sharply lowers classroom attention if noticed

These interactions create short-term planning without requiring deep complexity.

## Catch Risk Model

Catch risk should be legible but not fully deterministic.

Recommended behind-the-scenes formula inputs:

- base risk of the chosen action
- current classroom attention
- player condition penalties, especially very low energy or very poor mood
- repetition penalties when the same risky action is used multiple turns

Catch outcomes should scale in severity:

- warning only
- turn penalty or reduced reward
- relationship impact with teacher or classmates present
- temporary academic penalty in this lesson

MVP should avoid large permanent punishment from a single catch event.

Behavior boundary:

- classroom misbehavior can exist as a situational choice inside lessons
- it should create flavor, tension, and occasional tradeoffs
- it should not expand into a dominant delinquent fantasy or incentivize regular school avoidance

## Subject Variation Framework

Subjects should share the same lesson action logic.

Confirmed direction:

- lesson actions should have the same core effects regardless of subject
- subjects differ mainly by which subject progress they increase, not by separate reward bias tables
- teachers should matter mainly in narrative framing and character feel, not in major mechanical rule changes
- classroom tension may still vary situationally, but this should not read as each teacher having a separate gameplay ruleset

Practical implications:

- `attentive listening` always remains the safest academic baseline
- `talking` always remains a risky local social action
- `reading` always remains a tradeoff between cross-subject school reading and non-school relief reading
- `texting` always remains a targeted remote social action with no guaranteed reply
- `napping` always remains a survival action

What still differs by subject:

- which subject gains progress from attentive participation in that lesson
- flavor and fiction of the classroom
- downstream academic consequences because grades are tracked per subject

What should not differ heavily by subject:

- core action effectiveness tables
- major punishment profiles per teacher
- hidden reward bias maps the player must reverse-engineer

Detailed framing guidance is documented in `docs/design/subject-and-teacher-variation-framework.md`.

## Classroom Framing

Teachers and subjects still matter strongly for tone and fiction.

Examples:

- one class can feel dry and demanding while another feels calmer or more expressive
- one teacher can feel warm, intimidating, distracted, or charismatic
- the same action can feel emotionally different even if its mechanical role stays consistent

## Outputs To Meta Progression

Lessons should feed at least five broader systems:

- subject grades
- broad learning skill
- stress and energy state
- relationship opportunities during class
- exam readiness for the current semester

This ensures lessons matter even when no story scene is active.

## Anti-Repetition Measures

To avoid lessons becoming rote:

- use different classroom fiction and scene framing across subjects
- rotate contextual events rather than creating one fixed script
- allow different player priorities to justify different actions
- keep the best action dependent on condition, not fixed forever

## Balancing Levers

- academic value per action
- base catch risk per action
- classroom attention shifts during the lesson
- cross-turn synergy and anti-spam penalties
- condition thresholds that lower action effectiveness
- frequency of context events

## Risks And Edge Cases

- if attentive listening is always best, the system collapses into a fake choice
- if risky actions are too rewarding, optimal play becomes disruptive nonsense
- if catch outcomes are too punishing, players stop experimenting
- if condition penalties are too weak, napping loses its purpose and texting becomes too free
- if classroom framing is too weak, lessons blur together

## Recommended Next Step

The next design pass should define the stat model in detail so lesson effectiveness, recovery, and bad-state penalties can be tuned against explicit thresholds.
