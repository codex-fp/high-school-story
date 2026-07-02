---
title: "High School Story - EXPERIENCE.md"
project: "High School Story"
status: architecture_ready
created: 2026-07-02
updated: 2026-07-02
sources:
  - _bmad-output/brainstorming-session-2026-06-24T14-13-17.md
  - _bmad-output/planning-artifacts/gdds/gdd-High School Story-2026-06-25/gdd.md
  - _bmad-output/planning-artifacts/ndds/ndd-High School Story-2026-06-30/narrative-design.md
scope: "MVP-first, full-game-aware"
form_factor: "PC / Steam, keyboard + mouse plus controller, Steam Deck-conscious"
visual_identity: "DESIGN.md"
---

# High School Story - Experience Spine

> Architecture-ready UX v0 assembled from coached discovery decisions. Mockups are composition references only; this spine wins on conflict.

## Foundation

`High School Story` is MVP-first and full-game-aware. The MVP targets PC / Steam first, with controller-first UX, keyboard as a controller substitute, mouse as auxiliary input, and Steam Deck-conscious readability. The game is built around a cozy but pressured school-life loop: calendar obligations, travel, world presence, lesson decisions, social discovery, wellbeing, and reflection.

Visual identity reference: `DESIGN.md`. This file owns behavior, IA, states, input, and player journeys. Raster mockups in `.working/` are visual references, not implementation contracts.

Key reference mockups:

- `.working/exploration-hud-raster-mockup-v1.png`
- `.working/phone-social-raster-mockup-v1.png`
- `.working/phone-calendar-raster-mockup-v1.png`
- `.working/phone-map-raster-mockup-v1.png`
- `.working/lesson-flow-raster-mockup-v2.png`
- `.working/activity-choice-time-cost-raster-mockup-v2.png`
- `.working/dialogue-choice-consequence-raster-mockup-v1.png`
- `.working/dialogue-choice-consequence-raster-mockup-v2-topdown-portraits.png`

## Information Architecture

The phone is the major information and system hub, while the world remains the place where the player finds and performs activities. The player does not remotely execute daily life from menus.

```mermaid
flowchart TD
  "Top-down Exploration" --> "World Interaction Prompt"
  "World Interaction Prompt" --> "Activity Choice + Time Cost"
  "Activity Choice + Time Cost" --> "Activity Result Feedback"
  "Activity Result Feedback" --> "Exploration / Next Decision"

  "Phone Home Screen / App Grid" --> "Phone Calendar"
  "Phone Home Screen / App Grid" --> "Phone Map"
  "Phone Home Screen / App Grid" --> "Phone Social"
  "Phone Home Screen / App Grid" --> "Phone Messages"
  "Phone Home Screen / App Grid" --> "Phone School App / Journal"
  "Phone Home Screen / App Grid" --> "Phone Settings / Save"

  "Phone Calendar" --> "Known Commitments and Events"
  "Phone Map" --> "Known Destinations + Travel Feasibility"
  "Phone Social" --> "Feed + Profiles + Known Facts"
  "Phone Social" --> "Message Shortcut"
  "Message Shortcut" --> "Phone Messages"

  "Known Destinations + Travel Feasibility" --> "Travel"
  "Travel" --> "Top-down Exploration"

  "Lesson Schedule" --> "Lesson Flow"
  "Lesson Flow" --> "Block Action"
  "Block Action" --> "Block Feedback + Possible Teacher Check"
  "Block Feedback + Possible Teacher Check" --> "Lesson Result"

  "Semester End" --> "Semester Reflection / Memory Ledger"
```

### Surface Groups

**Shell / System**

- Title / Main Menu.
- Character Creation.
- Phone Settings / Controls / Accessibility.
- Phone Manual Save / Load.
- Phone-as-menu behavior: during normal exploration and safe contexts, opening the phone is the primary system/menu entry because settings, controls, accessibility, manual save/load, messages, calendar, map, and school information live there.
- No separate persistent Pause Menu surface in MVP. If a hard pause is technically required, it should be an implementation state around the phone/system overlay, not a player-facing parallel menu.

**Core Daily Loop**

- Dorm Morning: Wake / Snooze / Start Day.
- Top-down Exploration.
- Exploration HUD.
- World Interaction Travel: doors, bus stops, map edges, exits.
- Activity Choice + Time Cost Confirmation.
- Activity Result Feedback.
- Sleep / End-of-Day Summary.

**Smartphone Hub**

- Phone Home Screen / App Grid, using familiar mobile app-grid conventions.
- Phone Calendar: known commitments, lessons, lunch, clubs, exams, events, deadlines, and timed clues. It is not a formal slot-planning tool.
- Phone Messages: standalone app for message threads and authored/private communication.
- Phone Social: Feed, Classmate Profiles, Relationship / Known Facts / Preferences, and contextual message shortcuts.
- Phone School App / Journal: subject grade progress and exam results.
- Phone Map: symbolic pixel-art town/campus map, known destinations, route feasibility, optional fast-travel-style travel.
- Phone Notifications.

**School Gameplay**

- Lesson Flow: brief, circular lesson clock, action choice, teacher attention/checks, block feedback, result.
- School-restricted Activity Choice: break and lunch variants of normal world activity choice.
- Homework / Study Surface.
- Exam Execution: school-calendar/lesson-adjacent flow that resolves quickly instead of using 3x15 lesson blocks.
- Exam Results Access: school notice board and/or Phone School App.

**Calendar / Location Narrative Flows**

- Prologue / Arrival Flow.
- Class Integration Day Flow.
- Harvest Evening Flow.
- Club Meeting Flow.
- Club Special Event Flow: Science Showcase Sprint / Zine Deadline Crisis.
- Event Summary / Memory Flags.

**Dialogue / Narrative Presentation**

- Large Portrait Dialogue for authored/important scenes.
- Small Bubble Dialogue for short barks and low-weight exchanges.
- Choice / Consequence Dialogue State. Tone is inferred from concrete option text, not from abstract labels such as "tactful" or "pushy".

**Wellbeing / Feedback / Reflection**

- Wellbeing HUD.
- Wellbeing Detail Panel.
- Mood State Presentation.
- Relationship Change Feedback.
- Academic Progress Feedback.
- Event / Missed Opportunity Feedback.
- Toast / Notification Feedback.
- Semester Reflection / Memory Ledger.

## Smartphone Hub

The smartphone is a significant UX hub, but not a substitute for being physically present in the world. It collects known information, supports planning, and exposes system functions.

### Phone System Chrome

- Phone system top bar is phone-level UI, not app UI.
- Top bar pattern: black bar, date on the left, current time centered, Energy represented as a battery-style icon on the right.
- App-level Back / Home belongs inside each app's chrome, usually as an upper-left arrow.

### Phone Social

Phone Social is more Instagram-like than school-bulletin-like, while still supporting school, town, and club posts. It contains public or protagonist-known information, not full world truth.

- Bottom navigation uses Social sections such as Feed / Profiles / Clubs.
- No Messages tab inside Social.
- Use red circular notification badges with white unread counts on relevant tabs/buttons.
- Classmate Profiles show discovered facts, known preferences, public/social clues, and descriptive relationship status.
- Relationship progress is descriptive rather than numeric.
- Profiles can expose a contextual `Message` shortcut that opens the standalone Messages app to that person's thread.
- Profiles do not expose a direct "next objective" command by default. Posts and clues can route to Calendar or Map when actionable.

### Phone Calendar

Phone Calendar is a reference view for known commitments and automatically added events. It is not a formal planner where the player selects free slots or assigns activities.

- Calendar may lean toward a 15-minute block grid / day timeline.
- Shows lessons, lunch, club meetings, exams, events, deadlines, and known timed clues.
- Empty time may be visible, but must not look selectable as a planning slot.
- Event/detail cards can open Map when the event has a known location.

### Phone Map

Phone Map is a symbolic pixel-art town/campus map, not a pure list of destinations.

- Shows known locations: school/campus, dorm, library, cafe, park, convenience store, town square, and other discovered places.
- Shows travel time to selected destination.
- Shows usable time remaining at the destination before travel back to dorm or another hard commitment is required.
- Travel from Phone Map is always available for known locations.
- Does not show exact live NPC positions or hidden schedules.

## Exploration HUD

Exploration is top-down pixel-art world navigation. The HUD should support orientation without turning the screen into a dashboard.

- Time/day is always visible.
- Wellbeing is always visible with all three statuses: Energy, Stress, Mood.
- Wellbeing cluster belongs in the lower-left corner.
- Money is always visible, placed as plain text to the left of the phone access button.
- Phone access sits in the lower-right corner and is the primary menu/system entry.
- No persistent pause/menu HUD affordance.
- Next class / next commitment appears only as a contextual pressure alert.
- Interaction prompts are anchored near the relevant NPC, object, door, bus stop, or map-edge affordance in the world.
- Upper-right can host transient toast notifications.

## Calendar, Map, Travel, And Activities

The player checks Calendar to understand known obligations, uses Map to understand destinations and travel feasibility, then returns to world presence.

Journey rule:

1. Phone Calendar reveals known obligations and timed events.
2. Phone Map evaluates known destination travel.
3. The player travels.
4. The player explores the destination.
5. Activity occasions appear through NPCs, objects, or situations in the world.
6. Activity Choice opens only after interacting with the relevant object/NPC/occasion.

Activity choices are never selected remotely from Calendar or Map.

Travel can be invoked in two ways:

- From Phone Map for known destinations / fast-travel-style travel.
- Through world interactions such as bus stops, map edges, doors, and exits.

## Lesson Flow

Lessons are active gameplay, not passive calendar skips. The GDD-confirmed target feel is lightly similar to JRPG turn combat: the pressure sources are teacher attention and remaining lesson time. The player is not literally fighting the teacher.

Lesson presentation should not use the normal top-down exploration camera. Preferred composition: a seated third-person classroom view where the protagonist is visible from behind, facing the teacher and board.

### Lesson Structure

- Each lesson is 45 minutes.
- Each lesson has three 15-minute blocks.
- Time blocks are visualized as a clock face / circular lesson time dial.
- The player chooses one lesson action per block.
- After each block, the game provides short feedback and may trigger a teacher check / teacher attention reaction.
- After the third block, the lesson resolves with Lesson Result.

### Teacher Panel

Teacher pressure appears in a teacher panel containing:

- teacher name,
- Attention status,
- Strictness status,
- optional contextual descriptor such as question-heavy or tolerant today.

This should feel tied to a specific teacher, not an abstract enemy bar.

### Lesson Actions

Use stable top-level categories with contextual variant labels/tooltips. Do not show every possible variant at once.

- Focus / Listen Actively.
- Take Notes / Light Participation.
- Study Another Subject.
- Use Phone / Text.
- Quiet Recovery / Zone Out.
- Chat / Pass Note.
- Risky Distraction.

Risk is qualitative: Safe, Low Risk, Risky, Very Risky. Exact probabilities are hidden by default.

Teacher questions/checks are semi-predictable pressure events, not separate minigames. Attentive actions improve check outcomes; distracted or risky actions worsen them.

## Input Schemes

Input is controller-first.

- Controller is primary.
- Keyboard substitutes for controller navigation.
- Mouse is auxiliary, useful for PC convenience but not the design baseline.
- Focus navigation must be designed from the beginning for Steam Deck and controller use.
- Button glyphs should adapt by input device.

Baseline actions:

- Confirm / Interact.
- Back / Cancel when relevant.
- Open Phone.
- Navigate focus with D-pad / stick / keyboard.
- Open contextual details / secondary action when a focused UI element exposes one.
- Switch tabs / panels where the current surface has sibling sections.
- Final physical bindings are configurable in Phone Settings / Controls. The UX contract is the action set, focus behavior, glyph adaptation, and controller-first navigability.

### Focus Navigation

- Every phone app, lesson surface, dialogue choice, activity choice, and confirmation overlay must be fully operable without a mouse.
- The currently focused element must be unambiguous at Steam Deck size.
- Focus order follows the player's reading path, then the primary decision path.
- Back should move one layer up in the active surface before closing the phone or canceling a major flow.
- Mouse hover may mirror focus, but mouse-only affordances are not allowed for core actions.

## State Patterns

- Time-cost confirmation is a state/overlay, not a top-level surface.
- Result feedback is a state/overlay.
- Notifications/toasts are transient.
- Dialogue large/small are variants of one dialogue system.
- Wellbeing detail can be opened from HUD/phone, but top-line wellbeing remains visible during exploration.
- Exam pressure is a contextual state around calendar/school surfaces.
- Partial event attendance is handled by event flow state, not a separate screen.
- Semester Reflection / Memory Ledger is an end-of-term flow, not a standalone phone app by default.

## Mock Coverage

Mockups are visual references, not UI contracts. `EXPERIENCE.md` and `DESIGN.md` win on conflicts.

### Mocked Reference Surfaces

| Surface | Coverage | Reference |
| --- | --- | --- |
| Exploration HUD | mocked | `.working/exploration-hud-raster-mockup-v1.png` |
| Activity Choice + Time Cost Confirmation | mocked | `.working/activity-choice-time-cost-raster-mockup-v2.png`, `.working/activity-choice-time-cost-spec-v0.md` |
| Phone Social: Feed / Profile / Known Facts | mocked | `.working/phone-social-raster-mockup-v1.png` |
| Phone Calendar | mocked | `.working/phone-calendar-raster-mockup-v1.png` |
| Phone Map | mocked | `.working/phone-map-raster-mockup-v1.png` |
| Lesson Flow | mocked | `.working/lesson-flow-raster-mockup-v2.png` |
| Dialogue Choice / Consequence State | mocked | `.working/dialogue-choice-consequence-raster-mockup-v1.png`, `.working/dialogue-choice-consequence-raster-mockup-v2-topdown-portraits.png`, `.working/dialogue-choice-consequence-spec-v0.md` |

### Spine-Only Surfaces

These are intentionally specified through the UX/design spines unless a later design decision needs a visual reference.

| Surface | Why spine-only is acceptable now |
| --- | --- |
| Title / Main Menu | Low behavioral uncertainty; can inherit visual identity from `DESIGN.md`. |
| Character Creation | Requires content/system decisions beyond current UX pass. |
| Phone Home Screen / App Grid | Familiar mobile app-grid convention; low layout risk. |
| Phone Messages | Behavioral relationship to Social is decided; visual style can inherit phone patterns. |
| Phone School App / Journal | Needs grade/progress content model before a useful mockup. |
| Phone Settings / Controls / Accessibility | Standard system surface; focus/remapping rules are more important than early art. |
| Phone Manual Save / Load | Standard phone/system surface. |
| Phone Notifications | Toast pattern plus phone list pattern should cover MVP. |
| Dorm Morning / Wake / Snooze / Start Day | Flow needs timing/wellbeing rules more than a separate visual direction. |
| World Interaction Travel | Covered by Exploration HUD prompt pattern and Phone Map travel behavior. |
| Activity Result Feedback | Can inherit overlay/toast/result-state patterns; later mock if result density grows. |
| Sleep / End-of-Day Summary | Important candidate for later mockup because it summarizes the day and teaches priorities. |
| Homework / Study Surface | Can inherit Activity Choice and School App patterns until study loop deepens. |
| Exam Execution | Lesson-adjacent quick resolution; mock only if exams become mechanically distinct. |
| Exam Results Access | Covered by School App / notice board behavior for now. |
| Prologue / Arrival Flow | Scripted narrative onboarding using existing exploration/dialogue/event patterns. |
| Class Integration / Harvest / Club Event Flows | Calendar/location-driven event flows using existing surfaces. |
| Dialogue Large / Small | Large Portrait Dialogue has a mockup; Small Bubble Dialogue can inherit dialogue system rules until bark/ambient conversation density is known. |
| Wellbeing Detail / Mood Presentation | Covered by HUD wellbeing pattern for MVP; detail panel can inherit phone/panel style. |
| Relationship / Academic / Missed Opportunity Feedback | Covered by Social, School App, toast, and result-state patterns until content density is known. |
| Semester Reflection / Memory Ledger | Important candidate for later mockup because it is a distinctive end-of-term emotional flow. |

Deferred visual references are tracked in `UX-TODO.md` and do not block architecture:

1. Sleep / End-of-Day Summary.
2. Semester Reflection / Memory Ledger.
3. Phone School App / Journal.

## Accessibility Floor

- Controller and keyboard focus navigation must be readable and predictable.
- Text must be Steam Deck-conscious and legible at handheld distance.
- Notification badges must not rely on color alone.
- Phone UI and lesson UI require clear focus states.
- Settings / Controls / Accessibility are available through the phone.
- Time pressure must be communicated with text/iconography and not only by animation, color, or audio.
- Lesson risk must be described qualitatively in readable labels such as Safe, Low Risk, Risky, and Very Risky.
- Phone Social clues and profile facts must not rely on tiny icon-only distinctions.
- Dialogue choice text must fit its container without truncating important tone cues.
- Toasts and notification feedback must be reviewable through Phone Notifications when they carry actionable information.
- The game should support remapping for core actions and display the active input glyph set.
- Audio-visual feedback should have intensity options if screen shake, flashing, strong UI motion, or haptics are used.

## Key Flows

### Mira, First School Morning

Mira is a new dorm student entering the school-day loop.

1. Mira wakes in the dorm.
2. She chooses start day or snooze, with time cost clear.
3. She checks Phone Calendar for known commitments.
4. She exits the dorm through a world interaction.
5. She explores campus and reaches school.
6. Exploration HUD shows time, wellbeing, money, phone access, and current context.
7. At the classroom, she sees an in-world prompt.
8. Lesson Flow begins with a brief.
9. The circular lesson clock shows three 15-minute blocks.
10. Mira chooses one lesson activity for each block.
11. Each block resolves with feedback and possible teacher check.
12. Lesson Result summarizes academic, wellbeing, and teacher-pressure effects.
13. During break, Mira finds an activity occasion in the school and interacts.

Climax: Mira understands school is not background scenery. Time, attention, wellbeing, lessons, and relationships are already competing.

### Alex, Afternoon Under Time Pressure

Alex wants to decide whether the afternoon can support study, social contact, or recovery.

1. Alex checks Phone Calendar for known obligations and current day structure.
2. Current time and dorm return pressure are visible via HUD / phone top bar.
3. Alex opens Phone Map.
4. Map shows known destinations and travel feasibility.
5. Alex chooses a destination.
6. Alex travels.
7. After arriving, Alex explores the location.
8. Alex finds activity occasions through objects, NPCs, or local situations.
9. Activity Choice appears only after world interaction.
10. Alex chooses between social / study / recovery / errand / event opportunity.
11. Activity resolves with result feedback.

Climax: The decision is not a remote menu pick. It is a chain: time awareness -> destination -> travel -> presence -> occasion -> consequence.

### Mira Notices Nell

Mira follows a social clue toward a Nell-related relationship beat.

1. Mira opens Phone Social: Feed.
2. A post or clue suggests a library / zine / Nell context.
3. Mira opens Nell's Classmate Profile.
4. Profile shows descriptive relationship status and discovered known facts.
5. A clue can route to Calendar or Map if actionable.
6. Mira travels to the relevant location.
7. She explores and finds a Nell-related activity occasion.
8. Interaction launches dialogue.
9. Dialogue options use concrete text; tone is inferred from wording.
10. The scene records relationship/story flags.
11. Relationship feedback appears.
12. Phone Social updates known facts/preferences if the player learned something.

Climax: The phone provides the clue, but the relationship moves because Mira shows up, notices context, and responds with care.

## Inspiration & Anti-patterns

- Inspired by school-life scheduling and relationship pressure, but not by remote task-board optimization.
- Lesson UX may borrow the rhythm of turn combat, but must avoid combat vocabulary and enemy framing.
- Phone Social may borrow from Instagram-like feed behavior, but must avoid full NPC radar and hidden-truth exposure.
- Calendar must avoid becoming Google Calendar planning.
- Map must avoid becoming a remote activity launcher.
