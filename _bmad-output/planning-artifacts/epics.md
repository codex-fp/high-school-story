---
stepsCompleted:
  - step-01-validate-prerequisites
  - step-02-design-epics
  - step-03-create-stories
inputDocuments:
  - docs/game-brief.md
  - docs/game-design.md
  - docs/game-architecture.md
  - docs/narrative-design.md
  - docs/architecture.md
---

# High School Story - Epic Breakdown

## Overview

This document provides the complete epic and story breakdown for High School Story, decomposing the requirements from the GDD, UX Design if it exists, and Architecture requirements into implementable stories.

## Requirements Inventory

### Functional Requirements

FR1: The game must support a full run that starts at the beginning of Year 1 and ends with Year 3 graduation.
FR2: The progression model must represent day, week, semester, school year, and full-run layers.
FR3: Time must advance in discrete 15-minute increments for standard time-costing actions.
FR4: A standard weekday must start in the dormitory at 06:00.
FR5: The daily structure must support dormitory morning, school block, afternoon freedom, dormitory evening, and sleep phases.
FR6: The player must be required to return to the dormitory by 21:00 and sleep must occur automatically at 22:00.
FR7: The game must present the start of each day with visible time, location, condition, money, school pressure, and social-planning information.
FR8: The morning phase must allow at least one meaningful pre-school action such as planning, recovery, study, or contact.
FR9: The game must support distinct weekend structure with longer-form recovery, social, club, exploration, and catch-up opportunities.
FR10: The player must be able to travel between discovered locations, with destination, duration, cost if any, and expected arrival time shown before confirmation.
FR11: Impossible actions and impossible travel must be blocked before the player commits to them.
FR12: Risky but allowed actions must show a readable warning and likely consequence before confirmation.
FR13: Travel and action validation must protect the player from accidental school-attendance, curfew, and sleep-boundary violations unless explicit risky support is provided.
FR14: The school block must generate lessons, academic pressure, announcements, and social hooks as the weekday backbone.
FR15: Standard lessons must resolve as three decision turns of 15 minutes each.
FR16: Each lesson turn must offer the shared action set of attentive listening, talking, reading, browsing, and napping.
FR17: Subject identity must make lessons feel observably different through reward biases, tone, and weighting rather than separate bespoke minigames.
FR18: The game must track grades per subject for math, history, literature, science, art, and biology.
FR19: Academic standing must be affected by lessons, targeted study, starting academic attributes, broader growth, semester preparation, club context, and exam execution.
FR20: The classes view on the phone must expose subject standing, grade risk, and academic feedback.
FR21: The player must be able to monitor academic danger before failure without needing hidden information.
FR22: Academic collapse must be the only hard run-ending failure mode and must come from sustained school neglect.
FR23: The game must allow at most one explicit critical academic warning before semester failure.
FR24: Semester failure must offer recovery save choices from about 3 days, 2 weeks, and 2 months earlier.
FR25: Each semester must culminate in an exam period that uses a three-phase structure and delayed in-world results.
FR26: Semester preparation must be the main exam driver, with day-of energy and stress still affecting execution.
FR27: The game must expose the semester academic schedule from the start of each semester and monthly school events from the start of each month.
FR28: Year transitions must summarize what changed socially, academically, and spatially without wiping earned identity.
FR29: The in-game phone must provide calendar, map, social media, messages, classes, and memory album apps.
FR30: The calendar app must show lessons, exams, school events, club meetings, deadlines, and accepted plans.
FR31: The map app must show discovered destinations, known routes, travel costs, and expected arrival.
FR32: The social media app must show classmate profiles, authored posts, discovered preferences, shared memories, known current locations, and availability hints.
FR33: The messages app must support invitations, lightweight replies, planning hooks, and relationship or club prompts.
FR34: The memory album must store important scenes, recurring people-place-event motifs, and endgame recap material.
FR35: Relationships must be tracked per known classmate using descriptive stages: stranger, acquaintance, comfortable, close, and very close.
FR36: The full game must support 10 core classmates with multi-year arcs, while one run should only allow deep progress with roughly 3 to 5 arcs.
FR37: The game must support optional romance, with only one active committed romance at a time.
FR38: The game must support a best-friend bond that may overlap with romance but does not have to.
FR39: Classmate preferences and profile facts must start hidden and become discoverable through interactions, posts, invitations, clubs, messages, and shared places.
FR40: Discovered classmate information must persist in the phone's profile and social layers.
FR41: Once a classmate is known, the game must surface their current location and availability whenever the player has a plausible in-world reason to know it.
FR42: Relationship progression must reward the player primarily with scenes, memories, emotional payoff, and route-specific content rather than major systemic bonuses.
FR43: The game must support 4 to 5 thematic clubs as a mid-layer identity system with lighter arcs than core classmate routes.
FR44: The game must represent player condition with energy, stress, mood, and money as core everyday planning variables.
FR45: Poor condition must weaken outcomes and raise risk without directly erasing earned progress or hard-failing the run.
FR46: The game must provide distinct recovery options, including different recovery textures across places such as the dormitory and the park.
FR47: The economy must provide weekly allowance as baseline income and optional abstract part-time work as an emergency tradeoff.
FR48: Money must matter for social activities, comfort, academic support, consumables, and travel convenience without becoming the dominant system.
FR49: The player setup flow must support direct interest/preference toggles across cultural domains.
FR50: The player setup flow must support 1 to 10 point-buy academic attributes that start independent from interest toggles.
FR51: The game must track broad growth areas for learning, social, and physical development.
FR52: Lakeview must support a full-game destination network of roughly 15 to 25 discoverable locations, with an initial vertical-slice set of dormitory, school, district, shop, and park.
FR53: Locations must have stable identities, practical functions, emotional functions, travel connections, and phase-specific actions.
FR54: New destinations must unlock through story, relationships, clubs, events, messages, or exploration rather than being available all at once.
FR55: After-school discovery must be place-first, so physically going somewhere reveals hooks, people, and possibilities.
FR56: The game must support keyboard and mouse desktop input for movement, phone use, dialogue, lesson decisions, action confirmation, and travel selection.
FR57: Narrative delivery must use playable beats, dialogue scenes, lesson-adjacent moments, school events, club events, phone content, place-based hooks, year transitions, graduation, and epilogues.
FR58: The protagonist premise must begin with arrival from a small village to Lakeview, followed by dormitory check-in, room orientation, phone orientation, sleep, and the first school day.
FR59: The player role in classmate arcs must be witness, catalyst, participant, and safe person rather than savior or universal fixer.
FR60: The full-game narrative layer must support 10 core classmate archetypes, each with a school-facing mask, hidden drama, and recurring memory motif.
FR61: The game must preserve meaningful incompleteness by keeping missed scenes, unfinished arcs, unread posts, and unavailable follow-ups visible as remembered absence rather than silent disappearance.
FR62: Graduation outcomes must be composed from academic direction, relationship states, special bonds, club identity, place memories, routine summary, and paths not taken rather than a single global ending label.
FR63: Memory interpretation must preserve people-place-event motifs and allow recurring presence, missed invitations, and unfinished paths to influence semester summaries, year transitions, and endings.
FR64: The first delivery phase must be a 12-week Year 1 Semester 1 vertical slice that proves the daily loop, initial phone planning, exam flow, academic failure floor, five initial classmates, and one fully supported lightweight arc.
FR65: The featured lightweight MVP arc must belong to the popular status-holder classmate and include public image, social media mask, family pressure, and small acts of earned authenticity.

### NonFunctional Requirements

NFR1: The game must preserve a grounded, nostalgic, cozy-leaning school-life tone rather than melodramatic spectacle.
NFR2: The experience must feel lightly demanding rather than punishing, so one bad day should not ruin a run.
NFR3: Information surfaces must prioritize fairness and readability without exposing hidden formulas or route solutions directly.
NFR4: Relationship and planning UI must use descriptive, player-facing interpretation instead of raw optimization math whenever possible.
NFR5: The target runtime platform is Desktop JVM on PC with keyboard and mouse input.
NFR6: The simulation must remain discrete-time and avoid continuous heavy background simulation.
NFR7: Full-game scope must avoid large crowds, large open-world traversal, and systems that would dilute the readable daily rhythm.
NFR8: Locations must stay compact, readable, and stable in identity rather than navigation-heavy.
NFR9: Social media and phone content must remain authored and lightweight, not a heavy simulated internet.
NFR10: Relationship rewards must remain memory-first, with light or absent systemic bonuses.
NFR11: The project must preserve English as the documentation and implementation-facing authored-content language unless a localization contract is explicitly added later.
NFR12: The game must avoid heavy economy, crafting, supply chains, automation, delegation, and management-sim sprawl.
NFR13: Condition systems must create friction and consequence without introducing condition-based hard fail states.
NFR14: The architecture must preserve meaningful incompleteness as a positive design value rather than a failure condition.
NFR15: Narrative writing must favor small truths, behavioral reveals, and economical dialogue instead of exposition dumps.
NFR16: The full-game design must remain clearly separated from the Year 1 Semester 1 delivery slice to avoid product-scope drift.
NFR17: Performance expectations must fit a comfortable 2D desktop school-life sim without depending on simulation-heavy background actors.
NFR18: Reusable engine concerns must remain outside High School Story game packages so the game/engine boundary stays clean.

### Additional Requirements

- Use Kotlin Game Engine 2D through the local `engine/` composite build and keep reusable engine behavior under `pro.piechowski.kge`.
- Keep platform-independent game logic in `core/` and desktop launchers, packaging, and preview tooling in `lwjgl3/`.
- Use `highSchoolStoryModule` as the root Koin composition module for game services, assets, config loading, and engine gameplay modules.
- Treat `SandboxLauncher` as the active development entrypoint and `MainLauncher` as incomplete until the full game flow exists.
- Implement playable authored scenes as `Story.Beat<GameState>` with beat-owned gating and suspending `play()` or `spawn()` execution.
- Use `DialogueManager.startDialogue(...).await()` for dialogue sequences inside playable beats.
- Keep beat gating and action gating inside beat definitions or action definitions rather than scattering it across UI, launchers, or unrelated orchestration code.
- Preserve a discrete-time simulation model where state advances only on action completion, travel completion, lesson turn resolution, sleep, and calendar transitions.
- Treat `GameState` or an equivalent composed run-state aggregate as the canonical coordination surface for calendar, time, condition, money, academics, relationships, locations, clubs, phone data, story flags, memories, and saves.
- Implement the phone as a set of read models derived from canonical state and authored content rather than disconnected UI-only data.
- Organize simulation logic around domain services such as calendar/time, actions, travel, lessons, academics, relationships, phone, memory, and saves.
- Keep action validation and consequence application close together and prefer explicit result types for validation and resolution.
- Prefer data definitions for subjects, locations, phone entry types, and content metadata before duplicating procedural branches.
- Keep UI as a command/read-model layer that reads canonical state and requests actions instead of mutating progression directly.
- Structure narrative content as modular units such as beats, dialogue sequences, post packs, message chains, place hooks, club beats, exam scenes, year transitions, and epilogue fragments.
- Preserve source-of-truth ownership: `docs/narrative-design.md` owns narrative principles, `docs/narrative-content.md` owns implementation-ready authored prose, and code should implement accepted canon rather than inventing it silently.
- Support checkpoint classes for current save, daily sleep, about 3 days earlier, about 2 weeks earlier, about 2 months earlier, semester transition, and year transition.
- Keep preview tooling focused on validating slices such as intro, first weekday, lesson loop, travel, phone planning, relationship beats, and exam results.
- Keep existing placeholder Polish dialogue treated as implementation drift against the English documentation contract until intentionally localized.

### UX Design Requirements

No separate UX design document was included in this run.

### FR Coverage Map

### FR Coverage Map

FR1: Epic 6 - Finish High School With Your Own Memories and Future
FR2: Epic 6 - Finish High School With Your Own Memories and Future
FR3: Epic 1 - Start a New Life in Lakeview
FR4: Epic 1 - Start a New Life in Lakeview
FR5: Epic 1 - Start a New Life in Lakeview
FR6: Epic 1 - Start a New Life in Lakeview
FR7: Epic 3 - Build an Everyday Routine After School
FR8: Epic 1 - Start a New Life in Lakeview
FR9: Epic 3 - Build an Everyday Routine After School
FR10: Epic 1 - Start a New Life in Lakeview
FR11: Epic 1 - Start a New Life in Lakeview
FR12: Epic 1 - Start a New Life in Lakeview
FR13: Epic 1 - Start a New Life in Lakeview
FR14: Epic 2 - Survive School and Academic Pressure
FR15: Epic 2 - Survive School and Academic Pressure
FR16: Epic 2 - Survive School and Academic Pressure
FR17: Epic 2 - Survive School and Academic Pressure
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
FR28: Epic 6 - Finish High School With Your Own Memories and Future
FR29: Epic 1 - Start a New Life in Lakeview
FR30: Epic 1 - Start a New Life in Lakeview
FR31: Epic 1 - Start a New Life in Lakeview
FR32: Epic 4 - Get Close to People Who Matter
FR33: Epic 4 - Get Close to People Who Matter
FR34: Epic 6 - Finish High School With Your Own Memories and Future
FR35: Epic 4 - Get Close to People Who Matter
FR36: Epic 6 - Finish High School With Your Own Memories and Future
FR37: Epic 6 - Finish High School With Your Own Memories and Future
FR38: Epic 6 - Finish High School With Your Own Memories and Future
FR39: Epic 4 - Get Close to People Who Matter
FR40: Epic 4 - Get Close to People Who Matter
FR41: Epic 4 - Get Close to People Who Matter
FR42: Epic 4 - Get Close to People Who Matter
FR43: Epic 5 - Find Your Place in the Wider Lakeview World
FR44: Epic 3 - Build an Everyday Routine After School
FR45: Epic 3 - Build an Everyday Routine After School
FR46: Epic 3 - Build an Everyday Routine After School
FR47: Epic 3 - Build an Everyday Routine After School
FR48: Epic 3 - Build an Everyday Routine After School
FR49: Epic 1 - Start a New Life in Lakeview
FR50: Epic 1 - Start a New Life in Lakeview
FR51: Epic 3 - Build an Everyday Routine After School
FR52: Epic 5 - Find Your Place in the Wider Lakeview World
FR53: Epic 3 - Build an Everyday Routine After School
FR54: Epic 5 - Find Your Place in the Wider Lakeview World
FR55: Epic 5 - Find Your Place in the Wider Lakeview World
FR56: Epic 1 - Start a New Life in Lakeview
FR57: Epic 1 - Start a New Life in Lakeview
FR58: Epic 1 - Start a New Life in Lakeview
FR59: Epic 4 - Get Close to People Who Matter
FR60: Epic 5 - Find Your Place in the Wider Lakeview World
FR61: Epic 5 - Find Your Place in the Wider Lakeview World
FR62: Epic 6 - Finish High School With Your Own Memories and Future
FR63: Epic 6 - Finish High School With Your Own Memories and Future
FR64: Epic 6 - Finish High School With Your Own Memories and Future
FR65: Epic 4 - Get Close to People Who Matter

## Epic List

### Epic 1: Start a New Life in Lakeview
The player creates their student identity, arrives in Lakeview, learns the first-day flow, and gains the basic tools needed to move, plan, and understand the world.
**FRs covered:** FR3, FR4, FR5, FR6, FR8, FR10, FR11, FR12, FR13, FR29, FR30, FR31, FR49, FR50, FR56, FR57, FR58.

### Epic 2: Survive School and Academic Pressure
The player can live through the school block, make lesson-by-lesson decisions, build subject standing, read academic danger, and reach exams or semester failure through fair consequences.
**FRs covered:** FR14, FR15, FR16, FR17, FR18, FR19, FR20, FR21, FR22, FR23, FR24, FR25, FR26, FR27.

### Epic 3: Build an Everyday Routine After School
The player manages condition, money, recovery, and weekend rhythm so daily life feels like a real tradeoff between advancement and staying functional.
**FRs covered:** FR7, FR9, FR44, FR45, FR46, FR47, FR48, FR51, FR53.

### Epic 4: Get Close to People Who Matter
The player discovers classmates, learns who they are through phone and in-person interactions, develops relationships, and completes the first lightweight social arc.
**FRs covered:** FR32, FR33, FR35, FR39, FR40, FR41, FR42, FR59, FR65.

### Epic 5: Find Your Place in the Wider Lakeview World
The player expands beyond a narrow first route into clubs, more places, broader cast identity, and the intentionally incomplete social world of Lakeview.
**FRs covered:** FR43, FR52, FR54, FR55, FR60, FR61.

### Epic 6: Finish High School With Your Own Memories and Future
The player carries choices across years, forms lasting bonds, builds a memory-shaped run history, and reaches graduation with a personal outcome.
**FRs covered:** FR1, FR2, FR28, FR34, FR36, FR37, FR38, FR62, FR63, FR64.

## Epic 1: Start a New Life in Lakeview

The player creates their student identity, arrives in Lakeview, learns the first-day flow, and gains the basic tools needed to move, plan, and understand the world.

### Story 1.1: Create a Student Identity

As a player,
I want to define my student profile before starting the game,
So that my run begins with a clear personal identity and academic starting point.

**Acceptance Criteria:**

**Given** the player starts a new game
**When** character setup opens
**Then** the player can choose interest and preference toggles across defined lifestyle domains
**And** those choices are saved into the new run state.

**Given** the player is in character setup
**When** academic attributes are assigned
**Then** the player can distribute point-buy values across the starting academic stats
**And** the system prevents invalid allocations outside the allowed range or budget.

### Story 1.2: Arrive in Lakeview and Reach the Dormitory

As a player,
I want to play through the arrival sequence in Lakeview,
So that the game establishes the protagonist premise, place, and emotional tone.

**Acceptance Criteria:**

**Given** a new run has a completed student profile
**When** the intro sequence starts
**Then** the game presents the arrival in Lakeview, dormitory check-in, room orientation, and first-night setup
**And** the flow is delivered through playable beats and dialogue rather than only exposition text.

**Given** the arrival sequence is complete
**When** the player reaches the dorm room and ends the night
**Then** the game transitions cleanly into the first school morning
**And** the intro state is persisted into the run state for the next day.

### Story 1.3: Start the First School Morning With Basic Planning

As a player,
I want to begin the first playable morning with clear time and planning information,
So that I understand what day it is, where I am, and what the game expects from me.

**Acceptance Criteria:**

**Given** the intro night has ended
**When** the first playable morning begins
**Then** the player starts in the dormitory at `06:00`
**And** the UI shows current time, location, and the current day phase.

**Given** the player is in the first playable morning
**When** they open the phone
**Then** calendar and map views are available in a basic usable form
**And** they show the initial school-day plan and known destinations needed for onboarding.

### Story 1.4: Travel With Time Preview and Safe Validation

As a player,
I want to see travel consequences before I commit,
So that movement feels readable and I do not accidentally sabotage the day.

**Acceptance Criteria:**

**Given** the player selects a reachable destination during the onboarding slice
**When** the travel confirmation view opens
**Then** the game shows destination, duration, and expected arrival time
**And** the player must confirm before travel starts.

**Given** the player attempts an impossible or disallowed move or action
**When** validation runs
**Then** the action is blocked before commitment
**And** the player sees a readable explanation of why it cannot be taken.

**Given** the player attempts a risky but allowed move or action
**When** validation runs
**Then** the game shows a warning with likely consequence
**And** the player can still make an intentional decision.

### Story 1.5: Complete a First Playable Day Shell

As a player,
I want the first day to flow through recognizable school-life phases,
So that I can understand the core rhythm before deeper systems unlock.

**Acceptance Criteria:**

**Given** the first playable day has started
**When** the player progresses through the day
**Then** the game supports dormitory morning, school transition, after-school return flow, dormitory evening, and sleep
**And** each phase changes at explicit readable boundaries.

**Given** the player keeps playing the first day
**When** evening curfew and sleep thresholds are reached
**Then** dormitory return by `21:00` and automatic sleep at `22:00` are enforced
**And** the day ends without requiring systems from later epics to function.

## Epic 2: Survive School and Academic Pressure

The player can live through the school block, make lesson-by-lesson decisions, build subject standing, read academic danger, and reach exams or semester failure through fair consequences.

### Story 2.1: Enter the School Block With a Visible Academic Schedule

As a player,
I want the school portion of the day to begin with clear lesson obligations,
So that I understand when school pressure applies and what I am expected to attend.

**Acceptance Criteria:**

**Given** the player reaches the school portion of a weekday
**When** the school block begins
**Then** the game transitions into a school-specific phase with scheduled lesson obligations
**And** the current lesson or academic obligation is visible to the player.

**Given** the player checks the phone during the active semester
**When** they open the calendar or classes view
**Then** they can see the semester academic structure relevant to the current slice
**And** upcoming lessons and exam timing are surfaced in a readable way.

### Story 2.2: Play a Shared Three-Turn Lesson

As a player,
I want each lesson to give me meaningful turn-by-turn choices,
So that school feels interactive instead of automatic.

**Acceptance Criteria:**

**Given** the player enters a standard lesson
**When** the lesson begins
**Then** the lesson runs as exactly 3 turns of 15 minutes each
**And** each turn requires one player action before the lesson can advance.

**Given** the player is choosing an action during a lesson turn
**When** the action list is shown
**Then** attentive listening, talking, reading, browsing, and napping are all available as the shared lesson actions
**And** each action resolves with a distinct consequence profile.

### Story 2.3: Differentiate Subjects Through Lesson Identity

As a player,
I want different subjects to feel meaningfully different,
So that school choices are shaped by subject identity instead of one repeated template.

**Acceptance Criteria:**

**Given** the player attends at least two different subjects
**When** they take comparable lesson actions
**Then** the outcomes, tone, or feedback reflect subject-specific identity differences
**And** those differences come from subject rules rather than separate bespoke minigames.

**Given** the player repeats lessons over time
**When** subject outcomes accumulate
**Then** the game begins teaching the player each subject's learnable pattern
**And** the system remains readable without exposing hidden formulas directly.

### Story 2.4: Track Academic Standing and Grade Risk

As a player,
I want my academic performance to accumulate into readable subject standing,
So that I can tell whether I am safe, struggling, or in danger.

**Acceptance Criteria:**

**Given** lesson outcomes are resolved
**When** academic state updates
**Then** the game tracks standing per subject across the defined subject list
**And** lesson decisions contribute to those standings.

**Given** the player opens the classes view
**When** they inspect academic information
**Then** they can see current subject standing and grade risk in a player-facing format
**And** the information is clear enough to support self-directed recovery before failure.

### Story 2.5: Surface Academic Danger and Semester Failure Fairly

As a player,
I want academic collapse to feel readable and deserved,
So that failure is a consequence of neglect rather than confusion.

**Acceptance Criteria:**

**Given** the player has severely neglected academic obligations
**When** their semester standing enters critical danger
**Then** the game may trigger one explicit academic warning
**And** the warning communicates that semester failure is now a serious risk.

**Given** the player continues neglect until failure conditions are met
**When** semester failure resolves
**Then** the game ends the semester through an academic failure path
**And** the cause of failure is summarized clearly.

**Given** semester failure has occurred
**When** recovery options are presented
**Then** the player can choose from recovery saves from about 3 days, 2 weeks, and 2 months earlier
**And** no condition-only failure path is used instead of academic failure.

### Story 2.6: Resolve Semester Exams and Delayed Results

As a player,
I want semester exams to confirm how well I prepared,
So that the end of the term feels consequential and emotionally legible.

**Acceptance Criteria:**

**Given** the player reaches the semester exam period
**When** exams begin
**Then** the exam flow uses a 3-phase structure with player input
**And** prior semester preparation is the main driver of outcomes.

**Given** the player completes the exam flow
**When** results are delivered
**Then** the game reveals outcomes through a delayed in-world result presentation
**And** the result includes an emotional summary plus per-subject breakdown.

## Epic 3: Build an Everyday Routine After School

The player manages condition, money, recovery, and weekend rhythm so daily life feels like a real tradeoff between advancement and staying functional.

### Story 3.1: Show Everyday Condition and Resource State

As a player,
I want to see my current condition and money during normal play,
So that I can make informed daily decisions after school.

**Acceptance Criteria:**

**Given** the player is in a playable day state
**When** the everyday HUD or inspect view is visible
**Then** energy, stress, mood, and money are shown or directly inspectable
**And** the information is readable enough to support planning.

**Given** the player advances through ordinary daily actions
**When** actions resolve
**Then** condition and money values update consistently in the run state
**And** the updated values are reflected in the player-facing views.

### Story 3.2: Apply Condition Costs and Weak-Condition Friction

As a player,
I want my condition to influence how well I function,
So that recovery and pacing matter without making one bad day fatal.

**Acceptance Criteria:**

**Given** the player takes time-costing actions such as school, study, social, travel, or recovery
**When** those actions resolve
**Then** the game applies condition changes appropriate to the action type
**And** the effects are persisted in the run state.

**Given** the player is in a weak condition state
**When** they continue taking demanding actions
**Then** outcomes become weaker or riskier in a readable way
**And** the run does not hard-fail purely because of poor condition.

### Story 3.3: Recover Through Distinct Place-Based Options

As a player,
I want different places to help me recover in different ways,
So that choosing where to go after school has practical and emotional meaning.

**Acceptance Criteria:**

**Given** the player is free to choose a recovery-oriented action
**When** they recover in the dormitory
**Then** the game applies a dormitory-specific recovery profile
**And** that option feels distinct from other recovery locations.

**Given** the player chooses recovery in the park
**When** the recovery action resolves
**Then** the game applies a park-specific recovery profile
**And** the result differs meaningfully from dormitory recovery in tone, tradeoff, or effect.

### Story 3.4: Support Weekly Allowance and Spending Tradeoffs

As a player,
I want money to matter in everyday life,
So that comfort, convenience, and social participation involve real but manageable tradeoffs.

**Acceptance Criteria:**

**Given** a new in-game week begins
**When** the allowance trigger resolves
**Then** the player receives the baseline weekly allowance
**And** the gain is reflected in the money state.

**Given** the player chooses an action that costs money
**When** the transaction resolves
**Then** the game deducts the cost from the current balance
**And** the player cannot confirm options they cannot afford unless an explicit exception exists.

### Story 3.5: Offer Part-Time Work as an Emergency Tradeoff

As a player,
I want part-time work to exist as a fallback option,
So that low money creates pressure without turning the game into a grind loop.

**Acceptance Criteria:**

**Given** the player has access to a work opportunity in the current slice
**When** they choose part-time work
**Then** the action grants money
**And** it also costs meaningful time and or condition.

**Given** the player evaluates work against other daily options
**When** the action preview is shown
**Then** the game communicates the work tradeoff clearly
**And** the option reads as an emergency or lifestyle compromise rather than the default optimal routine.

### Story 3.6: Make Weekends Feel Structurally Different

As a player,
I want weekends to play differently from school days,
So that the calendar has a believable rhythm and recovery windows feel valuable.

**Acceptance Criteria:**

**Given** the run reaches a weekend day
**When** the day begins
**Then** the player is not forced into the normal weekday school block
**And** the available structure supports longer recovery, social, exploration, club, or catch-up planning.

**Given** the player compares a weekend to a weekday
**When** they use time after morning setup
**Then** the weekend offers a measurably different action pattern and pacing
**And** it feels like a real relief or opportunity window rather than a renamed weekday.

## Epic 4: Get Close to People Who Matter

The player discovers classmates, learns who they are through phone and in-person interactions, develops relationships, and completes the first lightweight social arc.

### Story 4.1: Meet the Initial Classmates as Distinct Social Presences

As a player,
I want to encounter the initial classmates as recognizable people,
So that I can start forming social impressions and choosing who matters to me.

**Acceptance Criteria:**

**Given** the player progresses through the vertical-slice school and after-school flow
**When** initial classmate encounters occur
**Then** each introduced classmate has a readable first impression and social role
**And** the player can distinguish them as separate potential relationship targets.

**Given** a classmate has been properly introduced
**When** the relationship layer updates
**Then** that classmate becomes a known person in the run state
**And** their relationship stage starts from an appropriate initial descriptive state.

### Story 4.2: Track Relationship Stages in a Player-Facing Way

As a player,
I want relationship progress to be visible through descriptive stages,
So that I understand closeness without reading raw affinity numbers.

**Acceptance Criteria:**

**Given** the player spends time with a known classmate
**When** relationship state changes
**Then** the game updates that classmate through the defined descriptive stage model
**And** the change can be surfaced to the player without exposing raw math.

**Given** the player reviews a known classmate profile
**When** relationship information is shown
**Then** the current descriptive relationship stage is available in a readable format
**And** it supports planning without revealing exact hidden formulas.

### Story 4.3: Discover Classmate Profiles and Preferences Through Play

As a player,
I want to learn who classmates are by interacting with them and observing them,
So that future social choices feel informed and earned.

**Acceptance Criteria:**

**Given** the player interacts with known classmates through scenes, posts, invitations, or shared places
**When** a discoverable fact or preference is learned
**Then** the game records that information in the classmate's profile state
**And** it remains persistently visible afterward.

**Given** the player has not yet discovered a preference or profile fact
**When** they inspect the relevant social layer
**Then** undiscovered information is not fully exposed
**And** the interface still makes it clear that more can be learned.

### Story 4.4: Use Social Media and Messages for Fair Social Planning

As a player,
I want phone-based social tools to help me plan contact with classmates,
So that relationships feel readable without becoming solved puzzles.

**Acceptance Criteria:**

**Given** a classmate is known and the player has a plausible reason to track them
**When** the player checks the social media layer
**Then** the game can surface authored posts, profile details, and current known location or availability hints
**And** the information stays within believable in-world boundaries.

**Given** the player receives or unlocks social prompts
**When** they open messages
**Then** invitations, simple replies, and planning hooks are available through the phone
**And** those prompts can support future social decisions without forcing a single correct choice.

### Story 4.5: Reward Social Investment With Scenes and Memory Instead of Power

As a player,
I want spending time with classmates to unlock meaningful moments,
So that relationships feel emotionally valuable rather than mechanically exploitative.

**Acceptance Criteria:**

**Given** the player advances a relationship through compatible attention and presence
**When** a meaningful social threshold is reached
**Then** the game unlocks route-specific scenes, content, or memory-making moments
**And** the reward does not depend on granting major systemic power.

**Given** the player compares relationship progress to other systems
**When** social rewards are delivered
**Then** they primarily strengthen emotional payoff, shared context, or future narrative opportunity
**And** they do not distort the game into relationship stat optimization.

### Story 4.6: Complete the First Lightweight Popular Status-Holder Arc

As a player,
I want one fully supported early social route,
So that the vertical slice proves the game's public-mask versus private-truth relationship design.

**Acceptance Criteria:**

**Given** the player invests in the popular status-holder route across the semester slice
**When** the route progresses through its major beats
**Then** the arc includes public confidence, social-media image control, family pressure, private cracks, and a smaller act of authenticity
**And** the route remains lightweight but complete enough to validate the full social design.

**Given** the player reaches the route payoff
**When** the culminating scene resolves
**Then** the emotional win comes from earned trust and a less curated moment
**And** the player functions as a safe witness or catalyst rather than a savior who fixes the character.

## Epic 5: Find Your Place in the Wider Lakeview World

The player expands beyond a narrow first route into clubs, more places, broader cast identity, and the intentionally incomplete social world of Lakeview.

### Story 5.1: Expand the Discoverable Lakeview Location Network

As a player,
I want new places to unlock as I live in Lakeview,
So that the town feels like a world I gradually come to know rather than a static menu.

**Acceptance Criteria:**

**Given** the player progresses through story, exploration, or social triggers
**When** a new destination is discovered
**Then** that place becomes available as a valid travel destination in the run state
**And** it is surfaced through the relevant map or planning layer.

**Given** the player compares early and later slice travel options
**When** additional locations are unlocked
**Then** the range of available destinations meaningfully expands
**And** each unlocked place has a stable practical identity rather than existing only as a duplicate backdrop.

### Story 5.2: Make Places Matter Through Context and Activity

As a player,
I want locations to feel different in purpose and mood,
So that going somewhere is a meaningful choice instead of only moving on a map.

**Acceptance Criteria:**

**Given** the player visits different recurring locations
**When** they inspect or use what is available there
**Then** each location exposes its own actions, social potential, and emotional tone
**And** those differences remain stable enough to support routine-building.

**Given** the player revisits a known place under different circumstances
**When** time, people, or context change
**Then** the place can gain new meaning or opportunities
**And** it still preserves its core identity.

### Story 5.3: Join Clubs as a Mid-Layer Identity Commitment

As a player,
I want clubs to shape who I am becoming,
So that my school life is defined by more than grades and one-on-one relationships.

**Acceptance Criteria:**

**Given** the player reaches club-accessible moments in the slice or broader run
**When** club opportunities are presented
**Then** the game offers club participation as a distinct identity path
**And** club choices connect to routine, social context, or future opportunities.

**Given** the player commits to a club
**When** club state updates
**Then** the run records that commitment and can use it for later events, hooks, or flavor
**And** clubs remain lighter-weight than core classmate arcs.

### Story 5.4: Introduce the Wider Core Cast as a Long-Form Social World

As a player,
I want the social world to suggest more people and paths than I can fully pursue,
So that Lakeview feels broader than one optimal route.

**Acceptance Criteria:**

**Given** the player continues meeting classmates beyond the first featured route
**When** new core-cast members are introduced
**Then** each one presents a distinct archetype, hidden depth, or route possibility
**And** the game signals that these relationships are part of a larger long-form cast.

**Given** the player looks across the known social world
**When** multiple characters, clubs, and places compete for attention
**Then** the run clearly supports multiple meaningful directions
**And** it does not imply that all core routes can be fully maximized in one playthrough.

### Story 5.5: Preserve Meaningful Incompleteness and Visible Paths Not Taken

As a player,
I want missed opportunities to remain part of my remembered school life,
So that not choosing everything feels personal rather than punitive.

**Acceptance Criteria:**

**Given** the player misses an invitation, scene, or follow-up opportunity
**When** the moment passes
**Then** the game preserves some visible trace such as a missed post, changed tone, absence marker, or memory hook
**And** the opportunity does not vanish without any narrative residue.

**Given** the player finishes a stretch of play with several competing priorities unresolved
**When** they review the world through phone, memory, or social context
**Then** the run reflects known but unfinished threads
**And** those unfinished threads read as meaningful incompleteness instead of failure-state messaging.

## Epic 6: Finish High School With Your Own Memories and Future

The player carries choices across years, forms lasting bonds, builds a memory-shaped run history, and reaches graduation with a personal outcome.

### Story 6.1: Carry the Run Across Semesters and School Years

As a player,
I want the game to preserve who I have become over time,
So that progression across semesters and years feels cumulative.

**Acceptance Criteria:**

**Given** the player completes a semester or reaches a year transition
**When** progression advances
**Then** the game carries forward academic, social, spatial, and identity consequences into the next phase
**And** the transition does not reset earned progress as if it were a new run.

**Given** the player reaches a year boundary
**When** the transition summary is shown
**Then** the game reflects what changed in school life, relationships, and place familiarity
**And** the result feels like continuation rather than a hard reboot.

### Story 6.2: Support Deep Bonds Across a Limited Social Capacity

As a player,
I want to form a few strong bonds instead of optimizing everyone,
So that the social endgame feels personal and believable.

**Acceptance Criteria:**

**Given** the player invests deeply in selected classmates over time
**When** long-form relationship state develops
**Then** the game can recognize strong friendship, best-friend, or romance outcomes
**And** those outcomes remain limited by practical social capacity.

**Given** the player compares several core relationships late in the run
**When** their states are interpreted
**Then** the game distinguishes between deep bonds, warm-but-unfinished routes, and distant known classmates
**And** it does not require total-cast completion for a satisfying run.

### Story 6.3: Build the Memory Album as a Run-Shaped Record

As a player,
I want the game to remember the people, places, and moments that defined my run,
So that the story of my school life survives beyond isolated scenes.

**Acceptance Criteria:**

**Given** the player accumulates important scenes, motifs, relationships, and place connections
**When** the memory layer updates
**Then** the game records memories as people-place-event material rather than only flat unlock flags
**And** repeated presence can strengthen recurring motifs over time.

**Given** the player also misses opportunities or leaves arcs unfinished
**When** memory interpretation runs
**Then** the system can preserve absence markers, missed invitations, or unfinished motifs where appropriate
**And** those traces can later inform summaries and endings.

### Story 6.4: Deliver Graduation Outcomes From the Whole Run

As a player,
I want graduation to reflect the life I actually lived,
So that the ending feels like my own remembered high school years.

**Acceptance Criteria:**

**Given** the player reaches the end of Year 3
**When** graduation and final outcome resolution begin
**Then** the game composes outcomes from academics, relationships, special bonds, clubs, memories, places, and future direction
**And** it does not collapse the ending into one generic global label.

**Given** the player's run includes both chosen paths and paths not taken
**When** the ending is presented
**Then** the recap acknowledges meaningful accomplishments and unfinished connections together
**And** the tone preserves beautiful incompleteness rather than completionist scoring.

### Story 6.5: Validate the Year 1 Semester 1 Vertical Slice as a Scaled-Down Promise

As a player,
I want the first playable semester to feel like a real piece of the full game,
So that I can trust the slice as a promise of the larger three-year experience.

**Acceptance Criteria:**

**Given** the player completes the Year 1 Semester 1 slice
**When** the slice concludes
**Then** the game demonstrates the intended combination of daily rhythm, academics, relationships, phone planning, memory, and consequence
**And** it clearly reads as the first phase of a larger three-year structure.

**Given** the slice is evaluated against the documented full-game promise
**When** the player or developer reviews what it delivered
**Then** the slice proves the core fantasy and major loops without pretending to be the entire final product
**And** its boundaries remain consistent with the documented full-game-first design.
