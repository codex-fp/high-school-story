---
title: 'Game Brainstorming Session'
date: '2026-06-09'
author: 'Filip'
version: '1.0'
stepsCompleted: [1, 2, 3, 4]
status: 'complete'
task_id: 'HSS-16'
source_document: '_bmad-output/planning-artifacts/gdds/gdd-high-school-story-2026-06-09/gdd.md'
---

# Game Brainstorming Session

## Session Info

- **Date:** 2026-06-09
- **Facilitator:** Game Designer Agent
- **Participant:** Filip
- **Task ID:** HSS-16
- **Primary Source:** `_bmad-output/planning-artifacts/gdds/gdd-high-school-story-2026-06-09/gdd.md`

---

_Ideas will be captured as we progress through the session._

## Brainstorming Approach

**Selected Mode:** YOLO

**Techniques Available:**
- MDA Framework Exploration
- Player Fantasy Mining
- Core Loop Brainstorming
- Genre Mashup
- Verbs Before Nouns
- Failure State Design
- Progression Curve Sculpting
- Emergence Engineering
- Accessibility Layers
- Reward Schedule Architecture
- Ludonarrative Harmony
- Environmental Storytelling
- Player Agency Moments
- Emotion Targeting
- Economy Balancing Thought Experiments
- Constraint-Based Creativity
- Game Feel Playground
- Toy Before Game

**Focus Areas:**
- Core gameplay loop
- Player fantasy
- Mechanics and system interactions
- Progression and pacing
- Failure, friction, and recovery
- Narrative and world coherence
- Aesthetic and emotional experience
- Open design questions from the current GDD

## Working Notes

### Idea: Second-Chance Student Life

**Source Technique:** Player Fantasy Mining
**Description:** The player fantasy is a return to high school with more awareness, intention, and agency than in real life. The school sets the rhythm and constraints, while the player expresses identity through how they use limited time after school for relationships, growth, discovery, and recovery.
**Potential:** Strong alignment with the current GDD and a clear emotional hook for the "one more day" loop.
**Build-on ideas:** After-school curiosity, classmate stories, strategic time planning, long-term self-improvement.

### Idea: School As Opportunity Engine

**Source Technique:** Core Loop Brainstorming
**Description:** School is primarily a cost baseline and a generator of opportunities rather than the main excitement source. It builds the world, creates contact with classmates and teachers, occasionally drains condition, and periodically injects thematic events that break routine.
**Potential:** Helps preserve the cozy school-life frame while shifting emotional gravity toward after-school choices.
**Build-on ideas:** Event cadence, teacher/classmate hooks, low-intensity lesson gameplay, school traditions and seasonal events.

### Idea: Softly Divergent Success, Hard Academic Floor

**Source Technique:** Failure State Design
**Description:** The player can pursue different semester styles, including a relationship-heavy run that only maintains minimum academic viability. However, fully neglecting school can cause semester failure and end the run, with rollback options such as loading from 3 days, 2 weeks, or 1 month earlier.
**Potential:** Creates a real academic floor without forcing top grades as the only valid playstyle. This introduces meaningful strategic tension between social payoff, recovery, and school obligations.
**Build-on ideas:** Distinct endings by semester style, exam thresholds, recovery windows after failure, how clearly the game warns about academic danger.

### Design Tension: GDD Contract Mismatch

- Current GDD says poor grades and weak condition should not create hard fail states.
- Current brainstorming direction introduces semester failure through academic collapse.
- This is a major contract decision, not a small tuning tweak.

### Idea: Fair Academic Failure With Limited Warning

**Source Technique:** Failure State Design
**Description:** Academic failure should feel like a bitter but fair consequence rather than a cruel punishment. The player has ongoing visibility into grades and can monitor risk themselves, with at most one explicit warning when the situation becomes critical.
**Potential:** Reinforces player responsibility and strategic planning while preserving readability. Keeps school meaningful without turning the game into a hand-holding survival meter.
**Build-on ideas:** Grade visibility UX, one-time critical warning, exam threshold signaling, failure summary that explains what drove the collapse.

### Idea: Relationships As Memory-Making, Not Optimization

**Source Technique:** Reward Schedule Architecture
**Description:** The main reward for investing in classmates is a more vivid and memorable semester through unique scenes, emotional payoffs, and relationship-specific content the player might never see in a more academic run. Better social or romantic endings are secondary, while systemic bonuses should remain light or absent.
**Potential:** Protects the emotional authenticity of the social layer and keeps relationships from collapsing into stat-efficient choices.
**Build-on ideas:** Missable scenes, memory-quality endings, route exclusivity, optional low-impact practical support that does not dominate planning.

### Idea: Each Classmate Carries a Missable Arc

**Source Technique:** Player Agency Moments
**Description:** Each classmate should have their own story arc, and failing to build a relationship with them can cause that entire arc to be missed. This turns social investment into access to whole narrative paths rather than small optional scenes.
**Potential:** Strong replay value and strong emotional differentiation between semester runs. Encourages multiple playthroughs to uncover the full cast.
**Build-on ideas:** Arc exclusivity, pacing per classmate, route visibility, how much of each arc is signposted versus discovered.

### Design Tension: Scope Expansion vs Current MVP

- Current GDD says one lightweight fully supported classmate arc with lighter support for the remaining classmates.
- Current brainstorming direction points toward a dedicated arc for each classmate.
- This likely changes MVP content scope, pacing, and production cost significantly.

### Clarification: Full Vision vs MVP Social Scope

- Full vision: every classmate has their own equally rich story arc.
- MVP scope: one fully developed arc, remaining classmates kept intentionally minimal as teasers of fuller routes in the complete game.
- Long-term run structure: the player should be able to develop several arcs meaningfully in one full game, but not fully maximize all of them.
- Target long-term capacity: approximately 3-5 arcs can be pushed to their best outcomes across the whole game.

### Clarification: Arc Compatibility Is Interest-Based, Not Lifestyle-Build-Based

- The earlier "build" constraint should be interpreted mainly as compatibility of interests, favorites, and personality fit between the player character and a classmate.
- This compatibility is not something the player freely reshapes during the run like a classic RPG build.
- Systemic lifestyle patterns should matter less for arc unlocking than shared tastes, aligned interests, or non-conflicting values.
- The key question for arc progress is closer to "do these characters like the same things?" than "did the player optimize the right simulation build?"

### Idea: Discoverable Profiles Drive Social Progress

**Source Technique:** Player Agency Moments
**Description:** Information about classmates starts hidden and is uncovered through interactions or indirect discovery. Once learned, it becomes explicitly visible in an in-world social media profile, where discovered interests and preferences are permanently tracked.
**Potential:** Creates a fair, diegetic relationship-progression layer that rewards curiosity without forcing blind guesswork.
**Build-on ideas:** Profile reveal pacing, which discoveries are public versus private, profile categories, discovery through direct and indirect scenes.

### Idea: Discovered Preferences Unlock Arcs Fairly

**Source Technique:** Reward Schedule Architecture
**Description:** The main value of discovering preferences is unlocking future arc progress, with a secondary effect of unlocking activity or invitation types. The system should remain fair and should not encourage major misreads of a classmate once relevant information has been discovered.
**Potential:** Supports readable social planning and keeps relationship progress tied to understanding the person rather than trial-and-error punishment.
**Build-on ideas:** Unlock gating rules, invitation prerequisites, how strongly the UI signals newly actionable opportunities.

### Idea: After-School Discovery Is Place-First

**Source Technique:** Core Loop Brainstorming
**Description:** The main source of ideas for what to do after school should be exploration of places. Calendar pressure and player-set priorities are secondary drivers, but the strongest curiosity should come from physically going somewhere and seeing what that location can offer.
**Potential:** Makes afternoons feel spatial, exploratory, and embodied rather than menu-driven.
**Build-on ideas:** Place identity, travel risk, visible points of interest, location-based encounter seeding.

### Idea: Locations Need Stable Identities

**Source Technique:** Environmental Storytelling
**Description:** Locations should primarily have stable identities rather than acting as highly dynamic generators. The player should learn what each place is generally good for, while still leaving room for occasional context-sensitive variation.
**Potential:** Supports planning and routine mastery while keeping after-school exploration readable.
**Build-on ideas:** Park as social/recovery anchor, district as connective discovery layer, shop as utility with occasional hooks.

### Idea: Compact but Real Place Exploration

**Source Technique:** Environmental Storytelling
**Description:** After-school locations should support a medium exploration layer. The player should meaningfully move through compact spaces, find people or points of interest, and experience place-based discovery without turning each location into a large navigation-heavy map.
**Potential:** Preserves spatial curiosity while keeping the loop readable and production-friendly.
**Build-on ideas:** Small hotspots, route density, visual readability, encounter pacing inside compact maps.

### Idea: Known Classmates Publicly Broadcast Their Location

**Source Technique:** Player Agency Moments
**Description:** Once a classmate is known to the player character, their current location becomes visible through the in-world social media layer. The player should be able to tell where any known character currently is, making social planning explicit and fair.
**Potential:** Strongly supports strategic planning and reduces frustration in relationship pursuit.
**Build-on ideas:** Feed cadence, live location freshness, privacy exceptions, how many characters are visible at once.

### Idea: Social Planning Is Constrained by Time and Condition

**Source Technique:** Core Loop Brainstorming
**Description:** Even though the player knows where known classmates are, they cannot freely visit everyone because the main limiting factors remain travel/activity time and the player character's condition, especially energy and related recovery pressure.
**Potential:** Preserves strategic choice while keeping the social layer transparent rather than artificially obscure.
**Build-on ideas:** Travel friction, late-day exhaustion, short versus long hangouts, how mood/stress reshape the attractiveness of social visits.

### Idea: Exams Confirm the Semester More Than They Rescue It

**Source Technique:** Progression Curve Sculpting
**Description:** Exams should primarily validate and finalize the academic trajectory established across the semester. They are not meant to act as a strong comeback mechanic that rescues a weak semester through one last high-performance scene.
**Potential:** Keeps semester-long planning meaningful and prevents the academic pillar from collapsing into late-game salvage tactics.
**Build-on ideas:** Exam weighting, pre-exam warning signals, how the final reveal summarizes semester-long effort versus exam-day condition.

### Idea: Subject Identity Should Define Lesson Vibe

**Source Technique:** MDA Framework Exploration
**Description:** The feeling and variation of lessons should be driven mainly by the subject itself rather than by individual teachers. Teachers can exist as their own NPCs or story arcs, but they should not be the dominant factor in how lessons play or feel.
**Potential:** Makes the academic pillar easier to read and helps subjects become memorable gameplay identities.
**Build-on ideas:** Subject-specific reward biases, tone per class, activity weighting by subject, teacher presence as narrative color rather than lesson-mode driver.

### Design Tension: Teacher Weighting vs Current GDD

- Current GDD describes lesson variation as roughly 50/50 subject identity and teacher behavior.
- Current brainstorming direction says subject identity should dominate lesson feel.
- Teachers should matter more as characters and optional arcs than as primary lesson differentiators.

### Idea: Player Interests Are Chosen Up Front

**Source Technique:** Player Fantasy Mining
**Description:** The player character's interests and favorites should be defined at the start of the game rather than emerging primarily through play. This makes social compatibility a meaningful part of run setup and gives the player a clear identity from day one.
**Potential:** Strengthens replayability through distinct character setups and makes relationship planning legible early.
**Build-on ideas:** Opening questionnaire, trait-pick flow, how many interests are locked in, how visible those choices remain during the run.

### Clarification: Direct Interest Selection at Start

- Player interests should be set through direct upfront choice rather than a quiz or inference flow.
- The opening should make those choices explicit, readable, and strategically meaningful.

### Idea: Detailed Start Profile With Social and Academic Axes

**Source Technique:** Player Fantasy Mining
**Description:** The player should define a fairly detailed starting profile. This includes on/off interest or preference toggles across cultural domains such as music, film, or food, plus initial knowledge/skill values that affect school results and serve as the base for further academic growth.
**Potential:** Supports strong replayability, clearer social compatibility, and early differentiation between player-character archetypes.
**Build-on ideas:** Number of interest toggles, starting-point budget, whether skills and knowledge are split or unified, how much the opening explains downstream consequences.

### Clarification: Starting Academic Attributes Use 1-10 Values

- Skills/knowledge should begin as explicit numeric attributes on a 1-10 scale.
- These values affect academic outcomes and provide the base for later development.
- Interests/preferences are separate from these attributes and use toggle-style selection rather than numeric scaling.

### Clarification: Start Uses Point-Buy and Independent Axes

- Starting academic attributes should be assigned through a point-buy budget rather than fixed archetypes.
- Interests/preferences and academic attributes should remain independent at the start rather than cross-boosting one another.

### Idea: Money Is a Regular Soft Constraint

**Source Technique:** Economy Balancing Thought Experiments
**Description:** Money should act as a regular but secondary planning constraint. The main baseline source is weekly allowance from parents, with optional top-ups through part-time work.
**Potential:** Adds another meaningful tradeoff axis without replacing time as the primary scarcity.
**Build-on ideas:** Allowance pacing, part-time work cadence, money pressure by week, how often players are meaningfully low on cash.

### Idea: Money Covers Lifestyle, Utility, and Optional Access

**Source Technique:** Economy Balancing Thought Experiments
**Description:** Spending should support a broad set of student-life needs: social activities, recovery/comfort, academic support, consumables, and travel convenience such as tickets or taxis to farther locations. Some optional activities are paid, while key school events should generally not be paywalled.
**Potential:** Keeps money relevant across the whole semester without letting it gate essential story or school progression unfairly.
**Build-on ideas:** Cafe dates, laser tag, museum visits, shop consumables, optional convenience spend, free access to core school events.

### Idea: Part-Time Work Is an Emergency Tool and Lifestyle Tradeoff

**Source Technique:** Economy Balancing Thought Experiments
**Description:** Part-time work should function mainly as an emergency or fallback money tool, while also representing a meaningful student-life tradeoff. It costs valuable time and likely condition, making it a deliberate compromise rather than a default loop.
**Potential:** Supports money tension without turning the game into a work-grind optimization problem.
**Build-on ideas:** When players feel forced into work, how punishing work feels, whether some runs intentionally lean on it more often.

### Clarification: Part-Time Work Should Stay Abstract

- Part-time work should be a simple abstract activity rather than its own content-rich subplot.
- It is a support mechanic, not a parallel lifestyle pillar.

### Idea: Semester Planning Should Use Layered Visibility

**Source Technique:** Progression Curve Sculpting
**Description:** The player should plan with layered forecasting rather than total opacity or total omniscience. Hard academic structure is visible early, while relational and situational hooks appear closer to their actual date.
**Potential:** Strongly supports strategic planning while preserving anticipation and surprise.
**Build-on ideas:** Calendar UI layers, reminder cadence, how much uncertainty remains in a known week.

### Clarification: What the Player Sees in Advance

- Academic structure should be visible from the start of the semester, including lessons and exams.
- School events should be scheduled and visible at the start of each month.
- Classmate availability should follow known personal schedules, with current location/availability exposed through social media for known characters.
- Money and costs should be tracked in a current, real-time way rather than forecast far into the future.

### Idea: Weekends Are Mostly for Social Expansion and Recovery

**Source Technique:** Progression Curve Sculpting
**Description:** Weekends should have a mixed identity, dominated by social expansion and recovery rather than catch-up. The absence of school makes weekends looser by default, but the player should still be free to plan a very full, activity-heavy weekend if desired.
**Potential:** Gives the week a meaningful rhythm change without turning weekends into passive filler.
**Build-on ideas:** Longer hangouts, stronger route scenes, recovery blocks, optional packed-weekend schedules, lighter academic catch-up role.

## Session Summary

### Most Promising Concepts

**Top Pick: Second-Chance Student Life**
The strongest clarified direction is a school-life simulation built around replaying high school with more awareness, agency, and strategic planning than in real life. School provides structure, pressure, and opportunities, but the emotional gravity of the game lives mostly in what the player does after school with limited time, energy, money, and social access.

**Runner-up: School As Opportunity Engine**
School is most compelling when treated as a baseline cost plus a generator of relational hooks, academic pressure, and occasional institutional events. This preserves routine while constantly feeding the more exciting after-school layer with new reasons to care about tomorrow.

**Honorable Mention: Relationships As Memory-Making, Not Optimization**
The social layer stands out because its primary reward is not power but a richer, more memorable semester through missable scenes, arcs, and endings. That creates replayability through lived alternatives rather than stat-maxing.

### Key Insights

- The core fantasy is now clearly defined as `Second-Chance Student Life`.
- The most exciting daily decision should usually happen after school.
- School should be a cost baseline, opportunity engine, and occasional event disruptor rather than the main excitement source.
- Academic failure can end the run, but it should feel fair, readable, and mostly self-inflicted.
- Condition should create friction through weaker outcomes and higher risk, not through hard fail states.
- Relationship progression should be driven by discovering classmates, their interests, and compatibility rather than guessing blindly.
- Social media is a major diegetic UI layer for profiles, discovered preferences, and current character locations.
- After-school play should be place-first, with compact exploration and stable location identities.
- Subject identity should dominate lesson feel more than teacher personality.
- Player identity should be configured explicitly at the start through interest toggles and point-buy academic attributes.
- Money should matter regularly, but as a secondary soft constraint rather than a core gate.
- Weekends should mainly expand social play and recovery rather than act only as catch-up time.

### Recommended Next Steps

1. Update `docs/game-design.md` and the planning GDD with the confirmed pivots that now differ from the current contract.
2. Split the decisions into `MVP-confirmed`, `full-vision`, and `still-open` buckets so scope does not drift accidentally.
3. Run a focused follow-up session on one of three detailed areas: social media/profile UX, protagonist setup/onboarding, or lesson/subject differentiation.

---

## Session Complete

**Date:** 2026-06-09
**Duration:** Brainstorming session
**Participant:** Filip

### Output

This brainstorming session generated:

- 18 developed design ideas and clarifications
- 3 dominant concept pillars
- 8 major design pivots or scope clarifications

### Document Status

Status: Complete
Steps Completed: [1, 2, 3, 4]
