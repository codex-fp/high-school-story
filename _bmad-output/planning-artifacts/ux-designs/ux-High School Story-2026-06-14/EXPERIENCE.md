---
title: EXPERIENCE.md — High School Story
status: final
sources:
  - docs/game-brief.md
  - docs/game-design.md
  - docs/game-architecture.md
  - docs/narrative-design.md
  - docs/architecture.md
  - docs/project-overview.md
updated: 2026-06-14
---

# EXPERIENCE.md — High School Story

## Foundation

High School Story is a desktop-first 2D school-life simulation built on tilemap
navigation, dialogue, authored content, and menu-heavy planning. `DESIGN.md` is
the visual identity reference; this spine defines how the interface behaves.

The default interaction posture is:

- world visible,
- a relatively rich always-on HUD,
- a phone overlay opened and closed frequently,
- dialogue as a portrait-led foreground mode,
- lessons as the only strongly combat-like subsystem.

The phone is the primary hub. It is simultaneously a utilitarian planner and a
private emotional surface. It should feel as normal to open as a pause menu, but
it remains diegetic to the protagonist.

Current platform contract: desktop JVM, keyboard and mouse first. Controller and
handheld support are not yet accepted as durable product requirements.

## Information Architecture

### Runtime Surface Map

| Surface | Reached from | Purpose |
|---|---|---|
| Overworld HUD | Default exploration state | Time, place, condition, money, contextual risk |
| Phone home / app shell | Open phone | Hub for planning and private information |
| Calendar | Phone | Lessons, exams, events, accepted plans |
| Map | Phone | Travel planning, discovered locations, arrival-time decisions |
| Social / profiles | Phone | Known classmates, discovered preferences, availability, profile reads |
| Messages | Phone | Invitations, replies, relationship hooks, late personal moments |
| Classes | Phone | Subject standing, grade risk, academic feedback |
| Memory album | Phone | Memory photos and recap surfaces |
| Dialogue scene | Talk trigger / cutscene / beat | Character exchange with portrait-driven presentation |
| Lesson scene | School block lesson start | Three-turn classroom tension loop |
| Time-cost confirmation | Any time-costing action | Lightweight confirmation with time first |

### Phone Navigation Rules

- The phone opens as an overlay occupying about one third of the screen.
- The world stays visible behind it.
- Time and meaningful simulation progression pause while the phone is open.
- The phone may go deeper than one screen:
  - calendar view
  - map view
  - conversation list and conversation detail
  - profile detail
  - memory-album list and fullscreen photo view
- The phone is not a separate full-screen app mode by default.
- Opening and closing the phone should be cheap enough that players use it
  constantly.

### HUD Hierarchy

Always-on:

- 24-hour time
- current location
- energy
- stress
- mood
- money

Contextual:

- lateness or curfew risk
- upcoming lesson or event urgency
- important new message or invitation
- academic risk signal
- travel arrival or completion state

Never always-on:

- detailed relationship state
- full grades
- profile detail
- map detail
- calendar detail
- memory album
- detailed action-effect breakdowns

## Voice and Tone

Microcopy should be short, natural, and human-readable. The game should not
sound like a productivity app, combat log, or sim dashboard.

### Core Language Rules

| Do | Don't |
|---|---|
| `Often helps with studying.` | `Grade chance +12%` |
| `This usually raises stress.` | `stress++` |
| `You would arrive at 18:30.` | `travel ETA applied` |
| `Kuba seems to respond well to this.` after the fact through content surfaces | `Relationship +2` |
| Plain confirmations with time first | Heavy modal warning prose |

The tone split is intentional:

- planning-critical systems may be more concrete,
- emotional and social systems stay softer and more interpretive.

Dialogue choices themselves receive no pre-hint labels. The player chooses based
on the line and context, not on a forecast tag.

## Component Patterns

| Component | Use | Behavioral rules |
|---|---|---|
| Phone overlay | Main hub | Opens fast, closes fast, pauses time, preserves visible world behind it. |
| Phone app row / icon | Phone navigation | Clear one-action entry into each planning or personal surface. |
| Time-cost confirmation | Before any time-costing action | Show time cost first; show travel duration / arrival time / top risk second. Lightweight, fast to dismiss or accept. |
| Dialogue choice | Conversations | Full or near-full line; no pre-hint tags; selected option should read cleanly before commit. |
| Dialogue portrait | Conversations | Present almost always during dialogue with named characters; small emotion-set changes only on meaningful tone shift. |
| HUD condition meter | Overworld | Energy and stress rely on icon-and-scale treatment rather than raw numbers; mood reads as quality/state rather than a hidden formula. |
| Context alert | Overworld | Only appears when something requires immediate planning attention. Avoid permanent nagging. |
| Map destination node | Travel | Distinguish discovered, current, unknown, and reachable-neighbor states. |
| Message thread row | Phone messages | Supports both mundane planning and intimate emotional follow-up. |
| Lesson command menu | Lessons | Stable command families every turn: safe, risky, reactive, items. Fast to parse. |
| Teacher-attention hint | Lessons | Semi-readable only. Scene acting + light UI support, no full meter. |

## State Patterns

| State | Surface | Treatment |
|---|---|---|
| Unknown system knowledge | Phone, lessons, actions | Show the action or surface name first; specific effect language appears through use and discovery. |
| Partially learned | Actions / systems | Show softer hints such as likely effect or tendency, still not raw formula. |
| Fairness-critical learned | Grades / time / condition / travel | Progress faster toward explicit readable state. |
| Socially learned | Relationships / invitations | Stay interpretive longer; expose aftermath through behavior and phone surfaces. |
| Phone open | Global runtime | World visible, time frozen, no meaningful state progress. |
| Time-risk action | Confirmation | Show duration and resulting time explicitly before commit. |
| Unknown location | Map | Hidden or obscured until discovery. |
| Lesson pressure high | Lessons | Attention, turn risk, or penalty state should become easier to read without switching to arcade meters. |
| Dialogue aftermath | Post-scene | No direct HUD reward. Show trace later through behavior, messages, profiles, or availability. |

## Interaction Primitives

- Move through tilemap spaces.
- Talk to characters and trigger dialogue scenes.
- Open and close the phone overlay at will outside blocked moments.
- Select time-costing actions and confirm them quickly.
- Plan travel from the map.
- Read and navigate phone apps with a mix of shallow and deeper screens.
- Choose one lesson action per turn in lessons.

Dialogue commit and action commit are different primitives:

- dialogue commit should feel socially meaningful and largely irreversible in
  the moment,
- action commit should feel operational and quickly confirmable.

## HUD & Diegetic UI

The HUD is mostly non-diegetic. It exists to keep time pressure and daily state
readable. The phone is the primary diegetic information surface.

### Diegetic Split

- **Phone** — diegetic, protagonist-owned surface
- **HUD** — non-diegetic planning layer
- **Dialogue UI** — mixed authored presentation layer
- **Lesson UI** — non-diegetic tactical framing over a classroom situation

### Visibility Rules

- The phone should never make the player fear losing time merely for checking
  information.
- The HUD should prevent repeated mandatory phone opens for basic state.
- Relationship detail stays mostly inside the social and message surfaces.
- Memory-album material should feel reflective and special, not part of the
  constant screen economy.

## Input Schemes

Desktop keyboard and mouse are the active contract.

- Mouse should support direct focus in phone surfaces, messages, profiles, and
  map travel.
- Keyboard support should keep menus, dialogue advancement, and lesson-command
  selection efficient.
- Exact binding layout is still open, but runtime primitives must support:
  - opening the phone quickly,
  - confirming time-costing actions quickly,
  - advancing dialogue cleanly,
  - choosing one lesson action per turn,
  - reading map arrival times before travel.

The UI should preserve the possibility of future controller support by keeping
focus order and menu structure coherent, but controller-first glyph systems are
not part of the current contract.

## Game Feel & Juice

The game's default feel is grounded and lightly tense, not flashy by default.
The strongest feedback spikes should come from:

- opening or closing the phone,
- receiving an important message,
- arriving somewhere meaningful,
- dialogue emotional turns,
- lesson risk / reward beats.

Lesson UI may be snappier and more tactical than the rest of the game, but the
game should not adopt combat juice globally.

Good feedback examples:

- subtle phone slide-in / slide-out
- quiet message vibration or visual pulse
- clear time-change acknowledgement after commit
- lesson-turn emphasis when teacher attention matters
- portrait emotion swaps when a scene pivots

Bad feedback examples:

- constant screen shake
- arcade combo feeling outside lessons
- large stat popups after social choices
- bombastic victory framing after lessons

## Accessibility Floor

- 24-hour time is always legible and consistently placed.
- Time-cost confirmations must use plain readable language and explicit times.
- Condition signals must not rely on color alone; icons and scale states carry
  meaning.
- Dialogue and phone text must stay readable in long sessions on desktop.
- Portrait-driven scenes must remain comprehensible without assuming audio or
  voice acting.
- Reduced-motion support should dampen overlay transitions and lesson emphasis
  without hiding information.
- Information hierarchy must remain readable even when the phone is opened and
  closed repeatedly.

## Inspiration & Anti-patterns

- **Lifted from Persona 5:** confidence of menu presentation, portrait-led scene
  energy, school-calendar legibility.
- **Not taken from Persona 5:** the overall game is not a combat RPG and should
  not become one outside lesson framing.
- **Lifted from 2D jRPG tradition:** tilemap navigation, authored dialogue
  scenes, menu confidence, portrait presence.
- **Rejected:** spreadsheet-first social UI, direct relationship stat meters,
  full-screen phone mode as the default interaction, and pre-hinted dialogue
  moral labels.

## Open Questions and Conflicts

- The lesson UX direction is stronger and more tactical than the current durable
  lesson description in `docs/game-design.md` and `docs/game-architecture.md`.
  This spine records the proposed UX direction but it should not be treated as a
  silent replacement for those owner docs.
- Visual identity still needs explicit final decisions for palette and
  typography. `DESIGN.md` contains assumptions, not final art-direction truth.
- The exact set of public, discoverable, and private profile categories remains
  open in the durable docs and will affect profile IA depth.

## Key Flows

### Year 1 morning planning before school

Maja wakes in the dormitory on a weekday morning. She is still learning Lakeview
and its rhythms.

1. The overworld HUD already shows the essentials: current time, current
   location, energy, stress, mood, and money.
2. She opens the phone. The world remains visible behind the overlay, but time
   stops.
3. She checks the calendar for today's school obligations, then taps into
   messages to see whether anything changed overnight.
4. She moves to the classes app to confirm whether any subject is in visible
   academic danger.
5. She closes the phone and commits to the next action with a lightweight time
   confirmation.
6. **Climax:** she returns to the world with a concrete plan, not because the UI
   solved the day for her, but because it exposed enough of the tradeoffs to let
   her choose.

Failure path: if she is already on the edge of lateness or curfew in later
contexts, the confirmation layer must make that risk explicit before commit.

### After-school social chase across the map

Olek has school behind him and wants to decide whether to pursue a classmate
meeting, recover, or explore one more location.

1. He opens the phone after class and checks the map.
2. The map shows discovered destinations, obscured unknowns, and reachable paths
   for stepwise movement.
3. He selects a destination from the map and sees both travel duration and
   arrival time before commitment.
4. A lightweight confirmation shows the time cost and resulting arrival time.
5. He commits, then physically moves through the travel chain if discovering by
   foot, or resolves the selected trip directly when appropriate.
6. **Climax:** the arrival itself feels like a decision paid for in time, not a
   teleport. The map has acted as both planner and discovery surface.

Failure path: if the arrival would create a school, curfew, or sleep violation,
the confirmation layer must warn before commit rather than after punishment.

### Conversation choice and delayed relational aftermath

Anka talks to Kuba in the evening after a slightly awkward school day.

1. Dialogue opens in a classic 2D RPG structure with portrait, nameplate, and
   text box.
2. Her choices are shown as full or near-full lines. There are no tone or
   outcome hint tags.
3. She chooses the line based on context alone.
4. Kuba's immediate reaction gives the first readable signal.
5. The scene ends without a relationship popup or HUD reward.
6. Later, in the phone, Anka sees the real trace: a new message tone, a changed
   availability state, or a profile detail that only makes sense because of what
   happened in the scene.
7. **Climax:** the relationship becomes legible through authored aftermath
   rather than overt stat feedback.

Failure path: a missed or badly landed line should still leave an interpretable
trace later, not disappear without explanation.

### Three-turn lesson under teacher attention

Bartek enters a standard lesson block. The scene is still a classroom, but the
decision loop sharpens.

1. The lesson opens with a visible classroom scene, lesson clock, teacher view,
   and command menu.
2. The command menu offers stable action families: safe, risky, reactive, and
   items.
3. Teacher attention is readable only semi-openly through staging and light UI
   support.
4. Bartek takes a risky action at the wrong moment and gets caught. He loses the
   turn's value, takes stress or mood damage, and harms academic standing.
5. On the next turn he adapts, choosing a safer or reactive option while teacher
   attention remains high.
6. On the final turn he uses a good moment under attention well and gains
   academic value while stabilizing the lesson.
7. **Climax:** when the lesson ends, there is no victory screen. The outcomes
   simply flow back into grades, stress, mood, and the rest of the day.

Failure path: getting caught should hurt meaningfully in the current lesson, but
should not create a separate social-punishment layer unless durable docs later
accept that escalation.
