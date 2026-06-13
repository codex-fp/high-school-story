---
title: High School Story Product Requirements Document
created: 2026-06-14
updated: 2026-06-14
---

# PRD: High School Story

## 0. Document Purpose

This PRD formalizes the product requirements for High School Story from the
current durable source documents: `docs/game-brief.md`, `docs/game-design.md`,
and `docs/narrative-design.md`. The GDD and narrative design remain the
authoritative design sources for mechanics, content, tone, cast, and story
structure. This PRD translates those decisions into player journeys, functional
requirements, non-functional requirements, scope boundaries, success metrics,
and open questions for downstream UX, architecture, epics, and stories.

## 1. Vision

High School Story is a grounded school-life social simulation about reliving all
three years of high school with more awareness, intention, and agency than real
adolescence usually allowed. The player creates a student from a small village,
moves into a Lakeview dormitory, learns the school-town routine, and shapes a
personal coming-of-age story through school, after-school choices, relationships,
clubs, money, condition, and graduation outcomes.

The core fantasy is Second-Chance Student Life. The player does not travel
through time or fix the past. They inhabit the emotional shape of high school
with enough clarity to choose who to invest in, what to prioritize, when to
recover, what to let go, and which future to grow toward.

The product promise is a three-year student-life journey, not a single-semester
slice. The first delivery target is the Year 1 Semester 1 vertical slice: a
twelve-week validation scope that proves the daily loop, school pressure,
after-school freedom, compact place discovery, relationship readability, phone
planning, condition, money, grades, exams, and fair academic failure floor.

## 2. Target Players

### 2.1 Primary Persona

**Reflective Life-Sim Player [ILLUSTRATIVE]** - A PC player who enjoys cozy or
reflective life sims, relationship progression, school-life fiction, readable
planning pressure, and emotional payoffs that come from routine and small
choices rather than spectacle. They want enough structure for decisions to
matter, but they resist harsh fail-state design and opaque optimization.

### 2.2 Jobs To Be Done

- Live a personal high school run that feels remembered rather than optimized.
- Balance school, condition, money, travel, relationships, clubs, and discovery
  under light but meaningful time pressure.
- Build a few deep relationships while accepting that not every classmate, place,
  or arc can be fully completed in one run.
- Use readable in-world information to plan fairly without turning the game into
  a spreadsheet.
- Reach graduation with outcomes that reflect academics, relationships, clubs,
  memories, and paths not taken.

### 2.3 Non-Users For MVP

- Players seeking multiplayer, open-world traversal, combat, large-scale sandbox
  building, crafting, or economy play.
- Players who expect romance to dominate the entire social loop.
- Players who want every route, classmate, location, and ending to be completed
  in one run.
- Players seeking hard survival pressure from condition stats or money.

### 2.4 Key User Journeys

- **UJ-1** - A player creates a starting student identity and begins life away
  from home in Lakeview.
- **UJ-2** - A player completes a standard weekday by moving through dormitory,
  school, afternoon freedom, evening return, and sleep.
- **UJ-3** - A player uses phone apps to inspect calendar, map, grades,
  classmate information, messages, and memories before choosing what to do next.
- **UJ-4** - A player attends lessons, makes lesson-turn choices, and sees grade
  risk and subject identity become readable over time.
- **UJ-5** - A player pursues a classmate through profile discovery, posts,
  availability, shared places, dialogue, and arc beats.
- **UJ-6** - A player manages energy, stress, mood, money, travel, curfew, and
  recovery without one bad day ruining the run.
- **UJ-7** - A player reaches semester exams and receives delayed academic and
  emotional outcome feedback.
- **UJ-8** - A player completes a full three-year run and receives graduation,
  relationship, academic, club, memory-album, and future-direction closure.

## 3. Glossary

- **Academic Failure Floor** - The only accepted hard failure path: sustained
  academic neglect can fail a semester and end the run after readable grade risk
  and at most one explicit critical warning.
- **Academic Standing** - Per-subject and overall school performance shaped by
  lesson choices, study, preparation, starting attributes, condition, and exams.
- **Arc Beat** - A specific authored relationship or narrative moment that
  advances a classmate, club, or story arc.
- **Classmate Arc** - A multi-year relationship story for one core classmate,
  shaped by stage, arc progress, discovered details, places, and player presence.
- **Condition** - Energy, stress, and mood. Poor condition creates friction and
  risk, not direct run failure or erased progress.
- **Core Classmate** - One of the target ten major classmates with a full
  multi-year arc.
- **Descriptive Relationship Stage** - Player-facing relationship labels:
  stranger, acquaintance, comfortable, close, and very close.
- **Lakeview** - The compact school town the protagonist learns through routine,
  school, dormitory, after-school travel, classmates, clubs, errands, and memory.
- **Memory Album** - Phone-based record and endgame reflection surface for
  important scenes, places, people, clubs, academics, and paths not taken.
- **Phone Apps** - Diegetic planning surfaces: calendar, map, social media,
  messages, classes or grades, and memory album.
- **Second-Chance Student Life** - The core fantasy of experiencing high school
  with clearer awareness, intention, and agency.
- **Vertical Slice** - The initial Year 1 Semester 1 delivery scope used to prove
  the full-game systems at smaller content scale.

## 4. Features

### 4.1 Student Setup And Opening

**Description:** The player starts as a student from a small village whose family
sends them to Lakeview because their village has no high school. The opening
sequence introduces arrival by bus, dormitory check-in, the phone, the player's
room, solitude, curfew, and the first morning before school. This realizes UJ-1.

**Functional Requirements:**

- **FR-1** - The player can define starting interests and preferences before or
  during early onboarding.
- **FR-2** - The player can assign academic starting attributes using a
  `1-10` point-buy model.
- **FR-3** - The opening sequence can establish the village-to-Lakeview premise,
  dormitory placement, first phone orientation, and first sleep transition.
- **FR-4** - The game can begin the first standard school day after the arrival
  night.

### 4.2 Calendar, Time, And Day Structure

**Description:** The game structures life through days, weeks, semesters, school
years, and a full three-year run. Time advances in `15` minute increments and
the weekday rhythm is dormitory morning, school block, afternoon freedom,
dormitory evening, and sleep. This realizes UJ-2 and UJ-6.

**Functional Requirements:**

- **FR-5** - The game can represent three school years ending with Year 3
  graduation.
- **FR-6** - The game can run a Year 1 Semester 1 vertical slice lasting `12`
  playable weeks.
- **FR-7** - The game can start standard weekdays at the dormitory at `06:00`.
- **FR-8** - The game can enforce or warn around dormitory return by `21:00` and
  sleep at `22:00`.
- **FR-9** - The player can see action duration before committing to activities.
- **FR-10** - The game can block impossible actions before they start and warn
  before risky actions.
- **FR-11** - Weekends can support longer hangouts, recovery, club events, route
  scenes, exploration, and optional academic catch-up.

### 4.3 Phone Planning Suite

**Description:** The in-game phone is the primary diegetic planning interface.
It exposes information a student could plausibly check and carries both system
state and narrative content. This realizes UJ-3, UJ-5, and UJ-8.

**Functional Requirements:**

- **FR-12** - The player can inspect a calendar with lessons, exams, school
  events, club meetings, deadlines, and accepted plans.
- **FR-13** - The player can inspect a map with discovered destinations, travel
  costs, known routes, and travel duration.
- **FR-14** - The player can inspect class or grade information showing subject
  standing and grade risk.
- **FR-15** - The player can inspect known classmate profiles, posts, discovered
  preferences, known location, availability, and shared memories.
- **FR-16** - The player can receive and respond to authored messages,
  invitations, planning hooks, and relationship or club prompts.
- **FR-17** - The player can inspect a memory album that records important
  scenes, recurring places, yearbook-like reflections, and endgame recap
  material.
- **FR-18** - Discovered classmate preferences become permanently visible through
  the profile layer.

### 4.4 Lessons, Grades, Exams, And Academic Failure

**Description:** School provides rhythm, pressure, contact, and long-term future
direction. Lessons use a shared three-turn structure and grades are a co-equal
long-term outcome pillar with relationships. This realizes UJ-4 and UJ-7.

**Functional Requirements:**

- **FR-19** - A standard lesson can resolve `3` decision turns of `15` minutes
  each.
- **FR-20** - During each lesson turn, the player can choose between attentive
  listening, talking, reading, browsing, and napping.
- **FR-21** - Subjects can differ by identity, tone, and hidden-but-learnable
  reward bias rather than bespoke minigames.
- **FR-22** - The game can track per-subject academic standing for math, history,
  literature, science, art, and biology.
- **FR-23** - The player can monitor grade risk with enough visibility to act
  before failure.
- **FR-24** - Each semester can end with a three-phase exam period that confirms
  and finalizes semester trajectory.
- **FR-25** - Exam outcomes can include delayed in-world result reveal,
  emotional summary, and per-subject breakdown.
- **FR-26** - Sustained academic neglect can fail a semester and end the run.
- **FR-27** - Academic failure can offer recovery saves from about `3` days,
  `2` weeks, and `2` months earlier.
- **FR-28** - The game can provide at most one explicit critical academic warning
  before semester failure.

### 4.5 Condition, Money, And Recovery

**Description:** Time is the primary resource. Condition and money are secondary
soft constraints that create planning pressure without directly ending the run.
This realizes UJ-6.

**Functional Requirements:**

- **FR-29** - The game can track energy, stress, mood, and money.
- **FR-30** - Low energy, high stress, low mood, or low money can weaken
  outcomes, increase risk, narrow options, or create recovery pressure.
- **FR-31** - Poor condition cannot directly end the run or erase earned
  relationship, skill, club, discovery, or grade progress.
- **FR-32** - The player can receive weekly allowance as baseline income.
- **FR-33** - The player can use abstract part-time work as an emergency money
  top-up with time and condition tradeoffs.
- **FR-34** - Money can affect social activities, club costs, recovery,
  academic support, consumables, and travel convenience.
- **FR-35** - Key school events should remain accessible without being
  paywalled.

### 4.6 Relationships, Profiles, And Classmate Arcs

**Description:** Relationships reward the player primarily with memory-making,
unique scenes, emotional payoff, shared places, and a more vivid school life.
The full game targets ten core classmates, but one run should meaningfully
advance about three to five arcs and usually one best-friend-level bond. This
realizes UJ-5 and UJ-8.

**Functional Requirements:**

- **FR-36** - The game can track relationship stages as stranger, acquaintance,
  comfortable, close, and very close.
- **FR-37** - The full game can support ten core classmates with multi-year arcs.
- **FR-38** - A single run can limit practical deep-arc capacity so the player
  cannot maximize all core classmates.
- **FR-39** - The Year 1 Semester 1 vertical slice can include five initial
  classmates and one fully supported lightweight arc.
- **FR-40** - The first supported lightweight arc can belong to the popular
  status-holder and test reputation, social media mask, family pressure, and
  uncurated authenticity.
- **FR-41** - Relationship scenes can gate on stage, arc progress, calendar,
  availability, discovered preferences, location discovery, club context, prior
  choices, condition, money, time, and curfew warnings.
- **FR-42** - Friendship and romance can be distinct outcomes.
- **FR-43** - The player can pursue no-romance runs that remain narratively
  complete through friendship, best-friend, found-group, academic, club, or
  self-definition outcomes.
- **FR-44** - Romance can support only one active committed romance at a time.
- **FR-45** - Best friend and romance can overlap but do not have to.
- **FR-46** - Relationship rewards should remain memory-first, with systemic
  bonuses light or absent.

### 4.7 Lakeview Places, Travel, And Discovery

**Description:** Lakeview is a compact school town learned through routine,
classmates, clubs, errands, after-school choices, and memory. Places have stable
practical functions and emotional functions. This realizes UJ-2, UJ-5, and
UJ-8.

**Functional Requirements:**

- **FR-47** - The vertical slice can support dormitory, school, district, shop,
  and park as initial locations.
- **FR-48** - The full game can support roughly `15-25` discoverable travel
  destinations.
- **FR-49** - The player can unlock locations through story, relationships,
  clubs, events, messages, or exploration.
- **FR-50** - Travel confirmation can show destination, duration, cost where
  relevant, and expected arrival time.
- **FR-51** - Each recurring place can support at least one practical function
  and one emotional function.
- **FR-52** - Places can accumulate memory value through repeated scenes, arc
  beats, phone content, and endgame memory album entries.

### 4.8 Clubs, Identity, And School Events

**Description:** Clubs are a mid-layer identity system between daily routine and
core classmate arcs. School events and club activity create social hooks,
calendar structure, and remembered places. This realizes UJ-3, UJ-6, and UJ-8.

**Functional Requirements:**

- **FR-53** - The full game can support `4-5` thematic clubs with arcs lighter
  than core classmate arcs.
- **FR-54** - Club activity can create commitments, group events, identity
  flavor, social hooks, location uses, and memory album entries.
- **FR-55** - School events can be scheduled and visible at the start of each
  month.
- **FR-56** - Club identity can contribute to graduation, memory, and future
  direction outcomes.

### 4.9 Graduation, Endings, And Memory Album

**Description:** The full game ending is a composed graduation interpretation of
academic standing, future direction, club identity, relationship stages, arc
progress, best friend, romance, memory album, and paths not taken. This realizes
UJ-8.

**Functional Requirements:**

- **FR-57** - The full game can resolve Year 3 graduation after the three-year
  run.
- **FR-58** - Graduation can summarize academic standing, future direction,
  condition and routine, club identity, relationship outcomes, and key memories.
- **FR-59** - Relationship epilogues can interpret relationship stage, arc
  progress, arc completion, special bond, and final-year presence.
- **FR-60** - Incomplete relationship endings can remain emotionally real rather
  than mechanically inferior.
- **FR-61** - The memory album can preserve specific shared moments and paths not
  taken without reading like a completion checklist.
- **FR-62** - Optional post-graduation glimpses can deepen closure where
  appropriate.

## 5. Cross-Cutting Non-Functional Requirements

- **NFR-1: Platform** - The primary platform is Desktop JVM / PC.
- **NFR-2: Performance Shape** - Simulation should advance on actions, turns,
  travel, sleep, and calendar transitions rather than continuous heavy
  second-by-second world simulation.
- **NFR-3: Readability** - The UI must make time, condition, money, grades,
  relationship stages, availability, travel, curfew, and risk legible before
  meaningful commitment.
- **NFR-4: Content Language** - Project documentation and implementation-facing
  narrative content remain English unless a future localization contract accepts
  localization.
- **NFR-5: Tone** - Writing should be grounded, nostalgic, cozy-leaning, lightly
  demanding, contemporary, economical, and character-specific.
- **NFR-6: Agency** - The player is a witness, catalyst, participant, and safe
  person, not a savior.
- **NFR-7: Fairness** - Missed content and unfinished relationships should define
  the player's school years without implying incorrect play.
- **NFR-8: Scope Control** - New systems must preserve the daily loop instead of
  diluting it into broad sandbox, economy, crafting, or management play.

## 6. Non-Goals

- Multiplayer.
- Combat progression or supernatural spectacle.
- Large open-world traversal.
- Heavy itemization, inventory complexity, crafting, supply chains, markets, or
  investment systems.
- Building, construction, base-building, or room decoration unless a future
  design change explicitly accepts dorm personalization.
- Deep delinquency, heavy truancy, or exploit loops that trivialize time
  pressure.
- Separate bespoke minigames for each subject.
- Condition-based hard fail states.
- Content-rich part-time work subplot or default work grind.
- Heavy simulated social network beyond authored lightweight posts, profiles,
  messages, and planning hooks.
- Club-management simulation.
- Romance as the dominant or superior social outcome.
- A global ending taxonomy that reduces graduation to route labels.
- Licensed music, voiced dialogue, or full localization contract for MVP.

## 7. MVP Scope

### 7.1 In Scope For Year 1 Semester 1 Vertical Slice

- One playable `12`-week semester at the start of Year 1.
- Standard weekday rhythm from dormitory morning through sleep.
- `15` minute time increments.
- Dormitory, school, district, shop, and park as initial locations.
- Fixed school schedule backbone and academic calendar visibility.
- Monthly school event visibility.
- Initial phone app scope for planning, map, grades, messages, profiles, and
  memory.
- Shared three-turn lesson structure.
- Condition, money, weekly allowance, recovery, and abstract part-time work.
- Five initial classmates.
- One fully supported lightweight popular status-holder arc.
- Profile discovery, posts, rumors, public/private contrast, and after-school
  social scenes.
- Semester exam period, result reveal, academic failure handling, and recovery
  save options.

### 7.2 Out Of Scope For MVP

- Full three-year progression. [v2 - out of MVP]
- Full graduation ending structure. [v2 - out of MVP]
- Full ten-classmate arc coverage. [v2 - out of MVP]
- Full `15-25` destination Lakeview network. [v2 - out of MVP]
- Full `4-5` club system. [v2 - out of MVP]
- Complete phone app suite. [v2 - out of MVP]
- Full soft academic profile and future-path system. [v2 - out of MVP]
- Complete relationship epilogue and memory-album system. [v2 - out of MVP]

## 8. Success Metrics

### 8.1 MVP Success Metrics

- A player can complete a standard weekday from `06:00` dormitory start through
  school, after-school choice, dormitory evening, and sleep.
- Standard lessons resolve `3` decision turns of `15` minutes each.
- Testers report that time planning mattered.
- Testers report that the most interesting daily decision usually happened after
  school.
- Testers report caring about at least one classmate.
- Testers can explain why at least two subjects felt different after `1-2`
  lessons each.
- A weak-condition day creates friction without making testers feel the run is
  ruined.
- Academic failure, if reached, feels bitter but fair and mostly self-inflicted.
- Phone-based profile discovery makes relationship pursuit readable without
  turning it into pure optimization.
- Testers understand that the first semester is proving systems for a larger
  three-year game.

### 8.2 Full-Game Success Metrics

- Players finish a full run feeling it was their remembered high school life,
  not a solved checklist.
- Players can identify their best friend, closest group, strongest academic
  direction, and most meaningful missed path.
- Players understand why they could not maximize all ten core classmates in one
  run.
- Year 1 and Year 2 feel like the strongest discovery and development years.
- Year 3 feels like culmination and closure rather than content exhaustion.
- Graduation outcomes reflect both relationships and academics.
- Memory-album recap celebrates chosen paths and subtly acknowledges unchosen
  ones without framing them as failure.

### 8.3 Counter-Metrics

- Do not optimize for completing every classmate arc in one run.
- Do not optimize for maximal daily efficiency over memorable tradeoffs.
- Do not optimize for romance conversion as the main measure of social success.
- Do not optimize for harsh condition failure or survival pressure.
- Do not optimize for content quantity if it weakens readability of the daily
  loop.

## 9. Risks And Mitigations

- **Full-game vs MVP expectation drift:** Keep full game as product promise and
  MVP as validation strategy in all planning artifacts.
- **Scope drift in the vertical slice:** Keep the first semester limited to one
  real lightweight arc and a small initial location set.
- **Weak first arc:** Make the popular status-holder arc strong enough to test
  reputation, social media mask, private pressure, and uncurated authenticity.
- **Opaque systems:** Surface enough grade, time, condition, travel, and
  preference information for fair planning through the phone and UI.
- **Narrative savior framing:** Keep player choices focused on presence,
  boundaries, interpretation, and support rather than fixing classmates.
- **Long-term content scale:** Expand through modular classmate arc bibles,
  phone content packs, place memories, club scenes, and year-specific beats.

## 10. Open Questions

1. What exact formulas define lesson risk, condition thresholds, academic failure
   thresholds, money pressure, recovery efficiency, study efficiency, and exam
   weighting?
2. What final names, pronouns, visual identities, and voice rules define the ten
   core classmates?
3. Which ten classmate arcs are romance-compatible?
4. Which `4-5` clubs become full-game identity layers?
5. Which `15-25` Lakeview destinations are core to the full-game town network?
6. What exact memory album categories should exist in the phone UI?
7. How should academic future outcomes combine with relationship and club
   endings?
8. How should conflict and repair be represented inside arc progress without a
   separate conflict-state taxonomy?
9. What concrete post-MVP expansion path turns the semester slice into the full
   three-year game?
10. What production timeline, budget, and team composition are realistic?

## 11. Assumptions Index

- The primary platform remains Desktop JVM / PC.
- Persona detail is illustrative and derived from the current brief, not from
  external player research.
- Exact balancing formulas remain outside this PRD until the balancing task
  resolves them.
- No licensed music, voiced dialogue, multiplayer, or localization contract is
  required for MVP.
