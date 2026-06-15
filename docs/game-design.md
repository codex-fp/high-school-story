# High School Story Game Design Document

This is the durable game-design source of truth for High School Story. It
defines the full three-year game first and treats the first implementation scope
as a Year 1 Semester 1 vertical slice rather than the product definition.

The planning artifact remains available as workflow history at
`_bmad-output/planning-artifacts/gdds/gdd-high-school-story-2026-06-09/`.
The full-game-first refinement was captured in `HSS-25` at
`_bmad-output/brainstorming-session-2026-06-12.md`.

## Document Scope

This GDD is **full-game-first**. It defines the target game as a three-year
school-life social simulation from the start of Year 1 to graduation at the end
of Year 3.

Full game means:

- Three playable school years structured as days, weeks, semesters, years, and a
  full graduation run.
- Year 1 and Year 2 carry the strongest discovery, relationship development,
  club identity, routine-building, and school-life density.
- Year 3 focuses on culmination, consequences, future choice, last chances, and
  closure.
- A core social cast of `10` classmates, each with a full multi-year story arc.
- One run lets the player meaningfully advance about `3-5` classmate arcs and
  usually form one best-friend-level bond, but not maximize the entire cast.
- Friendship, romance, best-friend bonds, found groups, and meaningful unfinished
  connections are all valid social outcomes.
- Academics and relationships are nearly co-equal long-term pillars that shape
  graduation outcomes.
- `4-5` thematic clubs act as a mid-layer identity system, with arcs lighter than
  core classmate arcs.
- Lakeview is a discoverable town-scale location network of roughly `15-25`
  travel destinations, unlocked through story, relationships, clubs, events, and
  exploration.
- The in-game phone frames planning through apps such as calendar, map, social
  media, messages, class/grade info, and memory album.
- The ending is built around graduation, future direction, relationship epilogues,
  memory-album reflection, subtle paths-not-taken, and optional post-graduation
  glimpses.

Initial delivery phase means:

- The first implementation target is the Year 1 Semester 1 vertical slice.
- The slice covers one playable `12`-week semester.
- It proves the daily loop, school pressure, after-school freedom, compact place
  discovery, first social content, phone planning, condition, money, grades,
  travel, exam resolution, and academic failure floor.
- It may include five initial locations: `dormitory`, `school`, `district`,
  `shop`, and `park`.
- It may include five initial classmates and one fully supported lightweight arc,
  but those are delivery constraints, not the final product target.
- It uses shared lesson structure rather than bespoke subject minigames.

## Executive Summary

### Core Concept

High School Story is a grounded school-life social simulation built around the
fantasy of **Second-Chance Student Life**: reliving high school with more
awareness, intention, and agency than real life allowed.

The player creates a high school student, defines their starting interests and
academic strengths, and guides them across three school years of routine,
lessons, relationships, clubs, activities, travel, condition management, money
pressure, grades, seasonal events, and graduation outcomes.

The full-game emotional thesis is **remembered school life through beautiful
incompleteness and found people**. The player should finish a run feeling: these
were my years, I could not have everything, but I found my people and built a
life that was mine.

School sets the rhythm, creates academic pressure, and generates opportunities.
The emotional center of play is usually after school: deciding where to go, who
to look for, what to spend money on, which club or classmate deserves attention,
and whether today's best memory is worth the time and condition cost.

The game is not about finding one optimal path. It is about living with tradeoffs
and shaping a student life that feels personal.

### Target Audience

- Players who enjoy cozy or reflective life sims with readable systems.
- Players who like relationship progression but do not want romance to dominate
  every loop.
- Players who enjoy planning under light pressure without condition-based hard
  fail states.
- Players interested in school-life fiction, coming-of-age tone, small daily
  choices, and long-form personal outcomes.

### Unique Selling Points

- A three-year school-life loop where time, relationships, academics, clubs,
  travel, money, and condition compete for the same day.
- A Second-Chance Student Life fantasy where the player starts with explicit
  interests and academic attributes.
- Meaningful incompleteness: one run can create deep memories without revealing or
  maximizing every path.
- Descriptive relationship stages instead of exposed raw affinity numbers.
- A `10`-classmate core cast where every classmate has a full arc, but only a
  subset can be deeply pursued in one run.
- Academics and relationships as co-equal long-term outcome drivers.
- Discoverable classmate profiles, posts, preferences, current locations,
  messages, memories, and availability through in-world phone apps.
- Lessons where subject identity dominates lesson feel, without separate bespoke
  minigames for each subject.
- A discoverable Lakeview town network where places become meaningful through
  people, clubs, events, and story.
- A fair academic floor: weak condition creates friction, but fully neglecting
  school can cause readable semester failure and run failure with checkpoint
  recovery options.

## Goals And Context

### Project Goals

- Define the full three-year game as the canonical design target.
- Preserve the Year 1 Semester 1 vertical slice as a practical implementation and
  validation phase.
- Make after-school planning meaningful from the first slice through the full
  game.
- Support long-form relationships where every core classmate eventually has a
  rich arc.
- Treat academics and relationships as nearly co-equal pillars for graduation
  outcomes.
- Prove lessons, grades, condition, money, travel, phone planning, location
  discovery, clubs, profiles, social media, recovery, exams, and endings as
  connected systems.
- Keep design precise enough for architecture, epics, story creation, and
  playtesting while allowing balancing details to remain task-owned.

### Player Promise

- Your time matters.
- Who you invest in matters.
- How you handle school pressure matters.
- What you discover after school matters.
- Who your player character already is matters.
- You cannot do everything, and that is part of why the run is yours.
- There is no single correct way to live through high school.

### Target Experience

The intended feel is nostalgic, grounded, cozy-leaning rather than stressful,
lightly demanding rather than frictionless, and reflective rather than
twitch-based.

The player should often feel they cannot do everything they want today. They
should rarely feel one bad day or one bad week has ruined the run. Recovery is
normal planning, not failure cleanup.

Academic collapse is the exception: fully neglecting school can fail a semester
and end the run, but only after readable grade visibility and at most one
explicit critical warning. On failure, the game offers automatic recovery saves
from about `3` days, `2` weeks, and `2` months earlier.

## Core Gameplay

### Game Pillars

1. **Second-Chance Time Pressure:** The calendar, clock, travel, school
   obligations, clubs, curfew, money, and sleep turn ordinary days into meaningful
   tradeoffs with clearer agency than real adolescence allowed.
2. **Relationships As Memory-Making:** Classmate investment primarily rewards the
   player with missable scenes, emotional payoffs, found people, and a more vivid
   high school life rather than major systemic bonuses.
3. **Academics As Future-Making:** Lessons, grades, subjects, study habits, exams,
   clubs, and Year 3 choices shape who the student can plausibly become after
   graduation.
4. **School As Opportunity Engine:** School is a baseline cost, contact point,
   event source, academic floor, and social network. It feeds after-school
   choices while remaining possible to fail if fully neglected.
5. **Place-First Personal Routine:** Dormitory, school, town hubs, clubs, shops,
   parks, and discovered venues express believable student life through compact
   exploration, stable location identities, preparation, recovery, study, social
   play, and small spending choices.
6. **Meaningful Incompleteness:** The full game should make unchosen paths visible
   without shaming the player. Missed people, clubs, events, and places help each
   run feel personal rather than incomplete in a completionist sense.

### Core Gameplay Loop

1. Start a day with visible time, location, condition, money, school pressure,
   known calendar structure, phone apps, and social information for known
   classmates.
2. Navigate school as the weekday backbone: attend lessons, absorb academic
   pressure, discover hooks, receive contact with classmates and teachers, and
   notice club or event opportunities.
3. Use after-school freedom for the day's highest-value decision: explore a
   place, pursue a classmate, attend a club, recover, study, spend money, work, or
   prepare.
4. Resolve immediate consequences and carry long-term effects into relationship
   stages, discovered preferences, subject standing, soft academic profiles,
   stress, energy, mood, money, club identity, location discovery, and calendar
   events.
5. Reassess tomorrow's priorities based on missed opportunities, known classmate
   locations, condition, money, upcoming lessons, exams, club commitments, social
   profile discoveries, and phone messages.

### Full-Run Progression

The full run is structured across three school years:

- **Year 1: Entry and Exploration.** The player asks: who are these people, and
  where do I fit? The year emphasizes new routines, first relationships, school
  onboarding, club exposure, town discovery, subject identity, and early
  consequences.
- **Year 2: Deepening and Choice.** The player asks: who am I choosing to become
  close to? The year carries the strongest relationship development, club
  commitment, academic identity, social circles, rivalry, missed opportunities,
  and routine consolidation.
- **Year 3: Culmination and Future.** The player asks: what do I carry forward?
  The year emphasizes closure, last chances, graduation pressure, future
  direction, academic standing, relationship epilogues, and memory.

Year 1 and Year 2 should contain the strongest discovery and development density.
Year 3 should still be playable and meaningful, but its primary role is payoff
and consequence rather than another equal content expansion layer.

### Win And Loss Conditions

The full game uses a soft-outcome structure with one hard floor: academic collapse
can fail a semester and end the run. A normal full run completes when Year 3,
graduation, final academic/future outcomes, relationship epilogues, memory-album
recap, and optional post-graduation glimpse resolve.

Player-facing outcomes include:

- Graduation sequence.
- Academic and future direction outcome.
- Per-subject and overall academic summary.
- Condition and routine summary.
- Club identity and club-memory summary.
- Friendship outcomes for core classmates based on relationship stage and arc
  completion.
- Best-friend outcome if one bond reached that role.
- Romance outcome if the player committed to one romance route.
- Memory-album recap of places, people, events, clubs, and academic turning
  points.
- Subtle reflection on paths not taken.
- Optional post-graduation glimpse.

Academic failure rules:

- Fully neglecting school can cause semester failure and end the run.
- The player has ongoing visibility into grade risk and can monitor danger
  without constant hand-holding.
- The game may provide at most one explicit critical academic warning when the
  situation becomes severe.
- Failure should summarize the causes clearly.
- On failure, recovery options should include automatic saves from about `3` days,
  `2` weeks, and `2` months earlier.

Condition failure rules:

- Low energy, high stress, low mood, or low money should not directly end the
  run.
- Poor condition creates weaker outcomes, higher risk, social friction, and
  recovery pressure.
- Poor condition should not erase earned relationship, skill, club, discovery, or
  grade progress.

## Game Mechanics

### Calendar And Time

- Full duration: three school years ending with Year 3 graduation.
- Structural layers: day, week, semester, school year, full run.
- Base time unit: `15` minutes.
- Standard weekday start: dormitory at `06:00`.
- Dormitory return deadline: `21:00`.
- Automatic sleep: `22:00`.
- Weekday rhythm: dormitory morning, school block, afternoon freedom, dormitory
  evening, sleep.
- Weekends emphasize longer hangouts, better recovery, stronger route scenes,
  club events, town exploration, and optional packed-day planning. Academic
  catch-up is available but should not dominate weekend identity.
- Academic structure is visible from the start of each semester, including
  lessons and exams.
- School events are scheduled and visible at the start of each month.
- Year transitions should summarize what changed socially, academically, and
  spatially without resetting earned identity.

### Action Validation

- Activities show duration before confirmation.
- Travel shows destination, duration, and expected arrival time.
- Impossible actions are blocked before start.
- Risky actions are allowed only when a readable warning and likely consequence
  can be shown.
- School attendance and return-to-dorm boundaries protect the player from
  accidental self-sabotage.

### Phone And Planning Apps

The in-game phone is the primary diegetic planning interface. It should expose
information that a student could plausibly check without turning the game into an
abstract spreadsheet.

Phone app targets:

- `calendar`: lessons, exams, school events, club meetings, deadlines, and
  accepted plans.
- `map`: discovered travel destinations, travel costs, and known routes.
- `social media`: classmate profiles, posts, discovered preferences, current
  known locations, availability, shared memories, and lightweight social feed.
- `messages`: invitations, simple replies, planning hooks, and relationship or
  club prompts.
- `classes`: subject standing, grade risk, and academic feedback.
- `memory album`: important scenes, yearbook-like reflections, recurring places,
  and endgame recap material.

Social media should remain authored and lightweight. It can hint at preferences,
moods, favorite activities, current interests, locations, and future invitation
options. It should not become a heavy simulated internet or content sink that
dominates development.

### Lessons

Standard lessons use `3` decision turns. Each turn represents `15` minutes and
offers one player action.

Lesson command structure:

- `safe actions`: reliable academic or stabilizing choices such as attentive
  baseline work.
- `risky actions`: higher-variance choices that can trade academic focus for
  relief, opportunism, or shortcut value.
- `reactive actions`: recovery or cover choices used when lesson pressure or
  teacher attention turns against the player.
- `items`: limited consumable or situational support actions when available.

Lesson variation is still driven mainly by subject identity. Subjects differ
through hidden-but-learnable reward biases, tone, and action weighting, while
teachers create semi-readable attention pressure that changes the risk profile of
the same command families. The result should feel tactically sharper than a
generic menu loop without becoming a bespoke subject minigame or a full combat
RPG. Players should begin sensing a subject's character within `1-2` lessons.

### Academics And Grades

Grades are tracked per subject:

- `math`
- `history`
- `literature`
- `science`
- `art`
- `biology`

Academic standing comes from lessons, targeted study, starting academic
attributes, broad skill growth, semester preparation, club context, and exam
execution. Grades are a major pillar and are nearly co-equal with relationships
for full-game outcomes.

Academic structure:

- The player can pursue relationship-heavy or recovery-heavy runs while
  maintaining minimum academic viability.
- Fully neglecting school can fail a semester and end the run.
- Grade standing is visible enough for players to monitor risk themselves.
- Critical danger can trigger at most one explicit academic warning.
- Strong academic patterns should shape future direction at graduation.

The full game should infer **soft academic profiles** instead of asking the
player to pick formal tracks. Subject strengths, study habits, clubs, repeated
choices, and Year 3 confirmation should combine into plausible futures such as
science-oriented, creative, humanities-oriented, socially grounded,
high-achievement, recovered-from-struggle, uncertain, or relationship-prioritized
paths.

### Semester Exams

Each semester ends with an exam period. Exams confirm and finalize the semester's
academic trajectory more than rescue a weak semester.

Baseline exam structure:

- Structure: `3` phases.
- Player input: shared style-choice structure.
- Main driver: semester preparation.
- Day-of modifiers: energy and stress meaningfully affect execution.
- Output: delayed in-world result reveal with emotional summary and per-subject
  breakdown.

Year 3 exams and academic checks should carry stronger future-facing stakes than
early exams. They should still be readable consequences of prior preparation, not
surprise final gates.

### Relationships

Relationships are tracked per known classmate. Player-facing stages are
descriptive:

- `stranger`
- `acquaintance`
- `comfortable`
- `close`
- `very close`

The full game targets `10` core classmates, each with a full multi-year story arc.
A single run should let the player meaningfully advance about `3-5` arcs and
usually form one best-friend-level bond. The player may know more classmates than
they can deeply support.

Friendship and romance are distinct outcomes. Romance is a strong and fully
supported form of closeness, but not the dominant promise of the game. The player
can explore interest with multiple classmates before commitment, but can have
only one active committed romance at a time. Romance consumes practical social
capacity through time, attention, and emotional priority.

Best friend and romance may overlap, but do not have to. The game should support:

- A romance partner who is also the best friend.
- A romance partner plus a separate best friend.
- No romance but a strong best-friend bond.
- Meaningful friendships without best-friend status.
- Known but unfinished relationships.

Relationship reward rules:

- The main reward is a more vivid and memorable high school life through unique
  scenes, emotional payoffs, shared places, and relationship-specific content.
- Systemic bonuses from relationships should remain light or absent.
- Classmate arcs should support friendship, romance where appropriate, conflict,
  repair, missed chances, and long-term memory.
- Arc completion does not always mean becoming the classmate's most important
  person.
- Endings should distinguish best-friend culmination, good-friend arc completion,
  romance commitment, meaningful but unfinished connections, and distant
  acquaintances.

Compatibility and profile discovery:

- Arc progress is driven mainly by compatibility of interests, favorites,
  personality fit, and non-conflicting values.
- Compatibility is not a lifestyle build that the player freely reshapes during
  the run.
- Classmate interests and preferences begin hidden and are uncovered through
  direct interaction, indirect discovery, social media posts, invitations, clubs,
  and shared places.
- Discovered information becomes permanently visible in the phone's social media
  profile layer.
- Discovered preferences unlock fair future arc progress and may unlock activity,
  invitation, message, or location options.

Known-classmate location visibility:

- Once a classmate is known, their current location and availability become
  visible when the player has a plausible social-media or message-based reason to
  know it.
- Social planning remains constrained by travel time, activity duration, money,
  club commitments, school obligations, and condition rather than hidden character
  whereabouts.

### Cast Structure

The full game uses a stable core cast with rotating periphery.

Core classmates:

- Stay relevant across all three years.
- Carry full multi-year story arcs.
- Can support best-friend, close-friend, romance, unfinished, or distant outcomes.
- Participate in school events, clubs, town discovery, phone content, and ending
  reflections.

Peripheral characters:

- Rotate through classes, clubs, locations, events, work, and school-year changes.
- Provide texture, hooks, short arcs, group context, and world breadth.
- Should not compete with core classmates for full arc depth.

### Clubs And Extracurriculars

Clubs are a full-game mid-layer identity system. They give the player a way to
choose who they are becoming beyond grades and one-on-one relationships.

Full-game club target:

- `4-5` thematic clubs such as science club, drama club, sports club, art/music
  club, or student council/service club.
- A run should make `1-2` club commitments feel meaningful.
- Clubs shape weekly routine, friend groups, soft academic profiles, skill flavor,
  events, location use, and ending texture.
- Club arcs exist, but are lighter and less emotionally dense than core classmate
  arcs.

Club rewards:

- Group memories.
- Event participation.
- Identity and future-path flavor.
- Relationship hooks.
- Location discovery.
- Skill growth or efficiency flavor.

Clubs should not become club-management systems. They are student-life commitments
and social identity spaces, not automation, delegation, or production pipelines.

### Condition And Recovery

- `energy`: main performance limiter.
- `stress`: main risk amplifier.
- `mood`: main quality-of-life and social-efficiency stat.
- `money`: regular secondary soft constraint.
- Grades: academic standing, tracked per subject.

Poor condition weakens outcomes and increases risk. It should not normally create
hard fail states or erase earned relationship, club, discovery, skill, or grade
progress.

### Starting Profile And Skills

The player defines a fairly detailed starting profile before the first school
year begins.

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
grades, relationships, clubs, or condition as the main feedback surfaces.

### Locations And Travel

Lakeview should feel like a compact but substantial town the player gradually
comes to know. The full game targets roughly `15-25` discoverable travel
destinations, not all available at the start.

Initial location set for the Year 1 Semester 1 vertical slice may include:

- `dormitory`: recovery and preparation base.
- `school`: mandatory academic and social backbone.
- `district`: connective movement hub.
- `shop`: utility spending and small support actions.
- `park`: hangouts, recovery, and low-pressure social scenes.

Full-game location categories:

- Dormitory and home-base spaces.
- School hubs and subspaces.
- Club rooms and extracurricular venues.
- Downtown and district venues.
- Shops, cafes, and utility locations.
- Parks, lakeside, or outdoor recovery/social places.
- Event-linked venues.
- Relationship-introduced places.
- Work or money-support locations.

Location design rules:

- After-school discovery is place-first: the player should get ideas by
  physically going somewhere and seeing what that place offers.
- Locations have stable identities first and context-sensitive variation second.
- Exploration is compact but real: the player moves through readable spaces,
  finds people and points of interest, and avoids large navigation-heavy maps.
- Places become travel destinations only after discovery through story,
  relationships, clubs, events, messages, or exploration.
- A place can become meaningful because of who introduced it, not only because of
  what action it contains.
- Locations should support revisit value through different people, seasonal
  changes, club uses, recovery/study/social actions, relationship scenes, and
  memories.

### Controls And Input

[ASSUMPTION: The game uses desktop keyboard/mouse input because the current target
platform is Desktop JVM and the project runs through desktop launchers.]

Required input capabilities:

- Move the player in playable scenes.
- Inspect current time, location, condition, grade standing, relationship stage,
  club commitments, and money.
- Use phone apps for calendar, map, social media, messages, classes/grades, and
  memory album.
- Inspect known classmate profiles, posts, discovered preferences, current
  known-classmate locations, and current availability through social media.
- Inspect the academic calendar, monthly school events, club events, and current
  money.
- Open and choose dialogue options.
- Confirm or cancel actions after seeing duration and consequences.
- Choose lesson actions across `3` turns.
- Choose travel destination after seeing duration and arrival time.

No reflex or twitch mastery is required. Input should support reflective choice,
readable confirmation, and low-pressure exploration.

## Simulation Specific Design

### Core Simulation Systems

High School Story simulates a student's everyday high school life at an
abstract-but-readable level. It does not attempt full school realism. It models
enough pressure, routine, social continuity, academic direction, and place memory
for player choices to feel consequential.

Primary systems:

- Calendar, school years, semesters, day phase, and graduation.
- Clock and `15`-minute action costs.
- Player starting profile: interest toggles and academic point-buy attributes.
- Location discovery and travel network.
- School attendance and lesson turns.
- Per-subject grade standing and soft academic profiles.
- Condition stats: energy, stress, mood, money.
- Relationships, descriptive stages, discovered preferences, social media
  profiles, posts, messages, memory records, and location visibility.
- Core cast of `10` classmates plus rotating peripheral characters.
- Clubs and extracurricular commitments.
- Semester exams, year transitions, graduation, and result reveals.

Key interconnections:

- Time limits how many academics, recovery, clubs, social, travel, work, and shop
  actions fit into a day.
- Travel consumes time and can make school or curfew boundaries risky.
- Energy, stress, and mood affect lesson, study, club, social, and exam outcomes.
- Lessons affect grades, condition, and occasional social momentum.
- Clubs affect identity, social circles, event access, location use, and soft
  academic profiles.
- Weekends alter recovery and social opportunity density.
- Relationship opportunities compete directly with grades, clubs, money, travel,
  and recovery.
- Discovered preferences make social planning fairer without removing time and
  condition tradeoffs.
- Starting interests shape social compatibility without changing academic
  attributes.
- Location discovery expands daily choices and reinforces social memory.

Emergent behavior boundaries:

- The player may recover from poor condition through planned rest and softer
  days.
- The player may favor social life, academics, clubs, exploration, or balance
  without a single required build.
- The player may miss opportunities, but core progress should remain recoverable
  unless the player repeatedly ignores an area.
- The player may fail a semester and end the run through sustained academic
  neglect.
- The player should not be tricked into social failure once relevant classmate
  preferences have been discovered.
- The game should not support deep delinquency, heavy truancy, or exploit loops
  that trivialize time pressure.

Simulation state advances on action completion, travel completion, lesson turn
resolution, sleep, and calendar transitions rather than continuous
second-by-second management.

### Management Mechanics

The primary managed resource is time. Condition, money, relationship opportunity,
club commitment, location access, and grade standing are secondary resources that
create planning pressure.

Management decisions:

- Spend morning time on preparation, recovery, social contact, or study.
- Decide each lesson turn between safe academics, targeted focus, social risk,
  relief, or survival.
- Choose one major after-school priority plus usually one small supporting action.
- Use phone apps to decide whether a known classmate is reachable today.
- Choose whether to attend a club, follow a place-based discovery hook, or pursue
  a planned calendar priority.
- Decide whether current condition justifies recovery over advancement.
- Decide when to spend money on social activities, comfort, academic support,
  consumables, or travel convenience.
- Decide when abstract part-time work is worth the time and condition cost.
- Decide whether to pursue friendship, romance, academics, clubs, exploration,
  balance, or recovery on a given day.

The game has no automation or delegation systems. The player makes manual daily
decisions.

### Economic And Resource Loops

Money is a regular secondary soft constraint, not the primary economy.

Money loop:

- Baseline income: weekly allowance from parents.
- Optional top-up: abstract part-time work.
- Expenses: social activities, club costs, recovery/comfort, academic support,
  consumables, and travel convenience such as tickets or taxis to farther
  locations.
- Key school events should generally not be paywalled.
- No supply chains, market dynamics, trading, crafting, or investment systems.
- Money should open selected options, not solve time pressure.
- Part-time work is an emergency tool and lifestyle tradeoff. It costs valuable
  time and likely condition, and should not become a default grind loop.

Economic pacing target:

- A player should feel small purchases matter.
- A player should not need detailed budgeting to complete a semester.
- Being low on money should narrow convenience and support options, not hard-lock
  the run.
- Players should sometimes feel meaningfully low on cash, but not forced into
  frequent work as the optimal baseline.

### Progression And Unlocks

Progression surfaces:

- Calendar progression through three school years.
- Starting profile identity through interest toggles and academic attributes.
- Relationship stages and multi-year arcs for core classmates.
- Best-friend, close-friend, romance, completed-arc, unfinished, and distant
  social outcomes.
- Discovered classmate preferences and social media profile completion.
- Per-subject grade standing and soft academic profiles.
- Club commitments, club memories, and lighter club arcs.
- Broad skills: `learning`, `social`, `physical`.
- Location discovery across Lakeview.
- Semester exams, year transitions, graduation, and final outcome reveal.

Unlock style:

- Relationship scenes unlock through relationship stage, calendar timing,
  availability, discovered preferences, prior arc steps, messages, places, and
  club context.
- Some relationship progress unlocks through compatible interests and discovered
  preferences.
- Study and lesson efficiency improves through broad skills and learned subject
  patterns.
- Clubs unlock group events, identity flavor, location uses, and social hooks.
- Locations unlock through story, relationships, clubs, events, messages, or
  exploration.
- Weekends unlock longer social, route, recovery, club, exploration, and optional
  catch-up blocks.

Difficulty and pacing:

- Year 1 Semester 1: orientation, routine learning, starting-profile expression,
  low-stakes social introductions, visible time pressure, first place discovery,
  and initial academic feedback.
- Year 1 Semester 2: stronger town discovery, more classmate profile reveals,
  club exposure, subject patterns, condition and money tradeoffs, and first
  meaningful arc choices.
- Year 2: strongest schedule competition, arc commitments, club commitments,
  school events, academic danger visibility, social capacity tradeoffs, and
  identity consolidation.
- Year 3: exam and future pressure, relationship resolution, graduation closure,
  final recovery and prioritization decisions, and memory-album payoff.

[ASSUMPTION: Exact formulas for lesson risk, condition thresholds, academic
failure thresholds, study efficiency, recovery efficiency, money pressure, and
exam weighting remain open until HSS-2 balancing work.]

### Delivery Phasing

The full game is the product target. Delivery phases are implementation strategy,
not product identity.

Year 1 Semester 1 vertical slice constraints:

- Fixed `12`-week semester.
- Fixed school schedule backbone.
- Initial core location set.
- Initial phone app scope.
- Initial exam period and result reveal.
- Fixed dormitory curfew and sleep expectations.
- Fixed academic calendar visibility from the start of the semester.
- Monthly school event visibility at the start of each month.
- Five initial classmates may be used to validate the relationship layer.
- One fully supported lightweight classmate arc may be used to validate the full
  arc structure.

Building, construction, room decoration, automation, delegation, crafting, supply
chains, markets, and investments are out of full-game scope unless a future
design change explicitly accepts them.

## Level Design Framework

The game uses locations and daily scenes rather than traditional levels.

Location types:

- Dormitory base scenes.
- School block scenes.
- School subspaces and club rooms.
- District traversal and connection scenes.
- Shop utility scenes.
- Park recovery and social scenes.
- Town venues and discovered destinations.
- Relationship-introduced places.
- Event venues.
- Compact place-exploration scenes with stable hotspots.
- Intro arrival sequence.
- Exam period scenes.
- Graduation and ending scenes.

Scene types:

- Freeform location exploration.
- Dialogue interaction.
- Lesson decision loop.
- Club activity or club event.
- Travel confirmation.
- Recovery action.
- Study action.
- Phone app inspection.
- Social media/profile inspection.
- Message interaction.
- Social opportunity.
- Place-based discovery hook.
- Abstract part-time work action.
- Classmate arc beat.
- Club arc beat.
- Exam result reveal.
- Year transition.
- Graduation and memory-album recap.

Calendar progression:

- Intro: Arrival to Lakeview on August 29, late afternoon.
- First morning: player wakes in dormitory before school.
- Standard weekdays: morning, school block, afternoon, evening, sleep.
- Weekends: longer recovery, hangout, route, club, exploration, and optional
  catch-up opportunities.
- Semester ends: exam scene and delayed results.
- Year transitions: academic, social, club, location, and memory reflection.
- Year 3 close: graduation, outcome summary, relationship epilogues, and
  post-graduation glimpse where appropriate.

## Art And Audio Direction

### Art Style

The art direction should support grounded, nostalgic, cozy-leaning school life
across multiple years.

Design goals:

- Readable locations and interaction points.
- Compact locations with stable visual identity and discoverable hotspots.
- Warm late-afternoon and evening tones for arrival and reflective moments.
- Seasonal and year-to-year variation that makes places feel remembered without
  requiring large bespoke remakes.
- Plain-but-specific school, dorm, club, and town details rather than exaggerated
  fantasy sets.
- UI clarity for time, condition, grades, money, relationship stages, phone apps,
  social media profiles, discovered preferences, known-classmate location, club
  commitments, and memories.

### Audio And Music

Audio should reinforce routine and place.

Design goals:

- Soft ambient loops for dormitory, school, district, shop, park, clubs, and town
  venues.
- Quiet transitional sounds for travel, bus arrival, school bell, phone
  vibration, messages, and sleep.
- Music that supports reflection and light pressure without high-stress
  escalation.
- Intro audio tone: bus hum, warm exterior ambience, cicadas, quiet dorm room.
- Graduation and memory-album audio should feel reflective and earned rather than
  triumphant by default.

[ASSUMPTION: No licensed music or voiced dialogue is required for the game.]

## Technical Specifications

No accepted hard FPS or frame-budget contract exists yet. The game should stay
within comfortable desktop performance for a 2D school-life sim and avoid design
scope that requires large crowds, simulation-heavy background actors, or
continuous high-frequency world simulation.

GDD-level technical constraints:

- Target platform: Desktop JVM.
- Simulation advances at action, turn, travel, sleep, and calendar boundaries.
- Full-game location target is roughly `15-25` discoverable travel destinations
  implemented as compact spaces, hubs, and subspaces rather than large open-world
  traversal.
- Full-game social target is `10` core classmates with full arcs plus rotating
  peripheral characters.
- Full-game club target is `4-5` thematic clubs with lighter arcs than core
  classmate routes.
- Phone app scope covers calendar, map, social media, messages, class/grade info,
  and memory album.
- Social media scope covers known-classmate profiles, posts, discovered
  preferences, current known-classmate location, availability, memories, and
  lightweight planning hooks.

This GDD intentionally does not specify internal implementation architecture.

Asset categories:

- Player character presentation.
- Generic character presentation.
- `10` core classmate portraits or readable character presentations.
- Peripheral character presentations.
- Phone app UI assets for calendar, map, social media, messages, classes/grades,
  and memory album.
- Social media/profile UI assets for known classmates, posts, preferences,
  current location, availability, and memories.
- Character setup UI assets for interest toggles and academic point-buy
  attributes.
- Dormitory, school, district, shop, park, club, and town location assets.
- Intro bus arrival and dorm check-in scene assets.
- Dialogue UI assets.
- Time, condition, grade, relationship, club, and money UI assets.
- Ambient audio for key locations and transitions.
- Graduation and memory-album presentation assets.

## Development Epics

Detailed planning lives in the promoted GDD artifact's `epics.md` until an epics
workflow promotes it into durable production stories. Existing epics remain
oriented around the first implementation phase and should be updated by a future
epics workflow to match this full-game-first GDD.

Summary sequence for the current Year 1 Semester 1 vertical slice:

| Epic | Purpose | Related Tasks |
|---|---|---|
| Epic 1: Vertical Slice Design Finalization | Lock subject framing, balancing guardrails, cast roles, social media/profile rules, first arc constraints, and academic failure floor for the first delivery phase. | HSS-1, HSS-2, HSS-3, HSS-16, HSS-25 |
| Epic 2: Calendar and Day Structure | Build the semester, weekday/weekend, clock, day phase, sleep, and debug visibility foundation. | HSS-4 |
| Epic 3: First Playable Weekday | Prove the playable dorm-school-afternoon-evening-sleep loop. | HSS-5 |
| Epic 4: Location Travel and Validation | Add initial locations, compact place discovery, travel costs, destination preview, and action boundary validation. | HSS-6, HSS-16, HSS-25 |
| Epic 5: Lessons and Academic Standing | Implement the shared `3`-turn lesson loop, subject-dominant differences, grade updates, and academic danger visibility. | HSS-1, HSS-7, HSS-16 |
| Epic 6: Condition, Money, and Recovery | Add energy, stress, mood, money, allowance, abstract work, recovery, and weak-condition friction. | HSS-2, HSS-8, HSS-16 |
| Epic 7: Relationships, Profiles, and First Arc | Add initial classmates, descriptive stages, phone/social media profiles, discovered preferences, known-classmate location, one lightweight arc, friendship and romance outcomes. | HSS-3, HSS-16, HSS-25 |
| Epic 8: Semester Exam and Outcome Reveal | Add exam period, result reveal, academic failure handling, and semester summary outcomes. | Future task, HSS-16 |
| Epic 9: Player Setup and Starting Identity | Add upfront interest toggles and academic point-buy attributes. | Future task, HSS-16 |

Future full-game epics should cover:

- Three-year progression and year transitions.
- Full `10`-classmate core cast arcs.
- Club system and `4-5` thematic clubs.
- Discoverable Lakeview town expansion.
- Phone app suite expansion.
- Soft academic profiles and graduation future paths.
- Graduation, memory album, relationship epilogues, and post-graduation glimpse.

## Success Metrics

### Technical Metrics

- A player can start a standard weekday in the dormitory at `06:00`.
- Time advances in `15`-minute increments.
- A weekday can transition through school, afternoon freedom, dormitory evening,
  and sleep.
- Action and travel validation can block impossible choices and warn on risky
  choices.
- Standard lessons resolve `3` decision turns of `15` minutes each.
- Condition, grades, money, relationship stages, club commitments, phone apps,
  social media profiles, and known-classmate locations are visible or inspectable
  during playtesting.
- Academic failure risk can be surfaced through grade visibility and at most one
  explicit critical warning.
- Academic failure can offer recovery saves from about `3` days, `2` weeks, and
  `2` months earlier.
- Discovered locations can become valid travel destinations.

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
- Phone-based social media/profile discovery makes relationship pursuit readable
  without turning relationships into optimization.
- Testers understand that the Year 1 Semester 1 vertical slice is proving systems
  for a larger three-year game.

Full-game success metrics:

- Players finish a full run feeling it was their remembered high school life, not
  a solved checklist.
- Players can identify their best friend, closest group, strongest academic
  direction, and most meaningful missed path.
- Players understand why they could not maximize all `10` core classmates in one
  run.
- Year 1 and Year 2 feel like the strongest discovery and development years.
- Year 3 feels like culmination and closure rather than content exhaustion.
- Graduation outcomes reflect both relationships and academics.
- Memory-album recap celebrates chosen paths and subtly acknowledges unchosen
  ones without framing them as failure.

## Out Of Scope

Full game excludes:

- Multiplayer.
- Licensed music.
- Full localization contract.
- Large open-world traversal.
- Heavy itemization or inventory complexity.
- Deep delinquent or truancy playstyle support.
- Separate bespoke minigames for each subject.
- Hard fail states from condition.
- Building, construction, base-building, and room decoration systems unless a
  future design change explicitly accepts dorm personalization.
- Automation, delegation, crafting, supply chains, markets, or investments.
- Large-scale economy.
- Content-rich part-time work subplot.
- Heavy simulated social network beyond authored/lightweight posts, profiles,
  messages, and planning hooks.
- Club-management simulation.

Out of Year 1 Semester 1 vertical slice scope:

- Full three-year progression.
- Full graduation ending structure.
- Full `10`-classmate arc coverage.
- Full `15-25` destination town network.
- Full `4-5` club system.
- Complete phone app suite.
- Full soft academic profile and future-path system.
- Complete relationship epilogue and memory-album system.

Future delivery candidates:

- Additional school years and year transitions.
- More classmates and deeper relationship arcs until the `10` core target is met.
- Additional discovered town locations.
- Full club system.
- More teacher archetypes.
- Dorm room personalization if it reinforces routine and identity.
- Full graduation, memory album, and post-school outcomes.

## Assumptions And Dependencies

Dependencies:

- `HSS-1` must finalize subject framing and lesson assumptions before lesson
  implementation locks content and player-facing language.
- `HSS-2` must create balancing guardrails before formulas, academic failure
  thresholds, money pressure, and part-time work tradeoffs are treated as stable.
- `HSS-3` must define initial classmates, first arc constraints, and
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
- `HSS-25` supplies the full-game-first GDD reframing promoted here.

Assumptions index:

- `[ASSUMPTION: The game uses desktop keyboard/mouse input because the current target platform is Desktop JVM and the project runs through desktop launchers.]`
- `[ASSUMPTION: Exact formulas for lesson risk, condition thresholds, academic failure thresholds, study efficiency, recovery efficiency, money pressure, and exam weighting remain open until HSS-2 balancing work.]`
- `[ASSUMPTION: No licensed music or voiced dialogue is required for the game.]`

Open questions:

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
- What are the names, roles, and arc concepts for the `10` core classmates?
- Which `4-5` thematic clubs define the full-game club layer?
- Which `15-25` Lakeview destinations are core to the full-game town network?
- What exact graduation outcome taxonomy combines academics, relationships,
  clubs, memories, and future direction?
- How should the first implementation phase scale into the full three-year game
  after the Year 1 Semester 1 vertical slice is proven?
