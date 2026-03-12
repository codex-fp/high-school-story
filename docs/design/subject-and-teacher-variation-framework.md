# Subject And Teacher Variation Framework

## Design Goal

Lessons should feel recognizably different across the school schedule without fragmenting into separate mini-games.

The variation framework should make players feel:

- different classes reward different instincts
- different teachers change the emotional feel of the same shared lesson system
- these differences are learned through play rather than heavily explained in UI

## Confirmed Decisions

- lesson variation should come from a mix of `subject` and `teacher`
- the influence split should be roughly `50/50`
- subjects should differ mainly through `reward biases`
- teachers should differ through `strictness / tolerance` and `teaching style`
- teacher differences should be clearly felt in play, but not so strongly that they rewrite the whole system
- players should mostly perceive teacher differences through outcomes and feel, not explicit UI explanation
- subject reward biases should stay mostly hidden
- players should usually start to feel a subject's character quickly, within roughly `1-2` lessons

## Core Design Rule

The lesson system stays shared.

Variation should come from how the same actions are valued, not from replacing the action set for each class.

## Variation Split

### Subject role

The subject provides the base profile of the lesson.

It answers:

- what kind of academic behavior this class tends to reward
- which actions convert best into subject progress
- what the class is fundamentally about in gameplay terms

### Teacher role

The teacher provides the delivery profile of the lesson.

It answers:

- how risky disruptive play is
- how forgiving the classroom feels
- which actions become more or less efficient under this person's teaching style

## Subject Variation Model

Subjects should mainly differ through reward bias.

That means the same five lesson actions remain available, but their academic value shifts by subject.

Recommended examples:

- `math` biases toward `attentive listening` and `reading`
- `literature` is more tolerant of `talking` when it maps to discussion value
- `science` favors focused engagement and punishes drift more clearly
- `art` may value attentive participation differently and be less academically damaged by low-intensity expressive behavior
- `history` may reward consistent attention more than opportunistic play
- `biology` can sit between memorization and conceptual attention depending on the teacher profile

These are reward tendencies, not hard locks.

## Teacher Variation Model

Teachers vary in two confirmed ways.

### 1. Strictness / tolerance

This controls:

- catch risk sensitivity
- patience loss from disruptive actions
- how quickly risky play becomes unsafe

### 2. Teaching style

This controls:

- which actions convert more efficiently in that classroom
- how much value the player gets from passive focus versus active engagement
- whether self-directed behavior like `reading` feels supported or slightly off-pattern

## Perceived Difference Target

The target difference level is medium.

That means:

- players should notice that classes feel different
- decisions should change sometimes because of subject and teacher
- the optimal move should not swing so wildly that the system feels arbitrary

## Hidden-But-Learnable Design

Because subject biases are mostly hidden, the system must teach itself through play.

Recommended rule:

- after `1-2` lessons, the player should usually begin to sense what that class likes
- repeated play should confirm that feeling rather than contradict it randomly

This means the reward signal must be readable in outcomes, not buried in tiny invisible modifiers.

## Player Experience Principle

The player should think:

- `talking seems to go better in this class than in that one`
- `this teacher shuts risky behavior down faster`
- `reading helped me more here than I expected`

Not:

- `I need a wiki to understand why this class works`

## Lesson Action Interpretation

The shared actions should keep the same identity everywhere, but their relative value changes.

- `attentive listening` is always the safest academic baseline
- `talking` is always the socially opportunistic action, but its academic downside can vary
- `reading` is always self-directed focus, but some classrooms support it more than others
- `browsing` is always a relief valve with cost, though punishment sensitivity can vary
- `napping` is always a survival action, but reaction severity differs by teacher and context

## Tuning Guidance

To preserve learnability:

- subject reward biases should be noticeable, not microscopic
- teacher style shifts should modify expected value, not invert the whole logic every time
- one class should still feel familiar enough to understand after learning another

## Anti-Confusion Rules

- do not make one teacher contradict a subject identity so strongly that the subject stops feeling like itself
- do not hide all meaningful information if the resulting feedback is too noisy to read
- do not create perfect secret solutions for each class; the player should still have room for priorities and condition-based adaptation

## Balancing Levers

- subject multiplier per action type
- teacher strictness level
- teacher patience drain per disruptive action
- teacher style bonus or penalty per action type
- floor and ceiling values so no action becomes universally dead or universally dominant

## Risks And Edge Cases

- if subject biases are too weak, classes blur together
- if teacher effects are too weak, teachers feel cosmetic
- if either effect is too strong, the system becomes hard to read
- if hidden biases take too long to notice, players assume randomness
- if discovered patterns are too rigid, lessons become solved too quickly

## Recommended Next Step

Next, define the first-pass reward bias map for the MVP subjects so these principles become concrete per class.
