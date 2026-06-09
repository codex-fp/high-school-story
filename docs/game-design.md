# High School Story Game Design Document

This is the durable game-design source of truth for High School Story. It
promotes the `HSS-15` GDD planning artifact and the `HSS-16` brainstorming
refinement into repository documentation.

The planning artifact remains available as workflow history at
`_bmad-output/planning-artifacts/gdds/gdd-high-school-story-2026-06-09/`.

## Document Scope

This GDD is **MVP-first**. It defines the playable first-semester slice that must
prove the game. It also records full-game direction where needed to prevent MVP
decisions from blocking the intended larger product.

MVP means:

- One playable `12`-week semester.
- Five classmates in the social layer.
- One fully supported lightweight classmate arc.
- Minimal teaser support for the remaining classmates.
- Five MVP locations: `dormitory`, `school`, `district`, `shop`, and `park`.
- Shared lesson structure rather than bespoke subject minigames.

Full-game direction means:

- Every classmate eventually has an equally rich story arc.
- A full run lets the player meaningfully push about `3-5` arcs toward best
  outcomes, but not maximize all classmate arcs.
- Multi-year progression, larger cast density, more locations, richer endings,
  and broader relationship coverage are post-MVP concerns.

## Executive Summary

### Core Concept

High School Story is a grounded school-life social simulation built around the
fantasy of **Second-Chance Student Life**: returning to high school with more
awareness, intention, and agency than real life allowed.

The player creates a high school student, defines their starting interests and
academic strengths, and guides one playable semester through routine, lessons,
relationships, activities, travel, condition management, money pressure, grades,
and semester outcomes.

School sets the rhythm, creates academic pressure, and generates opportunities.
The emotional center of play is usually after school: deciding where to go, who
to look for, what to spend money on, and whether today's best memory is worth the
time and condition cost.

The game is not about finding one optimal path. It is about living with tradeoffs
and shaping a student life that feels personal.

### Target Audience

- Players who enjoy cozy or reflective life sims with readable systems.
- Players who like relationship progression but do not want romance to dominate
  every loop.
- Players who enjoy planning under light pressure without condition-based hard
  fail states.
- Players interested in school-life fiction, coming-of-age tone, and small daily
  choices.

### Unique Selling Points

- A school-life loop where time, relationships, academics, travel, money, and
  condition compete for the same day.
- A Second-Chance Student Life fantasy where the player starts with explicit
  interests and academic attributes.
- Descriptive relationship stages instead of exposed raw affinity numbers.
- Discoverable classmate profiles and current known-classmate locations through
  an in-world social media layer.
- Lessons where subject identity dominates lesson feel, without separate bespoke
  minigames for each subject.
- A fair academic floor: weak condition creates friction, but fully neglecting
  school can cause a readable semester failure.

## Goals And Context

### Project Goals

- Deliver a playable MVP semester that proves the daily rhythm before full
  multi-year scope.
- Make after-school planning meaningful from the first vertical slice.
- Support one lightweight classmate arc while proving broader social-layer
  structure.
- Prove lessons, grades, condition, money, travel, profiles, social media
  planning, and recovery as connected systems.
- Keep design precise enough for architecture, epics, story creation, and
  playtesting.

### Player Promise

- Your time matters.
- Who you invest in matters.
- How you handle school pressure matters.
- What you discover after school matters.
- Who your player character already is matters.
- There is no single correct way to live through high school.

### Target Experience

The intended feel is nostalgic, grounded, cozy-leaning rather than stressful,
lightly demanding rather than frictionless, and reflective rather than
twitch-based.

The player should often feel they cannot do everything they want today. They
should rarely feel one bad day or one bad week has ruined the run. Recovery is
normal planning, not failure cleanup.

Academic collapse is the exception: fully neglecting school can fail the
semester, but only after readable grade visibility and at most one explicit
critical warning.

## Core Gameplay

### Game Pillars

1. **Second-Chance Time Pressure:** The calendar, clock, travel, school
   obligations, curfew, money, and sleep turn ordinary days into meaningful
   tradeoffs with clearer agency than real adolescence allowed.
2. **Relationships As Memory-Making:** Classmate investment primarily rewards the
   player with missable scenes, emotional payoffs, and a more vivid semester
   rather than major systemic bonuses.
3. **School As Opportunity Engine:** School is a baseline cost, contact point,
   event source, and academic floor. It should feed after-school choices while
   remaining possible to fail if fully neglected.
4. **Place-First Personal Routine:** Dormitory, school, district, shop, and park
   actions express believable student life through compact exploration, stable
   location identities, preparation, recovery, study, social play, and small
   spending choices.

### Core Gameplay Loop

1. Start a day with visible time, location, condition, money, school pressure,
   known calendar structure, and social media information for known classmates.
2. Navigate school as the weekday backbone: attend lessons, absorb academic
   pressure, discover hooks, and receive contact with classmates and teachers.
3. Use after-school freedom for the day's highest-value decision: explore a
   place, pursue a classmate, recover, study, spend money, work, or prepare.
4. Resolve immediate consequences and carry long-term effects into relationship
   stages, discovered preferences, subject standing, stress, energy, mood, money,
   and calendar events.
5. Reassess tomorrow's priorities based on missed opportunities, known classmate
   locations, condition, money, upcoming lessons, exams, and social profile
   discoveries.

### Win And Loss Conditions

The MVP uses a soft-outcome structure with one hard floor: academic collapse can
fail the semester. A normal semester completes when the `12`-week period, exam
period, result reveal, and available relationship outcomes resolve.

Player-facing outcomes include:

- Semester academic result with per-subject breakdown.
- Condition and routine summary.
- Friendship outcome for known classmates based on relationship stage and arc
  completion.
- Romance outcome if the player committed to one romance route.
- Lightweight narrative reflection on the student's first semester at Lakeview.

Academic failure rules:

- Fully neglecting school can cause semester failure and end the run.
- The player has ongoing visibility into grade risk and can monitor danger
  without constant hand-holding.
- The game may provide at most one explicit critical academic warning when the
  situation becomes severe.
- Failure should summarize the causes clearly.
- Recovery options after failure may include loading from `3` days, `2` weeks, or
  `1` month earlier.

Condition failure rules:

- Low energy, high stress, low mood, or low money should not directly end the
  run.
- Poor condition creates weaker outcomes, higher risk, social friction, and
  recovery pressure.
- Poor condition should not erase earned relationship, skill, or grade progress.

## Game Mechanics

### Calendar And Time

- MVP duration: `12` weeks.
- Base time unit: `15` minutes.
- Standard weekday start: dormitory at `06:00`.
- Dormitory return deadline: `21:00`.
- Automatic sleep: `22:00`.
- Weekday rhythm: dormitory morning, school block, afternoon freedom, dormitory
  evening, sleep.
- Weekends emphasize longer hangouts, better recovery, stronger route scenes, and
  optional packed-day planning. Academic catch-up is available but should not
  dominate weekend identity.
- Academic structure is visible from the start of the semester, including lessons
  and exams.
- School events are scheduled and visible at the start of each month.

### Action Validation

- Activities show duration before confirmation.
- Travel shows destination, duration, and expected arrival time.
- Impossible actions are blocked before start.
- Risky actions are allowed only when a readable warning and likely consequence
  can be shown.
- School attendance and return-to-dorm boundaries protect the player from
  accidental self-sabotage.

### Lessons

Standard lessons use `3` decision turns. Each turn represents `15` minutes and
offers one player action.

Lesson actions:

- `attentive listening`: safest academic baseline.
- `talking`: social opportunism with catch risk.
- `reading`: targeted academic focus.
- `browsing`: low-effort relief with academic cost.
- `napping`: short-term survival tool.

Lesson variation is driven mainly by subject identity. Subjects differ through
hidden-but-learnable reward biases, tone, and action weighting. Teachers can be
characters, social hooks, and optional arc participants, but should not be the
dominant factor in how lessons play or feel. Players should begin sensing a
subject's character within `1-2` lessons.

### Academics And Grades

Grades are tracked per subject:

- `math`
- `history`
- `literature`
- `science`
- `art`
- `biology`

Academic standing comes from lessons, targeted study, starting academic
attributes, broad skill growth, semester preparation, and exam execution. Grades
are a major pillar but not the dominant pillar.

Academic structure:

- The player can pursue relationship-heavy or recovery-heavy runs while
  maintaining minimum academic viability.
- Fully neglecting school can fail the semester.
- Grade standing is visible enough for players to monitor risk themselves.
- Critical danger can trigger at most one explicit academic warning.

### Semester Exam

Each semester ends with an exam period. The MVP exam is a medium-complexity
shared scene with short subject-specific accents.

- Structure: `3` phases.
- Player input: shared style-choice structure.
- Main driver: semester preparation.
- Day-of modifiers: energy and stress meaningfully affect execution.
- Role: confirm and finalize the semester's academic trajectory more than rescue
  a weak semester.
- Output: delayed in-world result reveal with emotional summary and per-subject
  breakdown.

### Relationships

Relationships are tracked per known classmate. Player-facing stages are
descriptive:

- `stranger`
- `acquaintance`
- `comfortable`
- `close`
- `very close`

Friendship and romance are distinct outcomes. The player can explore interest
with multiple classmates before commitment, but can have only one active
committed romance at a time.

Social opportunities should usually appear in sets of `1-2`. Missed
opportunities should feel like life tradeoffs, not punishment.

Relationship reward rules:

- The main reward is a more vivid and memorable semester through unique scenes,
  emotional payoffs, and relationship-specific content.
- Systemic bonuses from relationships should remain light or absent.
- Full vision: every classmate has an equally rich story arc.
- MVP scope: one fully developed arc, with remaining classmates kept
  intentionally minimal as teasers for fuller routes.
- Long-term full-game target: the player can meaningfully push approximately
  `3-5` arcs toward their best outcomes in one full-game run, but cannot fully
  maximize all classmate arcs.

Compatibility and profile discovery:

- Arc progress is driven mainly by compatibility of interests, favorites,
  personality fit, and non-conflicting values.
- Compatibility is not a lifestyle build that the player freely reshapes during
  the run.
- Classmate interests and preferences begin hidden and are uncovered through
  direct interaction or indirect discovery.
- Discovered information becomes permanently visible in an in-world social media
  profile.
- Discovered preferences unlock fair future arc progress and may unlock activity
  or invitation types.

Known-classmate location visibility:

- Once a classmate is known, their current location and availability become
  visible through the social media layer.
- Social planning remains constrained by travel time, activity duration, money,
  and condition rather than hidden character whereabouts.

### Condition And Recovery

- `energy`: main performance limiter.
- `stress`: main risk amplifier.
- `mood`: main quality-of-life and social-efficiency stat.
- `money`: regular secondary soft constraint.
- Grades: academic standing, tracked per subject.

Poor condition weakens outcomes and increases risk. It should not normally create
hard fail states or erase earned relationship, skill, or grade progress.

### Starting Profile And Skills

The player defines a fairly detailed starting profile before the semester begins.

Starting profile rules:

- Interests and favorites are selected directly, not inferred through a quiz.
- Interests/preferences use toggle-style choices across cultural domains such as
  music, film, food, and leisure activities.
- Academic attributes use `1-10` numeric values assigned through point-buy.
- Interests/preferences and academic attributes remain independent at the start
  and do not cross-boost each other.
- Starting profile choices should be explicit, readable, and strategically
  meaningful.

Broad growth areas:

- `learning`
- `social`
- `physical`

Skills support broad action efficiency and flavor. They should not replace
grades, relationships, or condition as the main feedback surfaces.

### Locations

- `dormitory`: recovery and preparation base.
- `school`: mandatory academic and social backbone.
- `district`: connective movement hub.
- `shop`: utility spending and small support actions.
- `park`: hangouts, recovery, and low-pressure social scenes.

The `park` is the aligned MVP extra venue because it proves after-school social
life, recovery, and low-pressure relationship scenes without heavy economy scope.

Location design rules:

- After-school discovery is place-first: the player should get ideas by
  physically going somewhere and seeing what that place offers.
- Locations have stable identities first and context-sensitive variation second.
- Exploration is compact but real: the player moves through readable spaces,
  finds people and points of interest, and avoids large navigation-heavy maps.

### Controls And Input

[ASSUMPTION: The MVP uses desktop keyboard/mouse input because the current target
platform is Desktop JVM and the project runs through desktop launchers.]

Required input capabilities:

- Move the player in playable scenes.
- Inspect current time, location, condition, grade standing, and relationship
  stage.
- Inspect known classmate profiles, discovered preferences, current
  known-classmate locations, and current availability through social media.
- Inspect the academic calendar, monthly school events, and current money.
- Open and choose dialogue options.
- Confirm or cancel actions after seeing duration and consequences.
- Choose lesson actions across `3` turns.
- Choose travel destination after seeing duration and arrival time.

No reflex or twitch mastery is required. Input should support reflective choice,
readable confirmation, and low-pressure exploration.

## Simulation Specific Design

### Core Simulation Systems

High School Story simulates a student's everyday semester at an
abstract-but-readable level. It does not attempt full school realism. It models
enough pressure, routine, and social continuity for player choices to feel
consequential.

Primary systems:

- Calendar and day phase.
- Clock and `15`-minute action costs.
- Player starting profile: interest toggles and academic point-buy attributes.
- Location and travel network.
- School attendance and lesson turns.
- Per-subject grade standing.
- Condition stats: energy, stress, mood, money.
- Relationships, descriptive stages, discovered preferences, and social media
  profiles.
- Known-classmate location visibility and availability.
- One MVP lightweight arc plus teaser interactions for remaining classmates.
- Semester exam preparation and result reveal.

Key interconnections:

- Time limits how many academics, recovery, social, travel, and shop actions fit
  into a day.
- Travel consumes time and can make school or curfew boundaries risky.
- Energy, stress, and mood affect lesson, study, social, and exam outcomes.
- Lessons affect grades, condition, and occasional social momentum.
- Weekends alter recovery and social opportunity density.
- Relationship opportunities compete directly with grades, money, travel, and
  recovery.
- Discovered preferences make social planning fairer without removing time and
  condition tradeoffs.
- Starting interests shape social compatibility without changing academic
  attributes.

Emergent behavior boundaries:

- The player may recover from poor condition through planned rest and softer
  days.
- The player may favor social life, academics, or balance without a single
  required build.
- The player may miss opportunities, but core progress should remain recoverable
  unless the player repeatedly ignores an area.
- The player may fail the semester through sustained academic neglect.
- The player should not be tricked into social failure once relevant classmate
  preferences have been discovered.
- The MVP should not support deep delinquency, heavy truancy, or exploit loops
  that trivialize time pressure.

Simulation state advances on action completion, travel completion, lesson turn
resolution, sleep, and calendar transitions rather than continuous
second-by-second management.

### Management Mechanics

The primary managed resource is time. Condition, money, relationship opportunity,
and grade standing are secondary resources that create planning pressure.

Management decisions:

- Spend morning time on preparation, recovery, social contact, or study.
- Decide each lesson turn between safe academics, targeted focus, social risk,
  relief, or survival.
- Choose one major after-school priority plus usually one small supporting
  action.
- Use social media to decide whether a known classmate is reachable today.
- Choose whether to follow a place-based discovery hook or a planned calendar
  priority.
- Decide whether current condition justifies recovery over advancement.
- Decide when to spend money on social activities, comfort, academic support,
  consumables, or travel convenience.
- Decide when abstract part-time work is worth the time and condition cost.
- Decide whether to pursue friendship, romance, academics, balance, or recovery
  on a given day.

The MVP has no automation or delegation systems. The player makes manual daily
decisions.

### Economic And Resource Loops

Money is a regular secondary soft constraint, not the primary economy.

MVP money loop:

- Baseline income: weekly allowance from parents.
- Optional top-up: abstract part-time work.
- Expenses: social activities, recovery/comfort, academic support, consumables,
  and travel convenience such as tickets or taxis to farther locations.
- Key school events should generally not be paywalled.
- No supply chains, market dynamics, trading, crafting, or investment systems.
- Money should open selected options, not solve time pressure.
- Part-time work is an emergency tool and lifestyle tradeoff. It costs valuable
  time and likely condition, and should not become a default grind loop.

Economic pacing target:

- A player should feel small purchases matter.
- A player should not need detailed budgeting to complete the semester.
- Being low on money should narrow convenience and support options, not hard-lock
  the run.
- Players should sometimes feel meaningfully low on cash, but not forced into
  frequent work as the optimal baseline.

### Progression And Unlocks

Progression surfaces:

- Calendar progression through `12` weeks.
- Starting profile identity through interest toggles and academic attributes.
- Relationship stages per known classmate.
- One fully supported lightweight classmate arc of roughly `10` steps.
- Lighter MVP interaction roles for the remaining classmates.
- Discovered classmate preferences and social media profile completion.
- Per-subject grade standing across the semester.
- Broad skills: `learning`, `social`, `physical`.
- Semester exam and result reveal.

Unlock style:

- Relationship scenes unlock through relationship stage, calendar timing,
  availability, and prior arc steps.
- Some relationship progress unlocks through discovered preferences and
  compatible interests.
- Study and lesson efficiency improves through broad skills and learned subject
  patterns.
- Weekends unlock longer social, route, recovery, and optional catch-up blocks.

Difficulty scaling:

- Weeks `1-2`: orientation, routine learning, starting-profile expression,
  low-stakes social introductions, visible time pressure.
- Weeks `3-6`: place-first after-school discovery, classmate profile reveals,
  subject patterns, condition and money tradeoffs, early grade feedback.
- Weeks `7-10`: stronger schedule competition, arc commitments, school events,
  academic danger visibility, exam preparation pressure.
- Weeks `11-12`: exam confirmation, relationship resolution pressure, final
  recovery and prioritization decisions.

[ASSUMPTION: Exact formulas for lesson risk, condition thresholds, academic
failure thresholds, study efficiency, recovery efficiency, money pressure, and
exam weighting remain open until HSS-2 balancing work.]

### Scenario Frame

The MVP is a scenario-mode semester, not a sandbox.

Scenario constraints:

- Fixed `12`-week semester.
- Fixed school schedule backbone.
- Fixed core location set.
- Fixed exam period and result reveal.
- Fixed dormitory curfew and sleep expectations.
- Fixed academic calendar visibility from the start of the semester.
- Monthly school event visibility at the start of each month.

Building, construction, room decoration, automation, delegation, crafting,
supply chains, markets, and investments are out of MVP scope.

## Level Design Framework

The MVP uses locations and daily scenes rather than traditional levels.

Location types:

- Dormitory base scenes.
- School block scenes.
- District traversal and connection scenes.
- Shop utility scenes.
- Park recovery and social scenes.
- Compact place-exploration scenes with stable hotspots.
- Intro arrival sequence.
- Exam period scenes.

Scene types:

- Freeform location exploration.
- Dialogue interaction.
- Lesson decision loop.
- Travel confirmation.
- Recovery action.
- Study action.
- Social media/profile inspection.
- Social opportunity.
- Place-based discovery hook.
- Abstract part-time work action.
- Classmate arc beat.
- Result reveal.

Calendar progression:

- Intro: Arrival to Lakeview on August 29, late afternoon.
- First morning: player wakes in dormitory before school.
- Standard weekdays: morning, school block, afternoon, evening, sleep.
- Weekends: longer recovery, hangout, route, and optional catch-up
  opportunities.
- Exam period: `3`-phase exam scene and delayed results.
- Semester close: outcome summary and relationship/academic reflection.

## Art And Audio Direction

### Art Style

The art direction should support grounded, nostalgic, cozy-leaning school life.

Design goals:

- Readable locations and interaction points.
- Compact locations with stable visual identity and discoverable hotspots.
- Warm late-afternoon and evening tones for arrival and reflective moments.
- Plain-but-specific school and dorm details rather than exaggerated fantasy
  sets.
- UI clarity for time, condition, grades, money, relationship stages, social
  media profiles, discovered preferences, and known-classmate location.

### Audio And Music

Audio should reinforce routine and place.

Design goals:

- Soft ambient loops for dormitory, school, district, shop, and park.
- Quiet transitional sounds for travel, bus arrival, school bell, phone
  vibration, and sleep.
- Music that supports reflection and light pressure without high-stress
  escalation.
- Intro audio tone: bus hum, warm exterior ambience, cicadas, quiet dorm room.

[ASSUMPTION: No licensed music or voiced dialogue is required for the MVP.]

## Technical Specifications

No accepted hard FPS or frame-budget contract exists yet. The MVP should stay
within comfortable desktop performance for a 2D school-life sim and avoid design
scope that requires large crowds, simulation-heavy background actors, or
continuous high-frequency world simulation.

GDD-level technical constraints:

- Target platform: Desktop JVM.
- Simulation advances at action, turn, travel, sleep, and calendar boundaries.
- MVP location set remains small: `dormitory`, `school`, `district`, `shop`,
  `park`.
- MVP social cast remains `5` classmates.
- MVP uses one fully supported lightweight classmate arc.
- MVP social media scope covers known-classmate profiles, discovered preferences,
  current known-classmate location, and availability.

This GDD intentionally does not specify internal implementation architecture.

MVP asset categories:

- Player character presentation.
- Generic character presentation.
- Five classmate portraits or readable character presentations.
- Social media/profile UI assets for known classmates, preferences, current
  location, and availability.
- Character setup UI assets for interest toggles and academic point-buy
  attributes.
- Dormitory, school, district, shop, and park location assets.
- Intro bus arrival and dorm check-in scene assets.
- Dialogue UI assets.
- Time, condition, grade, relationship, and money UI assets.
- Ambient audio for key locations and transitions.

## Development Epics

Detailed planning lives in the promoted GDD artifact's `epics.md` until an epics
workflow promotes it into durable production stories.

Summary sequence:

| Epic | Purpose | Related Tasks |
|---|---|---|
| Epic 1: MVP Design Finalization | Lock subject framing, balancing guardrails, cast roles, social media/profile rules, first arc constraints, and academic failure floor. | HSS-1, HSS-2, HSS-3, HSS-16 |
| Epic 2: Calendar and Day Structure | Build the semester, weekday/weekend, clock, day phase, sleep, and debug visibility foundation. | HSS-4 |
| Epic 3: First Playable Weekday | Prove the playable dorm-school-afternoon-evening-sleep loop. | HSS-5 |
| Epic 4: Location Travel and Validation | Add MVP locations, compact place discovery, travel costs, destination preview, and action boundary validation. | HSS-6, HSS-16 |
| Epic 5: Lessons and Academic Standing | Implement the shared `3`-turn lesson loop, subject-dominant differences, grade updates, and academic danger visibility. | HSS-1, HSS-7, HSS-16 |
| Epic 6: Condition, Money, and Recovery | Add energy, stress, mood, money, allowance, abstract work, recovery, and weak-condition friction. | HSS-2, HSS-8, HSS-16 |
| Epic 7: Relationships, Profiles, and First Arc | Add five classmates, descriptive stages, social media profiles, discovered preferences, known-classmate location, one `10`-step lightweight arc, friendship and romance outcomes. | HSS-3, HSS-16 |
| Epic 8: Semester Exam and Outcome Reveal | Add exam period, result reveal, academic failure handling, and semester summary outcomes. | Future task, HSS-16 |
| Epic 9: Player Setup and Starting Identity | Add upfront interest toggles and academic point-buy attributes. | Future task, HSS-16 |

## Success Metrics

### Technical Metrics

- A player can start a standard weekday in the dormitory at `06:00`.
- Time advances in `15`-minute increments.
- A weekday can transition through school, afternoon freedom, dormitory evening,
  and sleep.
- Action and travel validation can block impossible choices and warn on risky
  choices.
- Standard lessons resolve `3` decision turns of `15` minutes each.
- Condition, grades, money, relationship stages, social media profiles, and
  known-classmate locations are visible or inspectable during playtesting.
- Academic failure risk can be surfaced through grade visibility and at most one
  explicit critical warning.

### Gameplay Metrics

- Testers report that time planning mattered.
- Testers report that the most interesting daily decision usually happened after
  school.
- Testers report caring about at least one relationship.
- Testers can explain why at least two subjects felt different after `1-2`
  lessons each.
- A weak-condition day creates friction without making testers feel the run is
  ruined.
- Academic failure, if reached, feels bitter but fair and mostly self-inflicted.
- Weekends feel structurally different from weekdays.
- The first classmate arc feels paced across the semester rather than dumped in
  one block.
- Social media/profile discovery makes relationship pursuit readable without
  turning relationships into optimization.

## Out Of Scope

MVP excludes:

- Full multi-year progression.
- Final post-school ending structure.
- Full cast-scale story coverage.
- Large venue roster beyond `dormitory`, `school`, `district`, `shop`, and
  `park`.
- Heavy itemization or inventory complexity.
- Deep delinquent or truancy playstyle support.
- Separate bespoke minigames for each subject.
- Hard fail states from condition.
- Building, construction, base-building, and room decoration systems.
- Automation, delegation, crafting, supply chains, markets, or investments.
- Large-scale economy.
- Content-rich part-time work subplot.
- Multiplayer.
- Licensed music.
- Full localization contract.

Post-MVP candidates:

- Multi-year progression.
- More classmates and deeper relationship arcs.
- Full equally rich arcs for every classmate.
- Additional locations.
- More teacher archetypes.
- Dorm room personalization if it reinforces routine and identity.
- More robust endings and post-school outcomes.

## Assumptions And Dependencies

Dependencies:

- `HSS-1` must finalize subject framing and lesson assumptions before lesson
  implementation locks content and player-facing language.
- `HSS-2` must create balancing guardrails before formulas, academic failure
  thresholds, money pressure, and part-time work tradeoffs are treated as stable.
- `HSS-3` must define five classmates, first arc constraints, and
  profile/discovery categories before relationship content implementation.
- `HSS-4` provides calendar/time/day phase foundations for `HSS-5` through
  `HSS-8`.
- `HSS-5` proves the first playable weekday before travel, lessons, and condition
  loops are integrated deeply.
- `HSS-6` depends on time and weekday structure to validate travel and action
  boundaries.
- `HSS-7` depends on subject framing and time structure.
- `HSS-8` depends on balance guardrails and weekday structure.
- `HSS-16` supplies confirmed brainstorming pivots promoted here.

Assumptions index:

- `[ASSUMPTION: The MVP uses desktop keyboard/mouse input because the current target platform is Desktop JVM and the project runs through desktop launchers.]`
- `[ASSUMPTION: Exact formulas for lesson risk, condition thresholds, academic failure thresholds, study efficiency, recovery efficiency, money pressure, and exam weighting remain open until HSS-2 balancing work.]`
- `[ASSUMPTION: No licensed music or voiced dialogue is required for the MVP.]`

Open questions:

- What is the post-MVP expansion path after the first semester is proven?
- What final class size and relationship-content density should the full product
  target?
- What exact formulas define lesson risk, condition thresholds, academic failure
  thresholds, money pressure, recovery efficiency, and study efficiency?
- What final weighting should be used between semester standing and exam-scene
  execution if exams mostly confirm rather than rescue the semester?
- How should UI communicate hidden subject reward biases without over-explaining
  them?
- What profile categories should be public, discoverable, private, or
  route-specific?
- How many starting interest toggles and academic point-buy points should
  character setup offer?
- Should the game use formal recurring teacher archetypes beyond narrative color
  and optional arcs?
- What are the names, roles, and first-arc owner for the five MVP classmates?
