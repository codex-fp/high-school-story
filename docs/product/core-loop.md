# Core Loop

## Overview

High School Story is built around a daily loop of time management, movement between locations, scheduled school obligations, and optional self-directed activities. The player is not pushed toward one single win condition. Instead, they shape their own version of success across three years of high school.

## Core Player Loop

1. Check current time, location, schedule, and upcoming calendar constraints.
2. Choose the next activity based on available time, travel distance, resources, and priorities.
3. Travel to the required location if needed.
4. Confirm and perform the activity.
5. Update time, resources, skills, grades, and relationships.
6. Repeat until the next hard schedule boundary such as lessons, dorm return time, or sleep.

## Daily Structure

### Morning

- The day starts at 06:00 in the dormitory.
- The player has a limited pre-school window for short activities.
- The game prevents starting any activity that would make timely arrival at school impossible.

### School Hours

- Lessons happen according to the semester timetable.
- The timetable changes every semester.
- The player is expected to attend lessons; skipping is not a standard gameplay path.
- A standard lesson is played as a 3-turn sequence, with each turn lasting 15 minutes.
- In each turn, the player chooses an action with a distinct reward, cost, and risk profile.
- The lesson goal is not only to avoid punishment, but to get the most useful outcome for the player's current needs.

### After School

- The player can travel and perform activities freely.
- Available choices depend on location, time, resources, and relationship opportunities.
- The player must still be able to return to the dormitory by 21:00.

### Weekends

- Weekends use the same 15-minute time model but remove school attendance from the loop.
- Weekend play should emphasize story arc progress, stronger recovery, and development activities.
- Weekend gameplay should feel qualitatively different from a normal school day rather than simply offering more free time.

### Night

- From 21:00 to 22:00 the player gets one last activity window in the dormitory.
- At 22:00 sleep is mandatory.

## Time System

- The base unit of time is 15 minutes.
- The world clock is visible and meaningful.
- Activities communicate their duration before confirmation.
- Travel time matters and must be considered before committing.

## Main Decision Axes

The player's everyday decisions revolve around balancing:

- academic progress
- relationships
- money
- mood and stress
- energy
- skill growth
- use of limited free time

## Player-Facing Stats

- Core visible stats in MVP are energy, stress, mood, money, and grades.
- Relationships are tracked per character but presented through descriptive states rather than raw numbers.
- MVP skills are broad categories: learning, social, and physical.

## Activity Types

The current key activity groups are:

- studying
- paid work
- social meetings
- using city venues such as the cinema
- shopping for items or purchasable activities

## Lesson Actions

The MVP lesson action set is:

- attentive listening
- talking
- reading
- browsing
- napping

Each action must support a different player goal, such as grades, relationships, mood, recovery, or specific development.

## Travel Model

- Locations are separated by different distances.
- Travel cost is not flat across the map.
- Travel commonly uses the bus system.
- Location matters because it changes what the player can still do before the next schedule boundary.

## Relationship Loop

- Each known classmate has an individual relationship level.
- A typical class contains about 15 classmates, with an expected range of 10 to 20.
- Every classmate has their own story arc.
- The relationship system supports friendship and romance as separate relational outcomes.
- Relationship level can gate or influence events, interactions, and other outcomes.
- In MVP, relationship progress is shown through descriptive states: stranger, acquaintance, likes you, close.

## Academic Loop

- Better lesson engagement improves academic outcomes.
- Higher skill levels improve results on tests and exams.
- Grades are tracked per subject.
- MVP subjects are math, history, literature, science, art, and biology.
- Each semester ends with an exam.
- In MVP, the semester exam uses a mixed model: prior performance matters, but the exam is also presented as its own scene or decision sequence.
- The final semester exam acts as the final exam of the game.
- Final outcomes contribute to the ending and post-school future simulation.

## Failure and Recovery Philosophy

- The game does not use hard fail states for stress, fatigue, or poor grades.
- Negative conditions reduce effectiveness instead of ending the run.
- Poor condition should lead to weaker learning, weaker activity performance, and lower rewards.
- Poor condition should also create immediate penalties such as higher risk, weaker action outcomes, mood loss, stress spikes, and wasted turns when appropriate.
- The game should not reduce already-earned relationship or skill levels.

## Design Intent

- The loop should create constant low-level pressure without punishing experimentation too harshly.
- Players should feel that planning matters.
- Players should be able to specialize, but not be forced into one correct playstyle.
- The experience should support nostalgia, routine, and emergent personal stories.

## Open Questions

- How should different teachers and subjects modify the shared lesson-action system?
- What exact formulas drive low-effectiveness penalties and catch-risk changes?
- Which specific dormitory activities should be available in the morning versus between 21:00 and 22:00?
- Which city venues beyond the shop are required in the first playable version?
