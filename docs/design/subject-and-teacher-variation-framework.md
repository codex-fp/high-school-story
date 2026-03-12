# Subject And Teacher Variation Framework

## Design Goal

Lessons should feel recognizably different across the school schedule without fragmenting into separate rule sets.

The variation framework should make players feel:

- different classes contribute to different academic tracks
- different teachers change the emotional feel of the same shared lesson system
- these differences are learned through play rather than heavily explained in UI

## Confirmed Decisions

- lesson actions should have the same core effects regardless of subject
- subjects should differ mainly by which subject progress is being advanced
- teachers should matter mainly in narrative framing, characterization, and scene feel
- teachers should not meaningfully treat the player differently through separate gameplay rulesets
- classrooms can still have situational tension, but not as a deep teacher-specific mechanical identity
- players should understand the lesson system quickly because action roles stay stable across classes

## Core Design Rule

The lesson system stays shared.

Variation should come from fiction, pacing, and progression destination, not from changing what the actions do in each subject.

## Subject Role

The subject provides the academic destination of the lesson.

It answers:

- which grade track is being affected
- what fiction and classroom context frame the lesson
- what place this class has in the weekly schedule

## Teacher Role

The teacher provides the narrative and emotional delivery of the lesson.

It answers:

- how the class feels tonally
- what kind of authority or warmth the player perceives
- how dialogue, presentation, and scene framing color the same shared lesson mechanics


## Stable Action Logic

The core lesson actions should mean the same thing in every class.

- `attentive listening` is the safest academic baseline
- `talking` is the risky local social action
- `reading` is a tradeoff action: school reading supports another subject, non-school reading gives light relief
- `texting` is a targeted remote social action with no guaranteed reply
- `napping` is the emergency survival action

Current agreed boundaries for action interpretation:

- actions should keep stable meanings across subjects
- `reading` should depend partly on what is being read, not on a subject-specific bias table
- MVP should use only two reading categories inside lessons: `school reading` and `non-school reading`
- `school reading` is more tolerated and more academically useful than `non-school reading`
- `napping` should remain bad almost everywhere, with only slight variation in punishment
- `texting` replaces `browsing` as the remote social classroom action

## Where Difference Still Comes From

Subjects can still feel different through:

- the subject label on resulting progress and grades
- timetable placement and surrounding schedule pressure
- lesson fiction, examples, and presentation
- narrative context linked to specific classes

Teachers can still feel different through:

- dialogue tone
- visual or written classroom atmosphere
- narrative events and character impression
- how scenes are framed around the same mechanics

## Perceived Difference Target

The target difference level is mostly narrative rather than mechanical.

That means:

- players should feel different classroom personalities
- players should not need to relearn action values from subject to subject
- the lesson system should stay stable and quickly readable

## Learnability

The system should become understandable quickly because the action model is consistent.

Recommended rule:

- after `1-2` lessons, the player should understand the basic action economy of the classroom loop
- later lessons should reinforce player confidence rather than reveal hidden subject-specific exceptions

## Player Experience Principle

The player should think:

- `this class improves a different subject, but I still understand how to play it`
- `this teacher feels different, even though the lesson rules are familiar`
- `I know what my options mean without relearning the system every period`

Not:

- `every subject secretly grades my actions differently`

## Tuning Guidance

To preserve learnability:

- keep action values stable across subjects
- let contextual tension vary only lightly and situationally
- rely on presentation and progression destination more than hidden modifier maps

## Anti-Confusion Rules

- do not build separate hidden action tables per subject
- do not make teachers feel like separate mechanical subclasses unless the game explains that clearly
- do not rely on invisible modifier complexity to create classroom identity

## Balancing Levers

- core action values shared across classes
- situational classroom-attention shifts during a lesson
- reading split between school and non-school material
- texting effectiveness thresholds by relationship strength
- floor and ceiling values so no action becomes universally dead or universally dominant

## Risks And Edge Cases

- if classroom framing is too weak, subjects blur together emotionally
- if all teachers are only cosmetic in writing, school personality may feel flat
- if situational tension varies too much without explanation, players may still read it as hidden teacher rules
- if subject difference exists only in a grade label, classes may need stronger narrative presentation support

## Recommended Next Step

Next, define how each MVP subject should be framed fictionally and narratively so classes feel distinct even with shared mechanics.
