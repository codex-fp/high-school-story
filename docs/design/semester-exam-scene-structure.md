# Semester Exam Scene Structure

## Design Goal

The semester exam should feel like a meaningful climax of school pressure without becoming a large standalone minigame.

It should deliver:

- a clear sense that exam period matters
- visible payoff for semester-long preparation
- meaningful influence from the player's day-of condition
- a short, readable scene structure that fits MVP scope

## Confirmed Decisions

- the exam scene should be medium in complexity, not minimal and not oversized
- it should test a mix of semester preparation and day-of condition
- it should use a shared universal decision structure rather than separate decision sets per subject
- it should contain `3` decisions total
- those `3` decisions should use a mixed model: fixed scene phases plus style choice in each phase
- the underlying styles are `safe`, `steady`, and `ambitious`
- presentation can phrase those styles in a more characterful way depending on context
- exam results should be shown in two steps: first a combined emotional summary, then a per-subject breakdown
- the exam period should be presented as one larger scene with short subject-specific accents
- subject-specific accents should add flavor and small modifiers, but not separate decision points per subject
- results should arrive with a short in-world delay rather than immediately after the exam scene

## Proposed Structure

The exam period is one shared scene made of three decision phases:

1. settling in
2. pressure point
3. final push

Each phase presents the player with the same mechanical decision family:

- `safe`
- `steady`
- `ambitious`

This gives a consistent readable structure while still allowing changing tension across the scene.

## What The Scene Measures

The final exam outcome should be driven by two major sources:

- semester preparation in the relevant subject set
- current condition on exam day, especially energy and stress

Design rule:

- preparation should remain the dominant source of success
- day-of condition should meaningfully shift execution quality and pressure handling
- the scene should not let a poorly prepared player fully bluff through
- the scene should not let one tired morning erase a strong semester

## Phase Breakdown

### 1. Settling In

Purpose:

- establish emotional tone
- test the player's initial composure
- convert early condition into momentum for the rest of the scene

Typical player question:

- do I begin carefully, stay balanced, or push hard from the start?

### 2. Pressure Point

Purpose:

- represent the most stressful section of the exam period
- expose the interaction between preparation and current condition most strongly
- create the highest perceived tension in the scene

Typical player question:

- when pressure rises, do I protect consistency or reach for a stronger result?

### 3. Final Push

Purpose:

- determine how the player closes the exam period
- reward discipline or risk-taking depending on prior state
- create satisfying last-moment agency

Typical player question:

- do I secure what I have, keep steady, or gamble for a stronger finish?

## Style Model

### Safe

Intended feeling:

- cautious, controlled, low-risk

Expected profile:

- lower variance
- better protection against bad condition
- lower ceiling on bonus performance

### Steady

Intended feeling:

- balanced, dependable, default strong play

Expected profile:

- moderate variance
- best baseline conversion of preparation into result
- least dramatic but most stable when reasonably prepared

### Ambitious

Intended feeling:

- pushing for extra performance under pressure

Expected profile:

- highest upside
- strongest vulnerability to stress, fatigue, or weak preparation
- good for prepared players who want to maximize outcome

## Cross-Phase Logic

The three decisions should not be isolated.

Recommended interaction rules:

- early composure should slightly influence later stability
- repeated ambitious play should increase execution volatility under stress
- repeated safe play should reduce collapse risk but cap peak performance
- steady play should be the most reliable bridge between strong preparation and acceptable results

This keeps the scene from feeling like three disconnected buttons.

## Subject-Specific Accents

Subjects should appear inside the exam period as short accents rather than full extra scenes.

These accents can provide:

- flavor of the current subject or paper
- a small modifier to tension or confidence
- a reminder of which subjects the player prepared well or neglected

Examples of accent use:

- the player feels relieved seeing a familiar type of question
- a weak subject briefly raises tension
- a strong subject gives a small confidence lift before the next phase

## Result Delivery Model

The player should not receive results instantly.

Recommended sequence:

1. exam scene ends
2. short in-world delay of roughly `1-2` days
3. combined emotional summary of how the exam period felt
4. per-subject results and academic breakdown

This supports anticipation and a stronger payoff moment.

## MVP Recommendation

For MVP:

- implement one reusable 3-phase exam scene structure
- let semester preparation remain the primary driver of outcome
- let energy and stress shape how well the player executes inside the scene
- add light subject-specific accents rather than separate micro-scenes per subject
- show results after a short delay, first emotionally and then analytically

## Balancing Levers

- weight of semester preparation versus exam execution
- effect of energy and stress on phase outcomes
- upside and downside spread for `ambitious`
- stability bonus for `steady`
- protection value for `safe`
- strength of cross-phase carryover
- magnitude of subject-specific accent modifiers
- delay length before results are revealed

## Risks And Edge Cases

- if condition matters too much, the semester loses importance
- if condition matters too little, the scene feels fake
- if `steady` is always best, the choice set collapses
- if `ambitious` is too rewarding, it becomes mandatory for optimal play
- if `safe` is too strong, exam tension disappears
- if the result delay is too long, feedback loses clarity

## Recommended Next Step

Next, define the subject variation framework for lessons so subject identity is expressed more strongly during the semester than during the exam scene itself.
