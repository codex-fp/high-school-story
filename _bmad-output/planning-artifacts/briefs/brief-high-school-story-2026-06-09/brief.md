---
title: "High School Story Game Brief"
status: "draft"
created: "2026-06-09"
updated: "2026-06-09"
---

# Game Brief: High School Story

## Executive Summary

High School Story is a grounded school-life social simulation about reliving all three years of high school with more awareness, intention, and agency than real life allowed. The player creates a student, defines their starting interests and academic strengths, and guides them from the first days of Year 1 to graduation at the end of Year 3.

The emotional center is the tradeoff between obligation and memory-making across a much longer coming-of-age arc. School sets the rhythm and the academic floor. After school, players decide where to go, who to pursue, what to spend, and which opportunities are worth the cost. Over time, those repeated small decisions build a personal version of high school that feels remembered rather than optimized.

The full product promise is not a single semester. It is a three-year student-life journey with evolving relationships, seasonal school events, layered time structure, and an ending shaped by who the player became, what they prioritized, and what future they grew toward. The MVP remains a deliberately narrow validation slice inside that larger promise.

## Vision

Core fantasy: live a second chance at high school across all three years, where limited time forces meaningful choices and everyday routines become a personal coming-of-age story.

Elevator pitch: a cozy-leaning school-life sim where players balance lessons, condition, money, travel, and relationships across the full arc of high school, using better judgment than real adolescence ever allowed.

Player takeaway: the full run should feel like a personal high school life rather than an optimized schedule. Players should finish with a sense that who they invested in, how they handled pressure, what they pursued, and what they let go of all mattered.

## Target Players & Market

Primary audience:

- Players who enjoy cozy or reflective life sims with readable systems.
- Players interested in school-life fiction, coming-of-age tone, and small daily choices.
- Players who like relationship progression without wanting romance to dominate the whole loop.
- Players comfortable with light planning pressure but resistant to harsh fail-state design.
- Likely core play pattern: repeat sessions of roughly 20-45 minutes on PC, with enough continuity to support longer weekend play.

Secondary audience:

- Players who enjoy narrative-adjacent simulation and schedule management.
- Players drawn to social sims where emotional payoff matters more than maximizing stats.

Market context:

- The opportunity is a grounded school-life sim that sits between cozy life simulation and light-pressure management.
- Comparable titles often over-index on romance, broad sandboxing, or system opacity. High School Story instead emphasizes readable tradeoffs, descriptive relationship stages, and a longer-form high school journey.
- The concept is best positioned as a focused, emotionally legible niche PC experience rather than a mass-market life-sim platform.

## Core Fundamentals

Genre: school-life social simulation with light schedule management and relationship progression.

Core gameplay loop:

1. Start the day with visible time, condition, money, school obligations, and social information.
2. Move through the school block, where lessons create academic pressure and social hooks.
3. Spend after-school hours on the day's most valuable priority: recovery, study, social pursuit, exploration, work, or preparation.
4. Carry consequences forward into grades, condition, relationship stages, discovered preferences, and future availability.
5. Re-plan around what was missed, what was learned, and what tomorrow now demands.

Full-game progression structure:

1. Days establish immediate tradeoffs between school, recovery, exploration, and relationships.
2. Weeks and semesters create mounting pressure through exams, events, opportunities, and missed chances.
3. Each school year has its own dramatic role: entry and exploration, deepening and consolidation, then culmination and future choice.
4. The full three-year run turns repeated daily decisions into a personal arc of growth, attachment, incompleteness, and maturation.

Gameplay pillars:

1. Second-Chance Time Pressure: time, travel, school obligations, curfew, and sleep make ordinary choices meaningful.
2. Relationships as Memory-Making: social investment rewards scenes, emotional payoff, and a more vivid high school life rather than heavy mechanical bonuses.
3. School as Opportunity Engine: school is the daily backbone, the academic floor, and the source of many future choices.
4. Place-First Personal Routine: compact, readable locations let players build believable routines through movement, discovery, recovery, and small spending choices.
5. Meaningful Incompleteness: players cannot do everything or fully know everyone in one run, and that incompleteness is part of the game's value.

Primary mechanics:

- Fifteen-minute time progression across days, weeks, semesters, school years, and the full three-year run.
- Three-turn lessons with distinct action choices.
- Per-subject grades, condition management, weekly allowance, and optional abstract work.
- Descriptive relationship stages, long-form classmate arcs, and in-world social media profiles for known classmates.
- Travel and action validation that surfaces duration, consequences, and risk before commitment.
- Seasonal school events that mark passing time and reinforce the school-life fantasy.

## References & Differentiation

Comparable titles:

- `Persona 4` / `Persona 5`: take the school-calendar structure, social anticipation, and sense that days matter; do not take supernatural spectacle, combat progression, or large-scale RPG escalation.
- `Tokimeki Memorial`: take the legibility of relationship pursuit and school-life framing; do not take stat-grind-first dating-sim structure as the dominant play identity.
- `Stardew Valley`: take the readable daily planning and cozy routine satisfaction; do not take open-ended abundance, crafting, or broad life-sim sandbox scope.
- `I Was a Teenage Exocolonist`: take the reflective coming-of-age framing and consequence-led personal arc; do not take branching narrative density as the primary delivery model.

Differentiators:

- A school-life loop where time, academics, travel, money, condition, and relationships all compete for the same day, then accumulate across three years.
- Second-Chance Student Life as a fantasy of wiser adolescence rather than pure escapism.
- Relationship tracking through descriptive stages instead of exposed affinity numbers.
- Known-classmate location and preference discovery through an in-world social media layer, making pursuit readable without removing tradeoffs.
- A three-act high school structure where each year changes the emotional and strategic meaning of the same daily routine.
- Deliberate meaningful incompleteness: players leave a run with treasured memories and visible paths not taken.
- A fair academic failure floor: neglect can end the semester, but poor condition alone should create friction rather than collapse.

## Scope & Product Shape

Target platform priority:

1. Desktop JVM / PC.

Current scope assumptions:

- Team, budget, and production timeline are not yet formalized in repository documentation.
- The current documented implementation surface suggests an MVP-first solo or small-team project, so the product vision must be separated clearly from the initial validation slice.

Full-game shape:

- Three full school years from the start of Year 1 to graduation at the end of Year 3.
- Six semesters forming a layered structure of day, week, semester, year, and full-run progression.
- A broad relationship layer where every major classmate eventually has a full arc.
- Seasonal school events and other calendar landmarks that make the passing years feel distinct.
- A late-game shift toward future-facing questions: commitment, identity, academic direction, and life after high school.

## MVP Validation Slice

MVP boundary:

- One playable twelve-week semester at the start of Year 1.
- Five MVP locations: dormitory, school, district, shop, and park.
- Five classmates in the social layer.
- One fully supported lightweight classmate arc, with teaser-level support for the rest.
- Shared lesson structure instead of bespoke subject minigames.
- Semester exam, outcome reveal, and academic-failure handling.

Core hypothesis to validate:

One first semester is enough to prove that readable school pressure, meaningful after-school freedom, compact locations, and emotionally legible relationship progression can create memorable daily tradeoffs that are worth expanding into a three-year game.

Technical constraints:

- Current target platform is Desktop JVM.
- Simulation advances on actions, turns, travel, sleep, and calendar boundaries rather than continuous heavy simulation.
- MVP avoids large crowds, large location rosters, and systems that would dilute the core daily rhythm.

## Content & Direction

Setting and tone:

- A grounded, nostalgic, cozy-leaning student-life setting centered on the full high school life at Lakeview.
- The dramatic scale stays personal: routine, pressure, small discoveries, and social investment matter more than spectacle.

Content shape:

- Three years of weekday and weekend rhythm built on a layered calendar structure.
- Year 1 as entry and exploration, Year 2 as deepening and consolidation, Year 3 as culmination and future choice.
- Full classmate arcs in the complete product, each maturing over a longer time horizon.
- Seasonal school events, semester transitions, and future-facing endgame outcomes that reinforce the feeling of growing up through school.
- Compact exploration scenes, lesson scenes, dialogue, recovery actions, study actions, school events, and semester transitions.

Art direction:

- Readable 2D presentation with compact spaces, stable location identities, and clear hotspots.
- Warm late-afternoon and evening moods for reflective scenes.
- Plain-but-specific school and dorm detail rather than exaggerated fantasy stylization.

Audio direction:

- Soft ambient loops per location.
- Quiet transitional sounds for travel, school bell, phone feedback, and sleep.
- Music that supports reflection and light pressure without turning the school-life experience anxious or aggressive.

## Risks & Open Questions

Key risks:

- The gap between the full three-year promise and the practical MVP slice could create expectation drift if documents blur the distinction.
- Scope drift beyond a minimal semester slice could undermine delivery.
- The featured classmate arc must be strong enough to sell the broader social vision by itself.
- The complete product needs a believable plan for expanding social density, seasonal events, and long-form progression without losing the readable daily loop.
- Balance values for grades, recovery, money pressure, and exam weighting remain unresolved.
- The game needs enough clarity around subject identity and social discovery to feel fair without over-explaining.

Mitigation priorities:

- Keep the product brief full-game-first, but isolate the MVP as a validation strategy instead of the product promise.
- Keep the MVP limited to one semester and one real classmate route.
- Prototype the daily loop, lesson feel, and after-school decision value before content expansion.
- Lock balancing guardrails and classmate/profile rules before deep implementation.

Open questions:

- Final production timeline, budget, and team composition.
- How many classmates and full arcs define the complete product at launch?
- Which seasonal events and year-to-year transitions are essential to the three-year promise?
- How should the end of Year 3 frame post-school future choice and outcome resolution?
- Exact balance formulas for condition, grade danger, study efficiency, money pressure, and exam weighting.
- Final definition of the five MVP classmates and ownership of the first featured arc.
- What concrete post-MVP expansion path turns the semester slice into the full game?
