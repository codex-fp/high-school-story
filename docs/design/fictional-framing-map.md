# Fictional Framing Map

## Design Goal

School subjects should feel meaningfully different without relying on separate mechanical rule sets.

Their identity should come mainly from what they mean to a given student, not from heavily divergent lesson mechanics.

## Confirmed Decisions

- subjects should differ only lightly in framing and presentation
- the main difference between subjects should be how they fit the player character's profile
- subjects are systemically equal rather than arranged in a hierarchy of importance
- subject fit should currently be defined mainly through attribute weighting
- `attributes` drive academic progress and performance directly
- good fit should improve both results and felt comfort
- poor fit should worsen both results and felt comfort
- the benefit for good fit should be noticeable but not overwhelming
- every subject should map to all core attributes, but with different weights
- one attribute may dominate while others contribute more lightly
- `composure` should be treated as a shared modifier, especially under high stress, rather than as a normal subject-weighted stat
- the mapping should be partially visible to the player through hints, not presented as a full explicit table
- preferences influence on school subjects is deferred and should not be treated as settled design yet

## Core Framing Rule

The same subject should not feel identical for every student.

The key question is:

What does this class mean to this version of the protagonist?

Examples:

- a strong analytical student may feel capable and steady in math
- a badly matched student may still function, but at higher emotional and academic cost

## Fit Model

Each subject should create two related outputs:

### 1. Performance fit

Driven mainly by attributes.

This affects:

- how efficiently the student gains progress in that subject
- how naturally they convert effort into good outcomes
- how reliably they perform in lessons and related school demands

### 2. Comfort fit

Driven mainly by how naturally the student's broader profile matches the subject.

This affects:

- whether the class feels encouraging or draining
- how much `stress` it tends to generate in that student
- whether `mood` is preserved or worn down by regular attendance

The exact role of preference tags inside subject comfort is intentionally deferred for later discussion.

## Result Of Good Fit

When a student fits a subject well:

- subject progress should come more smoothly
- grades in that area should be easier to maintain
- the class should feel less emotionally costly
- the player should feel that the student belongs there, at least relative to weaker-fit classes

## Result Of Poor Fit

When a student fits a subject poorly:

- progress should be slower or harder-earned
- the class should generate more strain
- `stress` and `mood` should both feel the effect over time
- the subject should still remain playable, not locked out or made hopeless

## Visibility Model

The player should not receive a giant explicit matrix.

Instead, the game should communicate fit through:

- clear but partial hints during character creation or subject descriptions
- noticeable outcome differences during play
- readable emotional feedback in class and around grades

The player should feel informed, but still be discovering how their student lives in the timetable.

## Subject Identity Sources

With mechanics now mostly shared, subjects should feel different through:

- which grade track they advance
- how their full attribute weighting leans, especially which attribute dominates
- what emotional place the subject occupies in the school week for that student

## Weighting Model

The current subject-fit model should use simple `1-5` weights for the main attributes:

- `reasoning`
- `knowledge`
- `creativity`
- `sociability`
- `athletics`

`composure` is not part of the normal per-subject weight table.

It should act more like a cross-subject stability modifier that matters especially when the student is under stress.

## Current MVP Attribute Mapping

### Math

- `reasoning = 5`
- `knowledge = 3`
- `creativity = 1`
- `sociability = 1`
- `athletics = 1`

### History

- `knowledge = 5`
- `reasoning = 2`
- `creativity = 1`
- `sociability = 1`
- `athletics = 1`

### Literature

- `knowledge = 4`
- `creativity = 3`
- `sociability = 2`
- `reasoning = 1`
- `athletics = 1`

### Science

- `reasoning = 5`
- `knowledge = 4`
- `creativity = 1`
- `sociability = 1`
- `athletics = 1`

### Art

- `creativity = 5`
- `knowledge = 3`
- `sociability = 3`
- `reasoning = 1`
- `athletics = 1`

### Biology

- `knowledge = 4`
- `reasoning = 2`
- `creativity = 1`
- `sociability = 1`
- `athletics = 1`

## MVP Subject Framing Template

For each subject, the final framing pass should define:

1. weighted attribute profile
2. which attribute clearly dominates
3. likely experience for a well-matched student
4. likely experience for a poorly matched student
5. any later-added preference resonance, if the deferred topic is resolved

## Player Experience Principle

The player should think:

- this is one of my student's good classes
- this class drains them, even if they can survive it
- this subject suits their strengths more than that one does

Not:

- every student experiences every class basically the same way
- subjects are only different because the grade label changes

## Risks And Edge Cases

- if fit bonuses are too small, subject identity feels cosmetic
- if fit bonuses are too strong, the player feels pushed into narrow specialization
- if too many subjects end up using nearly identical weights, the map becomes meaningless
- if attribute mapping is too opaque, the player cannot build a student intentionally

## Recommended Next Step

Next, decide whether to expand this mapping with the remaining school subjects or move on to the next major content-facing design block.
