# High School Story - Development Epics

Status: final_v1.0  
Created: 2026-06-25  
Updated: 2026-06-27

This document expands the Development Epics summarized in `gdd.md`. Epics are design-facing and implementation-neutral. Architecture and story breakdown can refine them later.

---

## Epic Sequence

| ID | Epic | Delivers | MVP |
| --- | --- | --- | --- |
| E1 | Time, Calendar, and Travel | The player can live 20-week school-semester days, spend 15-minute blocks, travel, respect school/dorm anchors, and feel calendar pressure. | Must |
| E2 | Wellbeing and Activity Resolution | Energy, Stress, and Mood shape activity availability, outcomes, recovery, and daily planning. | Must |
| E3 | Lessons, Homework, and Academics | Lessons are active 3-block systems; subjects, grades, homework, tests, and exam period create academic pressure. | Must |
| E4 | Relationships, Classmates, and Story Beats | The player can meet classmates, build Bond through repeatable interactions, unlock story beats, and experience one partial arc. | Must |
| E5 | Smartphone Apps and Planning UI | Phone apps provide Calendar, Messages, Social Media, School App/Journal, Map, and Settings. | Must |
| E6 | Locations, Clubs, and Events | Campus/off-campus locations, Science Club, Literary Club, and MVP events create school-life texture and choices. | Must |
| E7 | Character Creation and Identity | The player creates a student with attributes, preferences, sprite customization, and identity-shaping starting conditions. | Must |
| E8 | Presentation, Dialogue, Art, and Audio | The MVP has readable pixel-art navigation, expressive NPC portraits, two dialogue modes, and hybrid audio direction. | Must |
| E9 | Save, Progression, and MVP Completion | Saves, checkpoints, semester resolution, success criteria, and MVP completion boundaries are coherent and testable. | Must |
| E10 | Full-Game Reflection and Epilogue | Three-year completion, graduation, life-path interpretation, relationship aftermath, and expanded epilogues. | Later |

---

## E1 - Time, Calendar, and Travel

### Purpose

Create the daily, weekly, and 20-week semester rhythm that makes time the player's main currency.

### In Scope

- 15-minute time-block structure.
- 06:00 weekday alarm, snooze, abstract 15-minute morning routine.
- School-day structure with mandatory attendance and no voluntary lateness.
- Dorm return and dorm-only wind-down rules.
- Friday/Saturday later curfew and sleep.
- Weekend wake plans.
- Campus zone: school, dorm, shared outdoor area.
- Nearby off-campus travel between cafe, park, and convenience store.
- Calendar events and fixed/condition-triggered event timing model.

### MVP Acceptance Shape

- A 20-week MVP semester can be played from start to semester resolution.
- Weekday and weekend rules behave differently and are understandable.
- Travel feasibility blocks impossible actions before school, curfew, or mandatory commitments.
- A typical in-game day can remain around 30 minutes.
- A normal school day creates at least 2 meaningful time tradeoffs.

### Dependencies

- E2 Wellbeing and Activity Resolution.
- E5 Smartphone Apps and Planning UI.
- E6 Locations, Clubs, and Events.

---

## E2 - Wellbeing and Activity Resolution

### Purpose

Make Energy, Stress, and Mood shape planning and outcomes without creating a separate wellbeing game over.

### In Scope

- Energy as underlying 0-100 hard-gating resource.
- Stress as underlying 0-100 soft pressure modifier.
- Mood as qualitative state derived from hidden emotional pressures/tags.
- Soft Mood effects on activity tone, relationship gain, cost, reward, or drain.
- Sleep, snooze, rest, relaxation, lunch, and favorite-aligned recovery.
- Activity resolution rules for Energy cost, Stress change, Mood pressure, and outcome quality.

### MVP Acceptance Shape

- Energy can block or weaken demanding activities while leaving recovery options available.
- Stress affects study, lessons, tests, costs, and negative Mood pressures.
- Mood is visible as qualitative state rather than a third bar.
- Players can explain how Energy, Stress, and Mood affect planning.
- Wellbeing never causes an independent game over.

### Dependencies

- E1 Time, Calendar, and Travel.
- E3 Lessons, Homework, and Academics.
- E4 Relationships, Classmates, and Story Beats.

---

## E3 - Lessons, Homework, and Academics

### Purpose

Make school a central play space by turning lessons and academics into active, repeated, high-pressure choices.

### In Scope

- Lessons as 45-minute segments with 3 fifteen-minute action blocks.
- Normal 15-minute breaks and fixed 12:00-12:45 lunch break.
- Lesson categories and contextual variants.
- Teacher/lesson strictness plus qualitative action risk.
- Caught consequences and lightly visible teacher impression.
- Semi-predictable teacher questions/checks.
- 4 MVP subjects.
- Subject knowledge and subject grade as separate systems.
- Homework as occasional 0-100% progress tasks with deadlines.
- 6-8 homework tasks across the MVP semester.
- 1 smaller test per subject in weeks 7-15.
- Week 20 exam period.
- Passing threshold: E passes, F fails.

### MVP Acceptance Shape

- The player can play full school days with multiple active lessons.
- Lessons feel connected to the school-life fantasy, not detached minigames.
- Subject grades, homework, tests, and exam readiness are visible through School App/Journal.
- End-of-semester results reflect knowledge, readiness, Energy, Stress, Mood, and subject grades.
- Academic failure rules are understandable.

### Dependencies

- E1 Time, Calendar, and Travel.
- E2 Wellbeing and Activity Resolution.
- E5 Smartphone Apps and Planning UI.

---

## E4 - Relationships, Classmates, and Story Beats

### Purpose

Deliver the fantasy that relationships grow through interaction, compatibility, repeatable effort, and authored story milestones.

### In Scope

- 5 MVP classmates: Charlotte "Lottie" Fairchild, Oliver "Ollie" Grant, Eleanor "Nell" Graves, Amelia Price, and Leo Ward.
- Underlying 0-100 Bond with 5 visible relationship tiers.
- Tiers: Stranger, Acquaintance, Friend, Close Friend, Best Friend / Romantic Partner.
- No separate Trust/Openness meter.
- Story flags from authored choices.
- Repeatable interactions: talk, text, hangout, lunch together, gift, study together, club/activity together, check in, invite to event.
- Flirt as contextual/authored tone option, not a generic repeatable romance action.
- Classmate preferences for interaction types.
- Compatibility and protagonist favorites/preferences as soft modifiers.
- Story beat unlocks through Bond/tier plus contextual conditions.
- Core classmate story beats are not hard-gated by club membership; clubs add variants, context, and outcomes.
- MVP relationship scope: Eleanor "Nell" Graves has a 3-beat partial arc; Charlotte, Oliver, Amelia, and Leo each have 1 early/introduction beat.
- Selective romanceability, authored NPC orientations, no upfront romance badge, exclusive romance by default, no generic breakup system.

### MVP Acceptance Shape

- The player can meet the 5 MVP classmates and track relationship tiers.
- Repeatable interactions build Bond between story beats.
- Eleanor "Nell" Graves demonstrates a partial arc with 3 beats.
- The partial arc remains playable even if the player does not join that classmate's associated club.
- Charlotte, Oliver, Amelia, and Leo demonstrate early/introduction relationship content.
- Non-romantic or incompatible close relationships can still progress toward meaningful Best Friend content.
- MVP may show romantic potential or chemistry but does not need to reach full Romantic Partner status.
- Social Media current-location support helps find known Acquaintance-or-higher NPCs.
- Players intentionally choose 1-2 classmates they want to know better.

### Dependencies

- E2 Wellbeing and Activity Resolution.
- E5 Smartphone Apps and Planning UI.
- E6 Locations, Clubs, and Events.
- E7 Character Creation and Identity.

---

## E5 - Smartphone Apps and Planning UI

### Purpose

Make the smartphone the diegetic hub for planning, school information, social navigation, and game settings.

### In Scope

- Phone UI always accessible.
- Restricted contexts such as lessons/exams expose only Settings unless using contextual phone actions.
- Calendar for known schedules, meetings, clubs, deadlines, exams, school/town events.
- Messages with free generic texting, cooldowns, and authored story threads.
- Social Media combining feed and profiles.
- Social Media current-location signals for known Acquaintance-or-higher NPCs.
- School App / Journal as academic dashboard.
- Map for locations, travel feasibility, and objects/services, not NPC presence.
- Settings rendered as phone app.

### MVP Acceptance Shape

- The player can use all 6 core apps: Calendar, Messages, Social Media, School App/Journal, Map, Settings.
- Phone shows protagonist-known information, not full world truth.
- Calendar and Social Media have clearly distinct roles.
- Map supports travel planning without acting as social radar.
- Settings remain reachable even in restricted contexts.

### Dependencies

- E1 Time, Calendar, and Travel.
- E3 Lessons, Homework, and Academics.
- E4 Relationships, Classmates, and Story Beats.

---

## E6 - Locations, Clubs, and Events

### Purpose

Give the daily loop meaningful places, club routines, and calendar anchors beyond classroom play.

### In Scope

- 10 MVP locations/spaces:
  - Dorm.
  - Outdoor/courtyard.
  - Hallway/common area.
  - Classrooms.
  - Cafeteria.
  - Library/study room.
  - Club rooms.
  - Cafe.
  - Park.
  - Convenience store.
- Cafe, park, and convenience store as nearby off-campus locations with 15-minute travel.
- Light personal-budget economy: weekly allowance, optional purchases, and short town odd jobs as one-off activities.
- Science Club and Literary Club.
- One 60-minute regular meeting per club per week.
- 90-minute club special events/milestones.
- Clubs use attendance + events only, no separate club rank/progress system.
- Club special events can support guest/non-member access when required for core classmate arcs.
- MVP events:
  - Class Integration Day as the school-wide event.
  - Harvest Evening as the town event.
  - Science Showcase Sprint as the Science Club special event.
  - Zine Deadline Crisis as the Literary Club special event.
  - 1 exam period.

### MVP Acceptance Shape

- Each MVP location has a clear gameplay role.
- The player can visit off-campus locations and understand travel costs.
- Allowance and optional odd jobs support consumables, gifts, hangout extras, and light town/NPC flavor without becoming a full economy.
- Science Club and Literary Club create different identity/social vibes.
- Club attendance supports relationships and authored events.
- Club membership provides variants and stronger context, not hard access to core classmate arcs.
- Class Integration Day creates early social pressure, group choices, and relationship discovery.
- Harvest Evening creates autumn town-life contrast, small purchases/gifts, Mood/memory moments, and limited-time social choices.
- Science Showcase Sprint creates project pressure, academic identity expression, club relationships, and a contained 90-minute special event.
- Zine Deadline Crisis creates writing/publishing pressure, authorship/consent choices, relationship trust, and a contained 90-minute special event.
- Fixed calendar events can be missed; story/progression milestones trigger at first viable opportunity.

### Dependencies

- E1 Time, Calendar, and Travel.
- E4 Relationships, Classmates, and Story Beats.
- E5 Smartphone Apps and Planning UI.

---

## E7 - Character Creation and Identity

### Purpose

Let the player define the protagonist's starting shape while preserving the central promise that richer identity emerges through play.

### In Scope

- Character name and gender.
- Attribute point buy:
  - Logic.
  - Creativity.
  - Charisma.
  - Discipline.
  - Physicality.
  - Empathy.
- Attribute scale 1-5, baseline 2, 6 additional points, optional lowering to 1 for extra points, max 5.
- Attributes do not increase during play.
- Starting attributes as broad predispositions, not direct subject stats.
- Favorites/preferences:
  - Social Preference.
  - Free Time Preference.
  - Music Preference.
  - Media Preference.
  - Food Preference.
- Preferences as soft hooks, fixed for MVP.
- Player pixel-art sprite customization: hair, outfit, eye color, skin color.

### MVP Acceptance Shape

- The player can create a distinct protagonist with readable strengths, weaknesses, and preferences.
- Starting attributes meaningfully affect early academic/social tendencies without locking long-term outcomes.
- Preferences support relationship flavor, Mood, hangouts, gifts, and dialogue without hard-locking content.
- Player visual customization affects sprite only, with no high-resolution player portraits.

### Dependencies

- E2 Wellbeing and Activity Resolution.
- E3 Lessons, Homework, and Academics.
- E4 Relationships, Classmates, and Story Beats.
- E8 Presentation, Dialogue, Art, and Audio.

---

## E8 - Presentation, Dialogue, Art, and Audio

### Purpose

Make the MVP readable, emotionally expressive, nostalgic, and production-feasible.

### In Scope

- Top-down RPG-like pixel-art maps and sprites.
- High-resolution, slightly comic-style NPC portraits.
- 5 core classmate visual sets.
- 6 baseline portrait expressions per MVP core classmate.
- 1-2 extra expressions for the partial arc character if needed.
- No high-resolution player portrait set.
- Two dialogue modes:
  - Large portrait/dialogue mode with darkened map background.
  - Small speech-bubble-like sprite dialogue.
- Hybrid audio direction:
  - Lo-fi/cozy/ambient routine music.
  - Stronger themes for relationships, events, exams, dramatic moments.
- Optional relationship motif for the MVP partial arc character.
- UI readability for phone, calendar, schedules, resources, activity confirmation, and dialogue.

### MVP Acceptance Shape

- Players can distinguish locations and core classmates visually.
- Important relationship scenes feel more expressive than routine chatter.
- Dialogue mode matches scene weight.
- Music and ambience support routine, study, social, pressure, and reflective moods.
- UI is readable at 1080p and Steam Deck 720p if Deck support is pursued.

### Dependencies

- E5 Smartphone Apps and Planning UI.
- E7 Character Creation and Identity.

---

## E9 - Save, Progression, and MVP Completion

### Purpose

Make the MVP playable end-to-end with coherent saving, semester resolution, testing boundaries, and success criteria.

### In Scope

- Autosave at start of day.
- Autosave at end of day / sleep.
- Manual save in safe contexts only.
- No manual save during exams, lessons, action resolution, or unstable states.
- Large checkpoint recovery for end-of-year failure in full game model:
  - 1 week before.
  - 4 weeks before.
  - Semester start.
- MVP semester completion with exam period and results.
- MVP technical and gameplay success metrics.
- Explicit MVP out-of-scope boundaries.

### MVP Acceptance Shape

- A complete MVP semester can be played without blocker bugs.
- Save/load behavior is understandable and avoids unstable states.
- Semester resolution communicates academic and relationship consequences.
- MVP success metrics can be tested in playtests.
- Out-of-scope boundaries are clear for production planning.

### Dependencies

- E1 Time, Calendar, and Travel.
- E3 Lessons, Homework, and Academics.
- E4 Relationships, Classmates, and Story Beats.

---

## E10 - Full-Game Reflection and Epilogue

### Purpose

Support the full game's three-year completion, graduation, academic verdict, relationship aftermath, and life-path interpretation.

### Later-Game Scope

- Three-year completion.
- End-of-year promotion gates across school years.
- Graduation.
- Academic verdict.
- Relationship epilogues.
- Best Friend / Romantic Partner final-path aftermath.
- Memory and missed-opportunity reflection.
- Life-path identity interpretation.
- Expanded epilogue variants.

### MVP Acceptance Shape

- Not required for MVP implementation.
- MVP should track enough categories to prove future epilogue feasibility.
- No full ending, graduation, or life-path summary is built for MVP.

### Dependencies

- E3 Lessons, Homework, and Academics.
- E4 Relationships, Classmates, and Story Beats.
- E6 Locations, Clubs, and Events.
- E9 Save, Progression, and MVP Completion.
