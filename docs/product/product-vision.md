# Product Vision

## One-liner

High School Story is a social simulation game in which the player creates a teenage character starting high school and lives through three years of high school experiences.

## Problem / Opportunity

The game targets players who nostalgically remember their school years and want to revisit that period in a more systemic, player-driven form. It aims to combine emotional nostalgia, relationship building, and meaningful time management inside a high school setting.

## Player Fantasy

The player should feel:
- nostalgia for high school years
- curiosity about new classmates and relationships
- pressure and satisfaction from managing limited time and resources well

The intended fantasy is to relive high school as a teenager whose daily choices, relationships, and priorities shape their personal story across three school years.

The player is free to prioritize different definitions of success, such as relationships, academics, personal development, stability, or simply getting through school on their own terms.

## Target Players

### Primary audience

Older players who remember their own high school years and want to revisit that period through an interactive social simulation.

### Secondary audience

Assumption: players who enjoy social sims, relationship-driven progression, and calendar or schedule-based gameplay may also find the game appealing.

### Not for

Players looking primarily for:
- a full RPG experience
- a direct clone of The Sims
- a heavily main-story-driven RPG structure similar to Persona

## Product Goals

Current product goals:
- deliver a high school social sim centered on three in-game school years
- make time and activity duration meaningful in everyday play
- create memorable character-specific story arcs tied to classmates
- support multiple player priorities instead of enforcing one dominant success path
- deliver an ending that reflects exam outcomes and a simulated glimpse of the character's future

Open detail: commercial goals, release goals, and success targets are not defined yet.

## Core Pillars

- Meaningful Time Management - every activity consumes time and affects what the player can still accomplish within the day.
- Social Discovery - meeting classmates and learning about them is a central motivation loop.
- Personal School Journey - the player's path across three years is shaped by choices, priorities, and relationships.
- Character-Driven Story Arcs - classmates have custom story arcs connected to relationship building.

## Core Loop

Current draft:
- wake up at 06:00 and use limited pre-school time in the dormitory
- choose activities with explicit time costs, tracked in 15-minute increments
- let the game validate whether there is still enough time to reach school before lessons begin
- attend lessons according to the class schedule
- use the post-school period for travel, activities, and social interactions while still needing to return to the dormitory by 21:00
- spend one final hour in the dormitory before mandatory sleep at 22:00
- build relationships, grades, skills, and personal outcomes over time through repeated daily choices, travel decisions, and calendar events

Time model:
- the base unit of time is 15 minutes
- the game world tracks time through an in-world clock
- activities and lessons communicate their duration before the player commits

Day structure:
- the school day starts with wake-up at 06:00
- the player begins in the dormitory
- before school, the player can act only while there is still enough time to reach school
- after school, the player has free-form time for activities and travel
- the player must be back at the dormitory by 21:00
- from 21:00 to 22:00 the player has one final activity window
- at 22:00 sleep is mandatory

Typical activity categories:
- studying
- working
- social meetings
- using city venues such as the cinema

## Differentiators

- A time progression system where each activity and its duration matter.
- A granular daily schedule based on 15-minute increments instead of broad day-part abstraction.
- Day-level management of the student's schedule and resources.
- Custom story arcs tied to classmates rather than a single dominant main plot.
- A three-year structure built around recurring and unique calendar events.
- A schedule-validation system that makes travel time and location matter in everyday planning.
- A positioning closer to a social sim with systemic time management than to a school-themed RPG.

## Non-goals

- The game is not intended to be a full RPG.
- The game is not intended to be a clone of The Sims.
- The game is not intended to be a heavily main-story-driven RPG like Persona.

## Constraints

- Current known constraint: the vision depends on delivering three school years while keeping story arcs and time systems manageable in scope.
- The game structure depends on a multi-year event calendar with both recurring and unique events, which creates content production pressure.
- The design must support player freedom without requiring excessive branching lock-in.
- Open detail: production, content, team, and release constraints are not defined yet.

## Success Criteria

- Players feel nostalgia and emotional connection to the school setting.
- Players are motivated to meet classmates and discover their story arcs.
- Players feel that time management decisions are meaningful.
- Players can pursue different priorities without feeling forced into a single correct playstyle.
- The final exam results and epilogue feel like a credible reflection of how the player lived through school.

Open detail: measurable validation criteria still need to be defined.

## High-Level Requirements

- The game must track time in 15-minute increments using an in-world clock.
- The game must show the expected duration of an activity before the player starts it.
- The game must include resource management for at least energy, money, stress, relationships, grades, skills, and mood.
- The game must support a three-year high school structure.
- The game must include calendar-driven events across the school timeline.
- The game must include both recurring annual events and unique events.
- The game must allow players to pursue different priorities rather than enforcing one primary goal path.
- The game should avoid excessive hard-lock branching, though some long-term consequences are allowed.
- The game must end with exam results and an epilogue-style simulation of the character's possible future.
- The game must begin each day at 06:00 in the dormitory.
- The game must prevent the player from starting an activity if it would make timely arrival at school impossible.
- The game must enforce lesson attendance according to the class schedule.
- The game must allow free-form post-school activity selection until the latest return time to the dormitory.
- The game must require the player to be back in the dormitory by 21:00.
- The game must provide one final hour of dormitory activity before mandatory sleep at 22:00.
- Activity selection must be grounded in world interaction, typically by reaching a place or NPC and confirming the activity in UI.
- Each known character must have an individual relationship level tracked by the game.
- Relationship level must be usable as a condition or input for other systems and content.
- The game must not include a hard fail state from stress, low energy, or poor academic performance.
- Stress and exhaustion should reduce player effectiveness rather than causing game over or collapse states.
- Low effectiveness must reduce outcomes from learning, activities, and rewards rather than blocking play entirely.
- The academic system must reward lesson engagement and high skill levels with better test and exam outcomes.
- Each semester must end with an exam.
- The final semester exam must function as the final exam of the game.
- Travel between locations must use a distance-based model rather than a flat universal cost.
- Travel should commonly happen via bus.
- The first playable version must support at least the dormitory, school, shop, and their surrounding areas.
- A typical class should contain around 15 classmates, within an expected range of 10 to 20.
- Each classmate must have their own story arc.
- The relationship system must support friendship and romance as distinct relationship tracks or states.
- The class schedule must refresh each semester.
- Paid work must exist as an optional activity rather than a mandatory progression system.
- The shop must support purchasing items and purchasable activities where relevant.

## Open Questions

- What is the intended gameplay cadence of a normal school day versus weekends, holidays, and special event days?
- Which of the tracked resources are visible at all times, and which are intentionally hidden or abstracted?
- How exactly do low energy, high stress, bad mood, and weak skills reduce effectiveness?
- How are lessons experienced by the player: automatic time blocks, interactive scenes, or mixed presentation?
- What activities are allowed in the dormitory before school and between 21:00 and 22:00?
- How exactly does bus travel work from the player's perspective: route choice, wait time, ticket cost, or simple time skip?
- What is the minimum viable set of city venues beyond the shop for the first release?
- What are the commercial or release goals for the project?
