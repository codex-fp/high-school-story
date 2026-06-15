---
stepsCompleted:
  - step-01-validate-prerequisites
  - step-02-design-epics
  - step-03-create-stories
inputDocuments:
  - docs/game/brief.md
  - docs/game/gdd.md
  - docs/game/architecture.md
  - docs/engineering/architecture.md
  - docs/game/ux/design.md
  - docs/game/ux/experience.md
  - docs/game/narrative/design.md
  - docs/game/narrative/content.md
---

# High School Story - Epic Breakdown

## Overview

This document provides the complete epic and story breakdown for High School
Story, decomposing the requirements from the durable game GDD, UX documents,
technical architecture, and canonical narrative documents into implementable
stories.

Readiness note: the numbered FR inventory in this artifact is a planning-derived
breakdown, not the canonical requirement numbering from `docs/game/gdd.md`.
When readiness work needs exact traceability back to canonical GDD FR numbers,
the relevant stories below call that out explicitly.

## Requirements Inventory

### Functional Requirements

FR1: The full product must support a complete run from the start of Year 1 to
the end of Year 3 graduation.
FR2: Progression must be structured across action, day, week, semester, school
year, and full-run layers.
FR3: Time must advance in discrete `15`-minute increments for standard
time-costing actions.
FR4: A standard weekday must start in the dormitory at `06:00`.
FR5: The weekday backbone must support dormitory morning, school block,
afternoon freedom, dormitory evening, and sleep phases.
FR6: The player must be required to return to the dormitory by `21:00`, with
automatic sleep at `22:00`.
FR7: Weekends must support structurally different recovery, social, club,
exploration, and catch-up opportunities.
FR8: The start of each semester must expose its academic schedule, including
lessons and exams.
FR9: The start of each month must expose planned school events.
FR10: Year transitions must summarize social, academic, and place changes
without wiping earned identity.
FR11: The player must start each day with visible time, location, condition,
money, school pressure, and planning-relevant social information.
FR12: The player must be able to use morning time for meaningful pre-school
choices such as planning, recovery, study, or contact.
FR13: The player must be able to travel between discovered locations.
FR14: Travel must show destination, duration, cost if any, and expected arrival
time before confirmation.
FR15: Impossible actions and impossible travel must be blocked before
commitment.
FR16: Risky but legal actions must show a readable warning and likely
consequence before commitment.
FR17: Travel and action validation must protect the player from accidental
school, curfew, or sleep-boundary violations unless an explicitly risky option
is being confirmed.
FR18: The school block must generate lessons, academic pressure,
announcements, and social hooks as the weekday backbone.
FR19: Standard lessons must resolve as `3` decision turns of `15` minutes each.
FR20: Each lesson turn must offer stable command families for safe, risky,
reactive, and situational item actions.
FR21: Subject identity must make lessons feel observably different through
weighting, tone, and feedback rather than bespoke per-subject minigames.
FR22: Teacher attention must materially affect lesson risk and reward while
remaining only semi-readable to the player.
FR23: Grades must be tracked per subject for `math`, `history`, `literature`,
`science`, `art`, and `biology`.
FR24: Academic standing must be affected by lessons, targeted study, starting
academic attributes, broad growth, semester preparation, club context, and exam
execution.
FR25: The player must be able to inspect subject standing, grade risk, and
academic feedback through the phone classes app.
FR26: The player must be able to understand academic danger before failure
without needing hidden information.
FR27: Academic collapse must be the only hard run-ending failure mode and must
come from sustained school neglect.
FR28: The game must allow at most one explicit critical academic warning before
semester failure.
FR29: Semester failure must offer recovery saves from about `3` days, `2`
weeks, and `2` months earlier.
FR30: Each semester must culminate in an exam period with a `3`-phase structure
and delayed in-world result reveal.
FR31: Semester preparation must be the main exam driver, with day-of energy and
stress still affecting execution.
FR32: The in-game phone must provide `calendar`, `map`, `social media`,
`messages`, `classes`, and `memory album` apps.
FR33: The calendar app must show lessons, exams, school events, club meetings,
deadlines, and accepted plans.
FR34: The map app must show discovered destinations, known routes, travel
costs, and expected arrival information.
FR35: The social media layer must show classmate profiles, authored posts,
discovered preferences, known current locations, availability hints, and shared
memories for known classmates.
FR36: The messages app must support invitations, lightweight replies, planning
hooks, and relationship or club prompts.
FR37: The memory album must store important scenes, recurring people-place-event
motifs, and recap material for later summaries and endings.
FR38: Relationships must be tracked per known classmate using descriptive
player-facing stages: `stranger`, `acquaintance`, `comfortable`, `close`, and
`very close`.
FR39: The full game must support `10` core classmates with multi-year arcs,
while one run should only allow deep progress with about `3-5` arcs.
FR40: The player must be able to form one best-friend-level bond in a run.
FR41: The game must support optional romance, with only one active committed
romance at a time.
FR42: Best friend and romance outcomes may overlap, but do not have to.
FR43: Classmate preferences and profile facts must begin hidden and become
discoverable through interactions, posts, invitations, clubs, messages, and
shared places.
FR44: Discovered classmate information must persist in the phone profile and
social layers.
FR45: Once a classmate is known, the game must surface their current location
and availability whenever the player has a plausible in-world reason to know
it.
FR46: Relationship progression must primarily reward scenes, memories,
emotional payoff, and route-specific content rather than major systemic bonuses.
FR47: The full game must support `4-5` thematic clubs as a mid-layer identity
system with lighter arcs than core classmate routes.
FR48: Clubs must shape weekly routine, friend groups, location use, events,
soft academic profiles, and ending texture without becoming club-management
systems.
FR49: The player state must track `energy`, `stress`, `mood`, and `money` as
core everyday planning variables.
FR50: Poor condition must weaken outcomes and raise risk without directly
erasing earned progress or hard-failing the run.
FR51: The game must provide distinct recovery options with different textures
across places such as the dormitory and the park.
FR52: The economy must provide weekly allowance as baseline income and optional
abstract part-time work as an emergency tradeoff.
FR53: Money must matter for social activities, comfort, academic support,
consumables, and travel convenience without becoming the dominant system.
FR54: The player setup flow must support direct interest and preference toggles
across cultural domains.
FR55: The player setup flow must support `1-10` point-buy academic attributes
that start independent from interest toggles.
FR56: The game must track broad growth areas for `learning`, `social`, and
`physical` development.
FR57: Lakeview must support a full-game destination network of roughly `15-25`
discoverable locations, with an initial vertical-slice set including
`dormitory`, `school`, `district`, `shop`, and `park`.
FR58: Locations must have stable identities, practical functions, emotional
functions, travel connections, phase-specific actions, and revisit value.
FR59: New destinations must unlock through story, relationships, clubs, events,
messages, or exploration rather than being available all at once.
FR60: After-school discovery must be place-first, so physically going somewhere
reveals hooks, people, and possibilities.
FR61: The game must support desktop keyboard and mouse input for movement,
phone use, dialogue, lesson decisions, action confirmation, and travel
selection.
FR62: The narrative must begin with the protagonist arriving from a small
village to Lakeview, reaching the dormitory, checking in, orienting through the
phone, and sleeping before the first day of school.
FR63: The intro sequence must include a bus arrival, a parent message exchange,
optional ask-for-directions interactions, dorm check-in, room reflection, and
a sleep interaction that hands off into the normal game loop.
FR64: The player role in classmate stories must be witness, catalyst,
participant, and safe person rather than savior or universal fixer.
FR65: Each core classmate arc must combine a readable school-facing mask with a
hidden contradiction, pressure, or wound that unfolds over time.
FR66: Narrative delivery must use playable beats, dialogue scenes,
lesson-adjacent moments, school events, club events, phone content,
place-discovery hooks, year transitions, graduation, and epilogues.
FR67: Optional content must be missable without implying that the player failed
to play correctly.
FR68: The full game must preserve meaningful incompleteness by keeping missed
scenes, unfinished arcs, unread posts, and unavailable follow-ups visible as
remembered absence rather than silent disappearance.
FR69: Graduation outcomes must be composed from academic direction, relationship
states, special bonds, club identity, place memories, routine summary, and
paths not taken rather than a single global ending label.
FR70: Memory interpretation must preserve people-place-event motifs and allow
repeated presence, missed invitations, and unfinished paths to influence
semester summaries, year transitions, and endings.
FR71: The first delivery phase must be a `12`-week Year 1 Semester 1 vertical
slice that proves the daily loop, initial phone planning, exam flow, academic
failure floor, five initial classmates, and one fully supported lightweight
arc.
FR72: The featured lightweight MVP arc must belong to the popular status-holder
classmate and exercise reputation, social media as mask, family pressure, and
small acts of earned authenticity.

### NonFunctional Requirements

NFR1: The game must preserve a grounded, nostalgic, cozy-leaning school-life
tone rather than melodramatic spectacle.
NFR2: The experience must feel lightly demanding rather than punishing, so one
bad day should not ruin a run.
NFR3: Information surfaces must prioritize fairness and readability without
exposing hidden formulas or route solutions directly.
NFR4: Relationship, condition, and planning UI should prefer descriptive,
player-facing interpretation over raw optimization math whenever possible.
NFR5: The target runtime platform is Desktop JVM on PC with keyboard and mouse
input.
NFR6: The simulation must remain discrete-time and avoid continuous heavy
background simulation.
NFR7: Full-game scope must avoid large crowds, large open-world traversal, and
systems that would dilute the readable daily rhythm.
NFR8: Locations must stay compact, readable, and stable in identity rather than
navigation-heavy.
NFR9: Phone and social-media content must remain authored and lightweight, not a
heavy simulated internet.
NFR10: Relationship rewards must remain memory-first, with light or absent
systemic bonuses.
NFR11: Narrative writing must favor small truths, behavioral reveals, and
economical dialogue instead of exposition dumps.
NFR12: The full-game design must remain clearly separated from the Year 1
Semester 1 delivery slice to avoid product-scope drift.
NFR13: Poor condition must create friction and consequence without introducing
condition-based hard fail states.
NFR14: The architecture must preserve meaningful incompleteness as a positive
design value rather than a failure condition.
NFR15: Performance expectations must fit a comfortable 2D desktop school-life
sim without relying on simulation-heavy background actors.
NFR16: Reusable engine concerns must remain outside High School Story game
packages so the game/engine boundary stays clean.
NFR17: Project documentation and implementation-facing authored content must
remain in English unless a future localization contract is explicitly added.
NFR18: The game must avoid heavy economy, crafting, supply chains, automation,
delegation, market simulation, and management-sim sprawl.
NFR19: The game must avoid pre-hinted moral labeling or puzzle-lock treatment
for social choices.
NFR20: Graduation and epilogues must read like interpretation of a lived school
era rather than a route-results scoreboard.

### Additional Requirements

- Use Kotlin Game Engine 2D through the local `engine/` composite build and keep
  reusable engine behavior under `pro.piechowski.kge`.
- Keep platform-independent game logic in `core/` and desktop launchers,
  packaging, and preview tooling in `lwjgl3/`.
- Use `highSchoolStoryModule` as the root Koin composition module for game
  services, asset loading, config loading, and engine gameplay modules.
- Treat `SandboxLauncher` as the active development entrypoint and
  `MainLauncher` as incomplete while `GameEntrypoint.run()` remains `TODO()`.
- Implement playable authored scenes as `Story.Beat<GameState>` with beat-owned
  gating and suspending `play()` or `spawn()` execution.
- Use `DialogueManager.startDialogue(...).await()` for dialogue sequences inside
  playable beats.
- Keep beat gating and action gating inside beat definitions or action
  definitions rather than scattering them across UI, launchers, or unrelated
  orchestration code.
- Preserve a discrete-time simulation model where state advances only on action
  completion, travel completion, lesson turn resolution, sleep, and calendar
  transitions.
- Treat `GameState`, or an equivalent composed run-state aggregate, as the
  canonical coordination surface for calendar, time, condition, money,
  academics, relationships, locations, clubs, phone data, story flags,
  memories, and saves.
- Implement the phone as a set of read models derived from canonical state and
  authored content rather than disconnected UI-only data.
- Organize simulation logic around explicit domain services such as
  calendar/time, actions, travel, lessons, academics, relationships, phone,
  memory, and saves.
- Keep action validation and consequence application close together and prefer
  explicit result types for validation and resolution.
- Prefer data definitions for subjects, locations, phone entry types, and
  content metadata before duplicating procedural branches.
- Keep UI as a command/read-model layer that reads canonical state and requests
  actions instead of mutating progression directly.
- Structure narrative content as modular units such as beats, dialogue
  sequences, post packs, message chains, place hooks, club beats, exam scenes,
  year transitions, and epilogue fragments.
- Preserve source-of-truth ownership: `docs/game/narrative/design.md` owns
  narrative principles, `docs/game/narrative/content.md` owns
  implementation-ready prose, and code should implement accepted canon rather
  than inventing it silently.
- Support checkpoint classes for current save, daily sleep, about `3` days
  earlier, about `2` weeks earlier, about `2` months earlier, semester
  transition, and year transition.
- Keep preview tooling focused on validating slices such as intro, first
  weekday, lesson loop, travel, phone planning, relationship beats, and exam
  results.
- Treat existing placeholder Polish dialogue in code as implementation drift
  against the English documentation contract until intentionally localized.

### UX Design Requirements

UX-DR1: The default runtime posture must keep the world visible with a relatively
rich always-on HUD, frequent phone use, portrait-led dialogue, and lessons as
the only strongly combat-like subsystem.
UX-DR2: The always-on HUD must continuously expose `24`-hour time, current
location, energy, stress, mood, and money.
UX-DR3: Contextual HUD alerts must surface lateness or curfew risk, upcoming
lesson or event urgency, important new messages or invitations, academic risk,
and travel arrival or completion state without permanent nagging.
UX-DR4: The phone must open as an overlay occupying about one third of the
screen while the world remains visible behind it and meaningful simulation
progress pauses.
UX-DR5: The phone overlay must support shallow and deeper navigation across the
calendar, map, conversation list and detail, profile detail, classes, and
memory-album views without becoming a separate default full-screen mode.
UX-DR6: Opening and closing the phone must be cheap and fast enough that
players use it constantly for planning.
UX-DR7: Every time-costing action must use a lightweight confirmation surface
that shows time cost first and travel duration, arrival time, or top risk
second.
UX-DR8: Travel confirmation UX must warn before the player commits to choices
that would violate school, curfew, or sleep boundaries.
UX-DR9: Dialogue choices must present full or near-full lines with no pre-hint
tags, tone labels, or forecast labels.
UX-DR10: Dialogue presentation must be portrait-first with strong text contrast,
stable nameplates, and character emotion changes only on meaningful tone shifts.
UX-DR11: Social and relationship aftermath must usually be shown through later
messages, profile changes, availability shifts, or other authored traces rather
than instant reward popups.
UX-DR12: Relationship, condition, and planning microcopy must stay short,
natural, and human-readable rather than productivity-app, combat-log, or raw
stat language.
UX-DR13: Condition presentation must rely on icon-and-scale treatment rather
than raw numeric-only display, and it must not rely on color alone.
UX-DR14: The `24`-hour clock and other fairness-critical time information must
remain consistently placed and legible during long desktop sessions.
UX-DR15: The map must visually distinguish discovered, current, unknown, and
reachable-neighbor destination states at a glance.
UX-DR16: Message thread rows must support intimate authored content without
becoming an infinite-scroll chat-app clone.
UX-DR17: Lesson scenes must present a visible classroom context, lesson clock,
teacher view, and a stable command menu for safe, risky, reactive, and item
families.
UX-DR18: Teacher attention in lessons must be only semi-readable through
staging and light UI support, not a literal combat-style meter.
UX-DR19: Lesson feedback may feel snappier and more tactical than the rest of
the game, but the global UX must not adopt combat juice outside lessons.
UX-DR20: The phone, dialogue, and lesson surfaces must preserve coherent focus
order and efficient keyboard and mouse operation on desktop, while not blocking
future controller support.
UX-DR21: Reduced-motion support must dampen overlay transitions and lesson
emphasis without hiding information or breaking hierarchy.

### FR Coverage Map

FR1: Epic 6 - Live Through Three Years and Graduate With Your Own Memories
FR2: Epic 6 - Live Through Three Years and Graduate With Your Own Memories
FR3: Epic 1 - Start a New Life in Lakeview
FR4: Epic 1 - Start a New Life in Lakeview
FR5: Epic 1 - Start a New Life in Lakeview
FR6: Epic 1 - Start a New Life in Lakeview
FR7: Epic 3 - Build a Sustainable Routine Outside Class
FR8: Epic 2 - Survive School and Academic Pressure
FR9: Epic 2 - Survive School and Academic Pressure
FR10: Epic 6 - Live Through Three Years and Graduate With Your Own Memories
FR11: Epic 1 - Start a New Life in Lakeview
FR12: Epic 1 - Start a New Life in Lakeview
FR13: Epic 1 - Start a New Life in Lakeview
FR14: Epic 1 - Start a New Life in Lakeview
FR15: Epic 1 - Start a New Life in Lakeview
FR16: Epic 1 - Start a New Life in Lakeview
FR17: Epic 1 - Start a New Life in Lakeview
FR18: Epic 2 - Survive School and Academic Pressure
FR19: Epic 2 - Survive School and Academic Pressure
FR20: Epic 2 - Survive School and Academic Pressure
FR21: Epic 2 - Survive School and Academic Pressure
FR22: Epic 2 - Survive School and Academic Pressure
FR23: Epic 2 - Survive School and Academic Pressure
FR24: Epic 2 - Survive School and Academic Pressure
FR25: Epic 2 - Survive School and Academic Pressure
FR26: Epic 2 - Survive School and Academic Pressure
FR27: Epic 2 - Survive School and Academic Pressure
FR28: Epic 2 - Survive School and Academic Pressure
FR29: Epic 2 - Survive School and Academic Pressure
FR30: Epic 2 - Survive School and Academic Pressure
FR31: Epic 2 - Survive School and Academic Pressure
FR32: Epic 1 - Start a New Life in Lakeview
FR33: Epic 1 - Start a New Life in Lakeview
FR34: Epic 1 - Start a New Life in Lakeview
FR35: Epic 4 - Get Close to People Who Matter
FR36: Epic 4 - Get Close to People Who Matter
FR37: Epic 6 - Live Through Three Years and Graduate With Your Own Memories
FR38: Epic 4 - Get Close to People Who Matter
FR39: Epic 6 - Live Through Three Years and Graduate With Your Own Memories
FR40: Epic 4 - Get Close to People Who Matter
FR41: Epic 4 - Get Close to People Who Matter
FR42: Epic 4 - Get Close to People Who Matter
FR43: Epic 4 - Get Close to People Who Matter
FR44: Epic 4 - Get Close to People Who Matter
FR45: Epic 4 - Get Close to People Who Matter
FR46: Epic 4 - Get Close to People Who Matter
FR47: Epic 5 - Find Your Place in Lakeview
FR48: Epic 5 - Find Your Place in Lakeview
FR49: Epic 3 - Build a Sustainable Routine Outside Class
FR50: Epic 3 - Build a Sustainable Routine Outside Class
FR51: Epic 3 - Build a Sustainable Routine Outside Class
FR52: Epic 3 - Build a Sustainable Routine Outside Class
FR53: Epic 3 - Build a Sustainable Routine Outside Class
FR54: Epic 1 - Start a New Life in Lakeview
FR55: Epic 1 - Start a New Life in Lakeview
FR56: Epic 3 - Build a Sustainable Routine Outside Class
FR57: Epic 5 - Find Your Place in Lakeview
FR58: Epic 5 - Find Your Place in Lakeview
FR59: Epic 5 - Find Your Place in Lakeview
FR60: Epic 5 - Find Your Place in Lakeview
FR61: Epic 1 - Start a New Life in Lakeview
FR62: Epic 1 - Start a New Life in Lakeview
FR63: Epic 1 - Start a New Life in Lakeview
FR64: Epic 4 - Get Close to People Who Matter
FR65: Epic 4 - Get Close to People Who Matter
FR66: Epic 6 - Live Through Three Years and Graduate With Your Own Memories
FR67: Epic 6 - Live Through Three Years and Graduate With Your Own Memories
FR68: Epic 6 - Live Through Three Years and Graduate With Your Own Memories
FR69: Epic 6 - Live Through Three Years and Graduate With Your Own Memories
FR70: Epic 6 - Live Through Three Years and Graduate With Your Own Memories
FR71: Epic 6 - Live Through Three Years and Graduate With Your Own Memories
FR72: Epic 4 - Get Close to People Who Matter

## Epic List

### Epic 1: Start a New Life in Lakeview
The player creates their student identity, arrives in Lakeview, learns the day
structure, and gains the first usable planning and travel tools for living in
the new town.
**FRs covered:** FR3, FR4, FR5, FR6, FR11, FR12, FR13, FR14, FR15, FR16, FR17,
FR32, FR33, FR34, FR54, FR55, FR61, FR62, FR63

### Epic 2: Survive School and Academic Pressure
The player can move through the school block, make lesson-by-lesson decisions,
track grade danger, and reach exams or semester failure through fair, readable
consequences.
**FRs covered:** FR8, FR9, FR18, FR19, FR20, FR21, FR22, FR23, FR24, FR25,
FR26, FR27, FR28, FR29, FR30, FR31

### Epic 3: Build a Sustainable Routine Outside Class
The player manages condition, money, recovery, weekends, and broad personal
growth so that life outside school feels like a meaningful, survivable tradeoff.
**FRs covered:** FR7, FR49, FR50, FR51, FR52, FR53, FR56

### Epic 4: Get Close to People Who Matter
The player discovers classmates, reads their public and private signals through
scenes and phone surfaces, develops relationships, and completes the first
meaningful social arc.
**FRs covered:** FR35, FR36, FR38, FR40, FR41, FR42, FR43, FR44, FR45, FR46,
FR64, FR65, FR72

### Epic 5: Find Your Place in Lakeview
The player expands beyond the initial route into new places and clubs, building
persistent belonging through routines, group identity, and place-based
discovery.
**FRs covered:** FR47, FR48, FR57, FR58, FR59, FR60

### Epic 6: Live Through Three Years and Graduate With Your Own Memories
The player carries choices across school years, cannot see everything in one
run, and reaches graduation with an outcome shaped by academics, relationships,
clubs, places, and memory.
**FRs covered:** FR1, FR2, FR10, FR37, FR39, FR66, FR67, FR68, FR69, FR70,
FR71

<!-- Repeat for each epic in epics_list (N = 1, 2, 3...) -->

## Initial Delivery Slice Scope Note

The Year 1 Semester 1 vertical slice remains the first implementation target,
but it is treated as a release-scope synthesis rather than an independently
completable story inside Epic 6.

Canonical GDD delivery-scope traceability:

- GDD `FR3` and `FR4`: the initial implementation target is one playable
  `12`-week Year 1 Semester 1 slice.
- GDD `FR5`: the slice proves the daily loop, school pressure, compact place
  discovery, phone planning, condition, money, grades, travel, exam flow, and
  academic failure floor by combining Epic 1 through Epic 5 delivery.
- GDD `FR7`: the slice includes five initial classmates and one fully supported
  lightweight arc through Epic 4's first social-route scope.

This note is intentionally outside the story list so Epic 6 stays focused on
full-game progression and graduation systems rather than release packaging.

## Epic 1: Start a New Life in Lakeview

The player creates their student identity, arrives in Lakeview, learns the day
structure, and gains the first usable planning and travel tools for living in
the new town.

### Story 1.1: Create a Student Identity

As a player,
I want to define my starting interests and academic profile before the game
begins,
So that my run starts with a clear personal identity and meaningful strengths.

**Acceptance Criteria:**

**Given** the player starts a new game
**When** the setup flow opens
**Then** the player can choose explicit interest and preference toggles across
defined cultural and lifestyle domains
**And** the selected interests are saved into the new run state.

**Given** the player is assigning starting academics
**When** the player distributes attribute points
**Then** the player can allocate point-buy values across the starting academic
stats
**And** the system blocks invalid values outside the accepted range or budget.

**Given** the player completes setup
**When** the run state is created
**Then** the chosen interests and academic attributes are available to later
gameplay systems
**And** they remain independent at the start rather than cross-boosting each
other.

### Story 1.2: Arrive in Lakeview and Reach the Dormitory

As a player,
I want to play through the arrival sequence from bus ride to dormitory check-in,
So that the game establishes the protagonist premise, tone, and first playable
context.

**Acceptance Criteria:**

**Given** a new run begins after character setup
**When** the intro sequence starts
**Then** the player sees the late-afternoon arrival to Lakeview from the bus
ride
**And** the scene establishes that the protagonist came from a small village to
begin high school life in Lakeview.

**Given** the player is on the bus and then at the stop
**When** the scripted intro continues
**Then** the sequence includes the parent message exchange, optional
ask-for-directions interactions, dormitory check-in, room reflection, and final
sleep transition
**And** those beats preserve the canonical intro flow from
`docs/game/narrative/content.md`.

**Given** the intro reaches its end
**When** the player chooses sleep in the dormitory room
**Then** the game transitions into the first normal morning gameplay state
**And** control passes into the regular day loop rather than another scripted
scene.

### Story 1.3: Start the First Morning With a Readable Day State

As a player,
I want to begin the first normal morning with a readable overview of my
situation,
So that I can understand the day structure and make an informed first choice.

**Acceptance Criteria:**

**Given** the intro handoff has completed
**When** the first playable morning starts
**Then** the player begins in the dormitory at `06:00`
**And** the run state reflects the morning phase of the weekday structure.

**Given** the player is in the normal morning state
**When** the HUD is visible
**Then** the HUD shows the always-on core information for time, location,
energy, stress, mood, and money
**And** the information remains legible in a desktop keyboard-and-mouse
context.

**Given** the player is free to act in the morning
**When** the player inspects the available options
**Then** at least one meaningful pre-school action is available such as
planning, recovery, study, or contact
**And** the game makes the school-day rhythm understandable before the player
commits time.

### Story 1.4: Open the Phone and Inspect the Day Without Spending Time

As a player,
I want to open the in-game phone to inspect my day and nearby options without
losing time,
So that planning feels fair and convenient.

**Acceptance Criteria:**

**Given** the player is in a normal overworld state where phone access is
allowed
**When** the player opens the phone
**Then** the phone appears as an overlay while the world remains visible behind
it
**And** meaningful simulation progression pauses while the phone is open.

**Given** the phone overlay is open
**When** the player navigates its first available surfaces
**Then** the player can inspect at least the phone home, calendar, and map views
**And** those views read from canonical game state rather than disconnected
placeholder state.

**Given** the player uses keyboard or mouse inside the phone
**When** the player moves focus, enters a view, or closes the overlay
**Then** the interaction order remains coherent and efficient for desktop play
**And** reduced-motion mode can soften overlay transitions without hiding
information.

### Story 1.5: Preview and Confirm Time-Costing Actions

As a player,
I want to see the time cost and top risk of an action before I commit to it,
So that I can make fair choices without accidental self-sabotage.

**Acceptance Criteria:**

**Given** the player selects a time-costing action
**When** the confirmation layer appears
**Then** the interface shows the action time cost first
**And** it also shows the most relevant secondary consequence such as arrival
time, lateness risk, or another top warning.

**Given** the selected action would break a school, curfew, or sleep boundary
**When** the confirmation is shown
**Then** the player receives a readable warning before committing
**And** the game does not silently apply the consequence after the action
starts.

**Given** the selected action is impossible in the current state
**When** the player attempts it
**Then** the action is blocked before start
**And** the blocking condition is explained clearly enough for the player to
understand why.

### Story 1.6: Travel Between Discovered Locations Using the Map

As a player,
I want to choose a discovered destination from the map and travel there safely,
So that movement through Lakeview becomes a meaningful planning action rather
than guesswork.

**Acceptance Criteria:**

**Given** the player has at least one discovered destination beyond the current
location
**When** the player opens the map view
**Then** the map distinguishes current, discovered, unknown, and
reachable-neighbor destination states
**And** the player can select a valid destination from that view.

**Given** the player selects a destination
**When** the travel confirmation is shown
**Then** the game displays destination, duration, cost if any, and expected
arrival time
**And** the confirmation uses the same readable time-first decision pattern as
other time-costing actions.

**Given** the player confirms valid travel
**When** the trip resolves
**Then** the player arrives at the selected discovered location with updated
time and state
**And** invalid or impossible travel is blocked before movement begins.

## Epic 2: Survive School and Academic Pressure

The player can move through the school block, make lesson-by-lesson decisions,
track grade danger, and reach exams or semester failure through fair, readable
consequences.

### Story 2.1: Enter the School Block With Clear Obligations

As a player,
I want the school portion of the day to begin with visible obligations and
constraints,
So that I understand what the academic backbone expects from me.

**Acceptance Criteria:**

**Given** a weekday morning reaches the school start boundary
**When** the school block begins
**Then** the game transitions into the school phase of the day
**And** the player can no longer ignore school attendance silently.

**Given** the player is in the school block
**When** the current school state is shown
**Then** the game surfaces the current lesson, the fact that the player is in a
school-constrained phase, and any immediate announcement or social hook
**And** the player can understand that school is the weekday backbone.

**Given** the player reaches a new semester or month
**When** the relevant calendar window opens
**Then** the semester's academic structure and the month's school events are
available through the planning surfaces
**And** they can be reviewed before later academic pressure resolves.

### Story 2.2: Play a Standard Three-Turn Lesson

As a player,
I want a standard lesson to resolve through a concise classroom decision loop,
So that school feels interactive rather than automatic.

**Acceptance Criteria:**

**Given** the player enters a standard lesson
**When** the lesson starts
**Then** the lesson runs for exactly `3` player decision turns
**And** each turn represents `15` minutes of in-game time.

**Given** the player is choosing on a lesson turn
**When** the command menu opens
**Then** the menu exposes stable action families for safe, risky, reactive, and
contextual item actions
**And** the lesson scene shows the classroom context and lesson timing clearly.

**Given** reduced-motion mode is enabled
**When** lesson emphasis or turn transitions play
**Then** the presentation softens movement and visual punch
**And** all lesson-critical information remains readable.

### Story 2.3: Feel Subject Identity and Teacher Attention

As a player,
I want different subjects and teacher posture to change how the same lesson
choices feel,
So that classes become learnable systems instead of identical menus.

**Acceptance Criteria:**

**Given** the player attends different subjects
**When** the same command family is chosen in each lesson
**Then** the outcome weighting, tone, or feedback differs by subject
**And** the difference comes from subject identity rather than a bespoke
minigame.

**Given** teacher attention is high or low during a lesson
**When** the player takes a risky or reactive action
**Then** the outcome risk meaningfully changes
**And** the player receives semi-readable staging and light UI support instead
of a literal combat-style meter.

**Given** a lesson turn resolves
**When** the result is applied
**Then** the game updates academic standing and immediate condition effects
**And** getting caught or using good timing can materially change the turn
value.

### Story 2.4: Inspect Academic Standing and Upcoming Pressure

As a player,
I want to review my grades and near-term academic pressure from the phone,
So that I can judge risk before the semester becomes dangerous.

**Acceptance Criteria:**

**Given** the player opens the classes view on the phone
**When** subject data is displayed
**Then** the game shows standing for `math`, `history`, `literature`, `science`,
`art`, and `biology`
**And** the view also shows readable academic feedback and grade-risk cues.

**Given** the player is in or approaching a dangerous academic state
**When** the classes view or other relevant planning surface is inspected
**Then** the player can understand the danger without needing hidden formulas
**And** the UX remains descriptive rather than spreadsheet-like.

**Given** the player checks calendar-linked academic information
**When** exams or key school obligations are near
**Then** those obligations are readable through the phone planning layer
**And** the player can plan around them before the outcome resolves.

### Story 2.5: Take Semester Exams and Receive Results

As a player,
I want each semester to culminate in an exam period with visible consequences,
So that academic pressure leads to a meaningful payoff.

**Acceptance Criteria:**

**Given** the semester reaches its exam period
**When** the exam sequence begins
**Then** the exam resolves through a `3`-phase structure
**And** the player's preparation remains the main driver of the result.

**Given** the player enters the exam period
**When** day-of state is evaluated
**Then** energy and stress still influence execution
**And** they do not completely replace semester-long preparation.

**Given** the exam has completed
**When** the game reveals the outcome
**Then** the result is delivered as a delayed in-world summary with emotional
tone and subject-level consequences
**And** the player can connect the result to earlier academic behavior.

### Story 2.6: Fail a Semester Fairly and Recover From Checkpoints

As a player,
I want academic failure to be readable and recoverable,
So that neglect has weight without feeling arbitrary or irreversible.

**Acceptance Criteria:**

**Given** the player is approaching academic collapse
**When** the game evaluates severe grade danger
**Then** the player can receive at most one explicit critical academic warning
**And** the warning only appears when the state is genuinely severe.

**Given** the player has fully neglected school across the semester
**When** failure resolves
**Then** the semester can end in academic collapse as the only hard run-ending
failure mode
**And** the failure summary explains the cause clearly.

**Given** academic failure has been reached
**When** recovery options are shown
**Then** the player can choose from recovery saves from about `3` days, `2`
weeks, and `2` months earlier
**And** the game does not offer condition-based hard-failure recovery because
condition alone did not end the run.

## Epic 3: Build a Sustainable Routine Outside Class

The player manages condition, money, recovery, weekends, and broad personal
growth so that life outside school feels like a meaningful, survivable tradeoff.

### Story 3.1: Track Everyday Condition and Money

As a player,
I want my everyday condition and cash pressure to stay visible and meaningful,
So that routine decisions outside class feel consequential.

**Acceptance Criteria:**

**Given** the player is in normal gameplay
**When** the HUD is visible
**Then** energy, stress, mood, and money are all present in the player's
planning context
**And** condition is communicated through readable icon-and-scale treatment
rather than color alone.

**Given** the player's condition worsens or improves
**When** later actions resolve
**Then** outcomes can become weaker, riskier, or smoother
**And** poor condition does not directly erase prior academic, social, or
discovery progress.

**Given** the player is low on money
**When** the game evaluates an optional activity or support option
**Then** the choice can become narrower or less convenient
**And** the run does not hard-fail because of low cash alone.

### Story 3.2: Recover in Different Places With Different Textures

As a player,
I want recovery actions in different places to feel distinct,
So that rest becomes part of my personal routine instead of a generic reset.

**Acceptance Criteria:**

**Given** the player chooses a recovery action in the dormitory or park
**When** the action resolves
**Then** the recovery outcome differs in flavor or tradeoff by location
**And** the result still updates canonical condition state.

**Given** the player is deciding whether to recover or push forward
**When** the action is previewed
**Then** the game communicates the time cost and likely recovery direction in
plain language
**And** the player can compare recovery against other priorities fairly.

**Given** the player uses recovery repeatedly across the routine
**When** subsequent days are played
**Then** recovery helps the player stabilize a bad stretch
**And** it does not remove the need to plan around time pressure.

### Story 3.3: Receive Allowance and Use Emergency Part-Time Work

As a player,
I want a predictable baseline income and an emergency fallback work option,
So that money creates pressure without becoming the entire game.

**Acceptance Criteria:**

**Given** a new week begins
**When** weekly finances resolve
**Then** the player receives the baseline allowance into their money state
**And** the update is visible through ordinary planning surfaces.

**Given** the player is low on money
**When** the player chooses the abstract part-time work option
**Then** the action increases money
**And** it also costs valuable time and/or condition as a tradeoff.

**Given** the player uses work repeatedly
**When** the routine is evaluated across days
**Then** work behaves as an emergency or lifestyle tradeoff rather than an
optimal default grind loop
**And** key school events are not broadly paywalled behind constant labor.

### Story 3.4: Use Weekends for Longer-Form Planning

As a player,
I want weekends to feel structurally different from weekdays,
So that my routine opens into bigger recovery and social decisions.

**Acceptance Criteria:**

**Given** the calendar reaches a weekend day
**When** the player enters that day
**Then** the available structure differs from a standard school weekday
**And** the player can feel the absence of the school block backbone.

**Given** the player is planning a weekend
**When** the player inspects available choices
**Then** the day supports longer-form recovery, social, club, exploration, or
optional catch-up opportunities
**And** academic catch-up does not dominate the weekend's identity.

**Given** the player compares weekday and weekend flow
**When** the next day begins
**Then** the rhythm shift is evident in both schedule pressure and available
actions
**And** the player's weekend choices still carry consequences into later days.

### Story 3.5: Grow Learning, Social, and Physical Tendencies Over Time

As a player,
I want the game to remember how I keep living my days,
So that repeated choices gradually shape who my student becomes.

**Acceptance Criteria:**

**Given** the player repeatedly studies, socializes, or acts physically
**When** enough relevant actions have accumulated
**Then** the game updates the broad growth areas for `learning`, `social`, and
`physical`
**And** those areas persist as part of the canonical run state.

**Given** broad growth has changed
**When** future actions resolve
**Then** the game can use that growth to influence efficiency, flavor, or
follow-up interpretation
**And** it does not replace grades, relationships, clubs, or condition as the
main feedback surfaces.

**Given** the player inspects their developing routine
**When** growth information is surfaced
**Then** the feedback stays readable and non-technical
**And** it helps the player understand the direction of their life without
turning into a min-max dashboard.

## Epic 4: Get Close to People Who Matter

The player discovers classmates, reads their public and private signals through
scenes and phone surfaces, develops relationships, and completes the first
meaningful social arc.

### Story 4.1: Meet Classmates and Track Descriptive Relationship Stages

As a player,
I want newly known classmates to become part of my social world in a readable
way,
So that meeting people feels like the start of a real relationship rather than a
hidden stat.

**Acceptance Criteria:**

**Given** the player meets a classmate through a scene or encounter
**When** that classmate becomes known
**Then** the classmate enters the social layer as a persistent known person
**And** their relationship state starts from a descriptive player-facing stage.

**Given** the player spends meaningful time with a known classmate
**When** the interaction resolves
**Then** the relationship can move among `stranger`, `acquaintance`,
`comfortable`, `close`, and `very close`
**And** the change is reflected without exposing raw affinity numbers.

**Given** the player checks social information later
**When** the classmate is surfaced again
**Then** the relationship stage remains persistent in canonical state
**And** it can gate later scenes and opportunities.

### Story 4.2: Unlock Profiles, Posts, and Messages for Known Classmates

As a player,
I want the phone to reflect the classmates I know,
So that social planning happens through in-world information instead of guesswork.

**Acceptance Criteria:**

**Given** a classmate is known
**When** the player opens the social or messages surfaces
**Then** that classmate can appear through a profile, authored post, message
thread, or combination of those surfaces
**And** the content is tied to canonical relationship and narrative state.

**Given** the player reads a classmate profile or message row
**When** the content is presented
**Then** the microcopy stays intimate and human-readable
**And** the presentation avoids spreadsheet-style relationship math or
infinite-scroll chat-clone behavior.

**Given** a social interaction has just happened
**When** later phone content updates
**Then** the aftermath can appear through messages, profile details, or changed
tone
**And** the game avoids instant reward popups as the main relationship feedback.

### Story 4.3: Discover Preferences Through Play Instead of Guessing

As a player,
I want to learn what classmates care about through interaction and observation,
So that social progress becomes fair without becoming solved immediately.

**Acceptance Criteria:**

**Given** the player talks with classmates, reads posts, joins invitations, or
shares places
**When** discovery triggers occur
**Then** classmate preferences and profile facts can become known through those
actions
**And** the information is added permanently to the relevant phone surfaces.

**Given** the player has not yet learned a relevant preference
**When** a relationship opportunity is evaluated
**Then** the game can preserve uncertainty or softer hints
**And** it does not require blind failure to reveal basic compatibility forever.

**Given** the player has learned a meaningful preference
**When** the next relevant social opportunity appears
**Then** the new knowledge can unlock fairer planning or better-fitting options
**And** the player can see that discovery matters to later progress.

### Story 4.4: Plan Social Pursuit From Known Location and Availability Clues

As a player,
I want to know when a classmate is plausibly reachable,
So that choosing who to pursue feels intentional rather than random.

**Acceptance Criteria:**

**Given** a classmate is known and current context justifies visibility
**When** the player checks the social or map-linked planning surfaces
**Then** the classmate's current location or availability hint can be shown
**And** the information remains constrained by plausible in-world knowledge.

**Given** the player chooses to pursue a reachable classmate
**When** planning is evaluated
**Then** travel time, activity duration, money, club commitments, and condition
still constrain the choice
**And** hidden whereabouts are not the main blocker once social knowledge exists.

**Given** an opportunity is missed
**When** the player inspects later social traces
**Then** the game can show a readable aftermath such as changed availability,
messages, or memory-relevant absence
**And** the opportunity does not disappear without explanation.

### Story 4.5: Complete the Featured Popular Status-Holder Arc

As a player,
I want the first featured classmate route to deliver a full but lightweight arc,
So that the social fantasy is proven by one memorable relationship.

**Acceptance Criteria:**

**Given** the player follows the popular status-holder route across the semester
**When** the accepted arc beats are encountered
**Then** the route includes public confidence, over-curated social media,
reputation pressure, a private crack, and a small final act of authenticity
**And** the sequence preserves the route's public/private contrast.

**Given** the player supports the classmate through the route
**When** key beats resolve
**Then** the player acts as witness, catalyst, participant, or safe person
**And** the route does not frame the player as a universal fixer.

**Given** the route reaches its payoff
**When** the final beat resolves
**Then** the emotional win is a small earned moment of authenticity rather than
a melodramatic confession
**And** the result leaves a route-specific memory trace in the run.

### Story 4.6: Form Special Bonds Without Replacing Friendship

As a player,
I want strong social ties to differentiate between close friendship, best
friendship, and romance,
So that the end of a route feels specific to the bond I built.

**Acceptance Criteria:**

**Given** the player has advanced a relationship far enough
**When** a special-bond decision becomes available
**Then** the game can recognize best-friend or romance-level commitment
**And** the system enforces only one active committed romance at a time.

**Given** the player chooses a romance or best-friend path
**When** the state updates
**Then** the bond persists in canonical relationship state
**And** romance is treated as distinct from, not automatically superior to,
friendship.

**Given** the player finishes a strong relationship without romance
**When** the route is later interpreted
**Then** the game can still produce a complete and meaningful friendship outcome
**And** no-romance social play remains narratively valid.

## Epic 5: Find Your Place in Lakeview

The player expands beyond the initial route into new places and clubs, building
persistent belonging through routines, group identity, and place-based
discovery.

### Story 5.1: Expand the Travel Network Through Discovery

As a player,
I want new destinations to become available because of what I do and who I know,
So that Lakeview unfolds through lived discovery instead of a fully open map.

**Acceptance Criteria:**

**Given** the player progresses through story, relationships, clubs, events,
messages, or exploration
**When** a discovery trigger resolves
**Then** a new location can be added to the discovered travel network
**And** it does not appear as reachable before that discovery.

**Given** the player has discovered multiple destinations
**When** the map is reopened
**Then** the network reflects the updated set of known destinations
**And** previously unknown places remain obscured until earned.

**Given** the player reaches the initial vertical-slice world
**When** available locations are evaluated
**Then** the slice can support at least the `dormitory`, `school`, `district`,
`shop`, and `park`
**And** the full-game model remains expandable toward roughly `15-25`
destinations.

### Story 5.2: Give Places Stable Identity and Revisit Value

As a player,
I want recurring places to mean something beyond fast travel,
So that movement through the town helps build routine and memory.

**Acceptance Criteria:**

**Given** the player enters a recurring location
**When** the location state is evaluated
**Then** the place has a stable practical function and an emotional function
**And** it exposes actions appropriate to the current phase or context.

**Given** the player returns to a place over time
**When** new people, moods, or hooks are present
**Then** the location can offer revisit value through changing social or
narrative context
**And** it still remains recognizably the same place.

**Given** the player is choosing what to do after school
**When** they think in terms of destinations
**Then** physically going somewhere can reveal people, hooks, or opportunities
**And** place-first discovery remains a core source of ideas.

### Story 5.3: Join a Club and Add It to Weekly Routine

As a player,
I want to commit to a club that changes my week and social identity,
So that belonging is shaped by more than academics and one-on-one relationships.

**Acceptance Criteria:**

**Given** the player discovers a club opportunity
**When** the player joins the club
**Then** the club becomes part of the player's ongoing commitments
**And** future planning surfaces can show its meetings or relevant events.

**Given** the player has joined a club
**When** the weekly routine is evaluated
**Then** the club affects schedule pressure, identity flavor, and potential
social hooks
**And** it does not behave like a management or automation subsystem.

**Given** the player compares clubs against other commitments
**When** decisions are made across several days
**Then** the club competes meaningfully with recovery, academics, and personal
relationships
**And** one run can make only a limited number of club commitments feel deep.

### Story 5.4: Use Clubs and Places to Unlock New Belonging Paths

As a player,
I want clubs and places to open new people, scenes, and routines,
So that the wider world of Lakeview feels interconnected rather than decorative.

**Acceptance Criteria:**

**Given** the player joins a club or deepens a place-based routine
**When** later opportunities are generated
**Then** the game can unlock new events, social hooks, or location uses through
that commitment
**And** the new opportunities are tied back to the club or place identity.

**Given** the player keeps showing up to a place or group
**When** the game interprets belonging
**Then** that repeated presence contributes to social texture, routine, and
memory
**And** the result feels like belonging rather than checklist completion.

**Given** the player keeps investing in a club across semesters
**When** long-term identity and outcome surfaces are interpreted
**Then** the club can contribute future-path flavor and light skill-growth or
efficiency flavor
**And** those rewards remain secondary to memories, relationships, and routine
identity rather than turning clubs into management systems.

**Given** the player stops investing in a club or place path
**When** later opportunities are compared
**Then** other paths remain viable
**And** the game preserves meaningful tradeoffs instead of forcing total
completion of every belonging layer.

**Canonical GDD traceability:** `FR49` future-path flavor and light
skill-growth or efficiency flavor are explicitly owned here.

### Story 5.5: Let Rotating Peripheral Characters Add Texture Without Becoming Full Routes

As a player,
I want the wider school world to include recurring side characters beyond the
core cast,
So that Lakeview feels socially broad without diluting the main classmate arcs.

**Acceptance Criteria:**

**Given** the player moves through classes, clubs, locations, events, or work
contexts
**When** broader social context is generated
**Then** rotating peripheral characters can appear with short hooks, scene
texture, or local social presence
**And** they do not require full multi-year route state to matter.

**Given** the player compares the wider cast against the core classmates
**When** relationship depth and ending ownership are evaluated
**Then** only core classmates own full multi-year arc depth and
best-friend/romance outcome slots
**And** peripheral characters stay as world-breadth contributors rather than
competing for equivalent route priority.

**Canonical GDD traceability:** `FR47` rotating peripheral characters are
explicitly owned here, while Epic 6 Story 6.2 continues to own the persistent
core cast and capacity rule.

## Epic 6: Live Through Three Years and Graduate With Your Own Memories

The player carries choices across school years, cannot see everything in one
run, and reaches graduation with an outcome shaped by academics, relationships,
clubs, places, and memory.

### Story 6.1: Carry the Run Across Semesters and School Years

As a player,
I want my run to persist through semesters and year transitions,
So that the game feels like one continuous high school life rather than isolated
chapters.

**Acceptance Criteria:**

**Given** the player completes a semester
**When** the next structural phase begins
**Then** the game carries forward canonical state for academics, condition,
money, relationships, clubs, locations, and memory
**And** the new phase starts without wiping earned identity.

**Given** the player reaches a year transition
**When** the transition summary resolves
**Then** the game reflects social, academic, and place changes from the closing
year
**And** it prepares the next year with its own narrative role and schedule
pressure.

**Given** the player continues toward graduation
**When** the multi-year structure is inspected
**Then** the run is organized across day, week, semester, school year, and full
run layers
**And** each layer remains readable in relation to the others.

### Story 6.2: Scale the Social Layer to a Full Multi-Year Cast With Capacity Limits

As a player,
I want the broader social cast to grow across the run without becoming
completionist noise,
So that I feel the shape of a full school life while still being forced to
prioritize.

**Acceptance Criteria:**

**Given** the full social layer is active
**When** the run advances across years
**Then** the game can support a core cast of `10` classmates with multi-year arc
state
**And** those arcs remain persistent across semesters and year transitions.

**Given** the player invests deeply in several classmates
**When** the run's social capacity is evaluated
**Then** the game supports strong progress with about `3-5` arcs in one run
**And** it does not expect or strongly reward total completion of all `10`.

**Given** the player encounters optional beats, posts, and routes
**When** some content is missed
**Then** the run remains valid and emotionally coherent
**And** missable content does not imply that the player failed to play
correctly.

### Story 6.3: Preserve Memories and Meaningful Absence in the Memory Album

As a player,
I want the game to remember both what happened and what almost happened,
So that my school years feel personal rather than exhaustively solved.

**Acceptance Criteria:**

**Given** the player completes scenes, repeats routines, or shares meaningful
places with people
**When** memory-worthy events are recorded
**Then** the memory album stores people-place-event motifs rather than only flat
checklist unlocks
**And** those memories remain available for later recap and interpretation.

**Given** the player misses invitations, leaves arcs unfinished, or never
returns to a promising path
**When** the run is later interpreted
**Then** the game can preserve those absences as subtle traces such as missed
moments, unread posts, or unclosed motifs
**And** the result feels reflective rather than punitive.

**Given** the player experiences narrative content through beats, dialogue,
phone posts, messages, events, and summaries
**When** the memory layer updates
**Then** those different delivery channels can all contribute to later memory
interpretation
**And** the album becomes a real narrative surface rather than flavor storage.

### Story 6.4: Reach Graduation With a Composed Personal Outcome

As a player,
I want graduation to reflect the life I actually lived,
So that the ending feels specific to my run instead of globally generic.

**Acceptance Criteria:**

**Given** the player reaches the end of Year 3
**When** graduation outcome resolution begins
**Then** the game composes the ending from academics, relationship states,
special bonds, clubs, place memories, routine summary, and paths not taken
**And** it does not collapse everything into a single global ending label.

**Given** the player has built different kinds of bonds and priorities
**When** epilogues are written
**Then** friendship, best-friend, romance, club identity, and academic
direction can color the outcome differently
**And** unfinished but meaningful connections remain emotionally real.

**Given** the player reviews the end of the run
**When** final summaries and epilogues are shown
**Then** the result feels like the end of a shared era rather than a route
scoreboard
**And** the player can understand what they carried forward from high school.

### Story 6.5: Interpret Academic Identity and Future Direction at Graduation

As a player,
I want graduation to interpret what kind of student I became,
So that my academic future feels inferred from the life I lived instead of a
late forced track choice.

**Acceptance Criteria:**

**Given** the player reaches late Year 3 or graduation outcome resolution
**When** the future-direction layer is composed
**Then** the game infers a soft academic profile from subject strengths, study
habits, club participation, repeated choices, and Year 3 confirmation
**And** it does not ask the player to pick a formal academic track up front.

**Given** the player reviews the academic side of their ending
**When** the final recap surface is shown
**Then** the game presents both per-subject and overall academic summaries
**And** those summaries align with the run's recorded academic history and
future-direction framing.

**Given** the player's ending has enough grounded future context
**When** the final epilogue package is assembled
**Then** the game may include an optional post-graduation glimpse
**And** that glimpse reads as a short interpretation of the lived run rather
than a separate reward screen.

**Canonical GDD traceability:** `FR38` soft academic profiles and the missing
academic-summary / optional-glimpse parts of `FR64` are explicitly owned here.
