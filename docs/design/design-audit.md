# Design Audit

## Purpose

This document reviews the current product documentation from a game design perspective and identifies what is already strong, what is still too abstract, and what should be designed next.

## Reviewed Sources

- `docs/product/product-vision.md`
- `docs/product/core-loop.md`
- `docs/product/mvp-scope.md`

## Current Strengths

The existing product documentation already gives a strong high-level frame for game design.

Confirmed and useful inputs:

- the core fantasy is clear: reliving high school through time pressure, social discovery, and personal priorities
- the game identity is clear: social sim with systemic scheduling, not a full RPG and not a pure life sandbox
- the daily structure is clear enough to design around: dormitory morning, scheduled lessons, free afternoon, forced evening return
- the core resource set is already identified: energy, stress, mood, money, grades, skills, and relationships
- the lesson format is already constrained into a reusable 3-turn structure
- the project already has an MVP definition that is small enough to prototype meaningfully

## Where Product Stops And Design Must Start

The current documentation is good product groundwork, but many decisions are still framed as requirements rather than playable mechanics.

Key gaps that now belong to game design:

- exact function of each stat and how stats influence success, failure, and recovery
- activity taxonomy and how activities differ mechanically beyond time cost
- detailed lesson economy: rewards, risks, action interactions, and subject variation
- relationship progression rules, pacing, thresholds, and romance gating
- grade model, exam scoring model, and academic catch-up logic
- weekend gameplay structure and how it feels different from weekdays
- anti-frustration design, especially for bad states and schedule mistakes
- content scaling rules for classmates, story arcs, and event cadence across multiple years

## Main Design Risks Identified

### 1. Overloaded simulation risk

The current vision contains many variables: time, travel, stats, grades, skills, relationships, subjects, events, and three school years. Without strict role separation between systems, the game can become hard to understand and expensive to balance.

Design response:

- each system must have a narrow purpose
- stats should modify decisions, not all become parallel progression bars
- MVP should prove one strong version of each loop before adding breadth

### 2. Lesson repetition risk

The 3-turn lesson structure is promising, but if subjects only reskin the same decisions, lessons may feel repetitive.

Design response:

- keep a shared lesson core for production efficiency
- differentiate subjects through teacher rules, action modifiers, event cards, and reward profiles

### 3. False freedom risk

The game promises multiple valid priorities. If grades silently dominate endings or unlocks, players will feel misled.

Design response:

- define which outcomes come from academics, which from relationships, and which from stability or wellbeing
- ensure all major priorities produce meaningful long-term value

### 4. Pressure versus punishment risk

The game wants daily pressure but no harsh fail states. Without careful tuning, pressure may disappear or frustration may spike.

Design response:

- use soft failure, reduced efficiency, and missed opportunities instead of hard loss
- make recovery always possible, but never free

## Recommended Design Order

The design work should progress in this order:

1. define design foundations and system roles
2. lock the daily rhythm and time economy
3. lock the lesson system because it is the most repeated structured activity
4. define stat model and recovery model
5. define relationship loop and story arc gating
6. define grades, exams, and semester progression
7. define MVP activity roster and location purpose map

## Decisions Already Safe To Treat As Temporary Design Constraints

Until you decide otherwise, I recommend treating these as active assumptions for design work:

- one day uses 15-minute increments
- school attendance is a mandatory default path
- the player cannot hard-fail from bad condition
- grades are tracked per subject
- relationships are shown through descriptive states rather than raw numbers
- the MVP covers one semester, five classmates, and one lightweight story arc
- the target pressure level is lightly demanding rather than cozy-passive or high-stress
- rule-breaking is supported in a limited way, but the game should not promote truancy as a core playstyle

## Open Design Questions For Producer Input

- How realistic versus stylized should the simulation feel on a scale from grounded slice-of-life to lightly gamified drama?
- How romance-forward should the game be relative to friendship and personal growth?

Resolved:

- long-term planning should be lightly demanding: the game should stay approachable and cozy-leaning, but still ask the player to make tradeoffs and occasionally recover from an overcommitted week
- moderate rule-breaking is acceptable for tone and situational drama, but not as a promoted fantasy of regularly skipping school

## Next Design Deliverables

The next documents in this space establish the first playable design baseline:

- `design-foundations.md`
- `daily-rhythm-and-time-system.md`
- `lesson-system.md`
