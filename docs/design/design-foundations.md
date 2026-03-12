# Design Foundations

## Design Goal

High School Story should create the feeling of living through a teenage school routine where time is always limited, people matter, and small everyday choices accumulate into a personal school-life story.

The design should produce:

- nostalgia and emotional familiarity
- low daily pressure with light strategic demand
- meaningful prioritization between school, social life, recovery, and self-development
- personal ownership over the final outcome of the school years

## Assumptions

These assumptions are currently used because product documentation already points in this direction, but they can still be revised.

- the tone is grounded and human rather than absurd or heavily comedic
- the game is mostly single-player, narrative-supportive, and systems-first
- the target experience is reflective and strategic, not twitch-based
- the intended pressure target is lightly demanding, closer to cozy than stressful
- the player should usually recover from mistakes within days or weeks, not become permanently doomed

## Pressure Target

The intended pressure profile is lightly demanding.

That means:

- the player should often feel they cannot do everything they want today
- the player should rarely feel one bad day has ruined the run
- recovery should matter, but should usually fit into normal play rather than requiring severe punishment cycles
- planning ahead should feel rewarding, not mandatory for basic success

In practice, this places the game between a cozy life sim and a strategy-heavy scheduler.

## Player Promise

The game promises the player:

- your time matters
- who you spend time with matters
- how you handle school pressure matters
- there is no single correct way to live through high school

## Primary Decision Tensions

Every important mechanic should reinforce at least one of these tensions.

### Time versus value

The player rarely has enough time to do everything they want. Good play means selecting the most valuable next action for current goals.

### Short-term relief versus long-term growth

Many choices should trade immediate comfort for delayed benefits, or vice versa.

Examples:

- nap now versus study now
- socialize tonight versus prepare for the exam
- work for money versus protect mood and energy

### Reliability versus expression

Safe choices should exist, but riskier or more expressive choices should sometimes pay off more when used in the right context.

### Social investment versus self-maintenance

Pursuing classmates should be rewarding, but relationships should consume real time and emotional bandwidth.

## System Role Map

To keep the design readable, each major system should own a distinct job.

| System | Primary purpose | Avoid this trap |
|---|---|---|
| Time | Creates pressure and planning | Becoming a cosmetic clock |
| Energy | Limits total productivity | Becoming a second copy of mood |
| Stress | Pushes recovery choices and risk | Becoming only a punishment meter |
| Mood | Shapes willingness and quality of optional play | Becoming a vague flavor stat |
| Money | Enables selected activities and purchases | Dominating all progression |
| Grades | Track academic consistency by subject | Overriding all endings by default |
| Skills | Improve efficiency and unlock stronger approaches | Duplicating grade progression |
| Relationships | Drive social content and emotional payoff | Becoming a hidden number grind |

## Design Principles

### 1. Understandable before optimal

Players should usually understand why a result happened even if they do not yet know the best move.

### 2. Soft failure over hard punishment

Bad states should reduce effectiveness, create complications, and change opportunities. They should not normally end the run.

For this project, soft failure should usually feel like inconvenience, inefficiency, or a missed opportunity, not a crisis spiral.

### 3. Reusable core, expressive modifiers

Shared structures should exist for production efficiency, but meaningful variation should come from modifiers, events, character traits, and situational rules.

### 4. Every repeated loop needs changing context

Any action repeated many times must stay fresh through changing stakes, different goals, relationship context, schedule pressure, or evolving player stats.

### 5. Player priorities must stay valid

If the game invites different playstyles, then academics, relationships, stability, and self-development must all create meaningful outcomes.

## MVP Design Translation

The MVP should not try to prove the full three-year game. It should prove four things:

1. daily time pressure creates real choices
2. the classroom loop is interesting enough to repeat
3. one classmate story arc can be supported by the systemic layer
4. bad condition changes play without making the game collapse

## Early Success Metrics

The design is working if early testers can say:

- I always wanted more time than I had
- I understood why I chose one activity over another
- lessons were not just filler between story scenes
- I cared who I spent time with
- recovering from a bad week felt necessary but not hopeless
- I could play in a relaxed way without feeling punished for not optimizing everything

## Current Design Boundaries

To protect scope and clarity, the current design should avoid:

- deep min-max simulation of every school subsystem
- extreme punishment for experimentation
- parallel progression bars with the same gameplay meaning
- oversized classmate rosters before the core loops are proven

## Recommended Next Step

Continue by locking the daily rhythm and lesson system, because those two structures define most repeated play and will constrain every other mechanic.
