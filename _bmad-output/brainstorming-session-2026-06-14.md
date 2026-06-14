---
title: 'Game Brainstorming Session'
date: '2026-06-14'
author: 'Filip'
version: '1.0'
stepsCompleted: [1, 2, 3, 4]
status: 'complete'
---

# Game Brainstorming Session

## Session Info

- **Date:** 2026-06-14
- **Facilitator:** Game Designer Agent
- **Participant:** Filip

---

_Ideas will be captured as we progress through the session._

## Brainstorming Approach

**Selected Mode:** YOLO

**Techniques Available:**
- MDA Framework
- Player Fantasy Mining
- Core Loop Brainstorming
- Genre/Pattern Mashup
- Verbs Before Nouns
- Failure State Design
- Ludonarrative Harmony
- Emotion Targeting
- Emergence Engineering
- Constraint-Based Creativity

**Focus Areas:**
- Core gameplay loop for a calendar-driven school-life simulation
- Player fantasy centered on a second chance at adolescence
- Discrete time, readable state transitions, and low hidden simulation
- Relationship, grades, condition, and memory as the main interacting domains
- Diegetic planning through the in-game phone
- Academic failure as the only hard fail state
- Modular authored content that scales across three school years
- Strong harmony between daily routine, emotional tone, and systemic consequences

## Ideas Generated

**[Category #1]**: Day As Emotional Funnel
_Core Loop_: The day is not just a time container, but an emotional funnel: the school block generates pressure and hooks, while the after-school segment converts them into one or two genuinely meaningful choices. The architecture should reinforce that most of the game's emotional value happens after school, but is prepared by what happened earlier.
_Novelty_: This is not a generic schedule sim; the rhythm of school -> freedom -> consequence should act as the primary drama engine.

**[Category #2]**: Phone As Fairness Layer
_Core Loop_: The phone acts as a diegetic read model of the world: it shows the calendar, messages, profiles, map, memories, and availability signals. The player plans from information that is readable but incomplete, so decisions stay fair while still feeling alive and uncertain.
_Novelty_: The phone UI is not an accessory; it is the layer that turns hidden simulation into legible planning without exposing everything as spreadsheets.

**[Category #3]**: Memory As Outcome Engine
_Core Loop_: Memories are not only collectible album entries, but interpretations of where the player was present, who they shared moments with, and what they did not fully complete. The memory architecture should gather people-place-event motifs and feed semester, year, and graduation summaries.
_Novelty_: Instead of ending relationships through flags or affinity scores alone, the game resolves them through memory, presence, and incompleteness.

**[Category #4]**: Relationship Arcs As State Weaves
_Core Loop_: Relationships should emerge from several intertwined axes: stage, arc progress, discovered preferences, availability windows, trust signals, and shared memory motifs. Relationship progression should not be a single bar, but a weave of systemic state and authored beats.
_Novelty_: This avoids dating-sim optimization and preserves the feeling that closeness comes from a series of resonant moments rather than point farming.

**[Category #5]**: Academic Pressure As Slow-Burn Antagonist
_Core Loop_: School acts as a steady systemic antagonist: it does not remove agency, but continually restricts and corrects priorities through lessons, study, exams, and semester-failure risk. It should be visible, understandable, and escalating without becoming oppressive on any single day.
_Novelty_: The hard fail state should result from readable long-term neglect, not one bad decision, so the architecture must support warnings, checkpoints, and regained control.

**[Category #6]**: Place-First Social Discovery
_Core Loop_: Locations carry both practical and emotional functions; the player does not merely "go to the park", but builds a repeatable relationship with a place whose meaning changes with people, time, and previous scenes. The location architecture should support hotspots, route availability, social presence, and place memory.
_Novelty_: Town exploration should stay compact but personal; places should remember context, not only offer actions.

**[Category #7]**: Meaningful Incompleteness By Design
_Core Loop_: The game should actively show what was not chosen: missed invites, unread posts, unseen places, unfinished arcs, and near-friendships. This is not failure reporting, but part of the run's identity.
_Novelty_: The architecture must represent unchosen paths as a positively interpretable outcome, not just missing content.

---

## Themes and Patterns

- School generates pressure; after-school generates identity.
- Readable planning matters more than numeric transparency.
- Presence, not completionism, should drive emotional payoff.
- Relationships, places, and memory should converge in the ending layer.
- Fairness depends on surfacing opportunity windows without over-explaining the world.

## Promising Combinations

- `Phone As Fairness Layer` + `Meaningful Incompleteness By Design`
- `Memory As Outcome Engine` + `Relationship Arcs As State Weaves`
- `Place-First Social Discovery` + `Day As Emotional Funnel`
- `Academic Pressure As Slow-Burn Antagonist` + checkpoint/recovery architecture

## Session Summary

### Most Promising Concepts

**Top Pick: Memory As Outcome Engine**
It sharpens the game's emotional differentiator. It gives the architecture a concrete way to interpret presence, absence, and incompleteness across relationships, places, and endings without collapsing into score-driven resolution.

**Runner-up: Phone As Fairness Layer**
It solves a central usability problem: how to make a rich stateful simulation planable without exposing it as raw optimization. It also ties strongly into the project's diegetic UX direction.

**Honorable Mention: Relationship Arcs As State Weaves**
It provides the right shape for long-form closeness in this game: systemic enough for consistency, authored enough for emotional specificity.

### Key Insights

- The most important architectural boundary is between pressure generation and identity expression: school creates constraints, after-school choices define the run.
- The phone should be treated as infrastructure for fair planning, not just feature UI.
- Memory should be modeled as an interpretive system that feeds summaries and endings, not only as flavor collectibles.
- Relationship progression should combine descriptive stages with authored state and shared motifs.
- Incompleteness should be represented as meaningful outcome data, not silent absence.

### Recommended Next Steps

1. Translate these concepts into concrete architecture decisions for state domains, services, and data ownership.
2. Update the Game Architecture Document so memory, phone fairness, relationship weave, and incompleteness are explicit architectural concerns.
3. Review the durable document against the technical architecture doc to keep game-layer and engine-layer boundaries clean.

---

## Session Complete

**Date:** 2026-06-14
**Duration:** Brainstorming session
**Participant:** Filip

### Output

This brainstorming session generated:

- 7 raw ideas
- 7 developed concepts
- 5 emerging themes

### Document Status

Status: Complete
Steps Completed: [1, 2, 3, 4]
