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
- subject and teacher modifiers
- previous actions in the same lesson
- occasional lesson context events

## Core Player Question

The lesson system should repeatedly ask:

What is the smartest thing to do in class right now, given my condition and priorities?

## Shared Lesson Resources

The lesson layer should care about four values:

- `lesson attention` - how prepared the player is to benefit academically right now
- `teacher patience` - how strict the current classroom tolerance is for disruptive behavior
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

- best when social opening is high and teacher patience is not low

### Reading

Primary role:

- self-directed academic specialization

Typical effects:

- high gain to a chosen academic area or exam preparation target
- weaker standard lesson gain if the subject dislikes independent reading
- low to medium catch risk depending on teacher
- slight stress increase

Use case:

- when the player wants targeted preparation rather than generic class performance

### Browsing

Primary role:

- low-effort mood management with temptation cost

Typical effects:

- small mood relief or stress relief
- poor grade gain
- medium catch risk
- may trigger distraction chains that weaken later turns

Use case:

- emergency relief when the player is mentally overloaded but cannot afford a full collapse

### Napping

Primary role:

- short-term survival tool

Typical effects:

- immediate energy recovery
- no grade gain or grade loss opportunity cost
- medium to high catch risk depending on teacher
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
- `talking` lowers teacher patience for later turns
- `browsing` increases fatigue pressure on the next turn
- `napping` restores energy but sharply lowers teacher patience if noticed

These interactions create short-term planning without requiring deep complexity.

## Catch Risk Model

Catch risk should be legible but not fully deterministic.

Recommended behind-the-scenes formula inputs:

- base risk of the chosen action
- teacher strictness
- current teacher patience
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

Subjects should differ through modifiers, not fully separate mini-games.

Confirmed direction:

- variation is split roughly `50/50` between `subject` and `teacher`
- subjects differ mainly through reward bias
- teachers differ through strictness, tolerance, and teaching style
- most of this should be learned through play rather than explained explicitly in UI
- players should usually start sensing a subject's character within `1-2` lessons

Recommended variation layers:

### Reward profile

Different subjects favor different action outputs.

Examples:

- math rewards attentive listening and reading more strongly
- literature may allow talking to generate discussion value in some contexts
- art may punish napping less harshly but reward engaged participation differently

### Teacher personality

Teachers define tolerance and response patterns.

Example teacher axes:

- strict versus lenient
- discussion-friendly versus lecture-heavy
- supportive versus intimidating

Teaching style also changes the efficiency profile of some actions, not just punishment sensitivity.

Detailed framework is documented in `docs/design/subject-and-teacher-variation-framework.md`.

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

- use different teacher profiles across subjects
- rotate contextual events rather than creating one fixed script
- allow different player priorities to justify different actions
- keep the best action dependent on condition, not fixed forever

## Balancing Levers

- academic value per action
- base catch risk per action
- teacher strictness
- teacher patience loss and recovery values
- cross-turn synergy and anti-spam penalties
- condition thresholds that lower action effectiveness
- frequency of context events

## Risks And Edge Cases

- if attentive listening is always best, the system collapses into a fake choice
- if risky actions are too rewarding, optimal play becomes disruptive nonsense
- if catch outcomes are too punishing, players stop experimenting
- if condition penalties are too weak, napping and browsing lose their purpose
- if subject variation is too small, lessons blur together

## Recommended Next Step

The next design pass should define the stat model in detail so lesson effectiveness, recovery, and bad-state penalties can be tuned against explicit thresholds.
