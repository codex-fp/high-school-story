---
name: High School Story UX
description: Grounded school-life simulation UI system with a phone-centered hub, portrait-driven dialogue, and classroom tension loops.
status: final
sources:
  - docs/game-brief.md
  - docs/game-design.md
  - docs/game-architecture.md
  - docs/narrative-design.md
  - docs/architecture.md
  - docs/project-overview.md
updated: 2026-06-14
colors:
  surface-base: '#f4efe7'
  surface-raised: '#ebe5db'
  surface-overlay: '#dcd4c7'
  surface-deep: '#20252f'
  ink-primary: '#1e2229'
  ink-secondary: '#5e625f'
  ink-inverse: '#f8f6f1'
  accent-primary: '#bd5b42'
  accent-secondary: '#5c7896'
  accent-warning: '#c48a2f'
  accent-danger: '#b84f4f'
  accent-calm: '#668a68'
  border-soft: '#c8c0b5'
  shadow-tone: '#16181f'
typography:
  display:
    note: '[ASSUMPTION] A characterful but grounded display face should support portrait-led dialogue and screen headings. Final family pending explicit visual direction.'
  body:
    note: '[ASSUMPTION] A clean desktop-readable sans serif should carry dialogue, HUD labels, and phone content. Final family pending explicit visual direction.'
  numeric:
    note: 'Monospaced numerics for 24-hour clock, arrival times, and time-cost confirmations.'
  label:
    note: '[ASSUMPTION] Short UI labels should use a slightly denser treatment than body copy to echo 2D RPG menu clarity without becoming arcade UI.'
rounded:
  sm: 4px
  md: 8px
  lg: 12px
  xl: 18px
spacing:
  '1': 4px
  '2': 8px
  '3': 12px
  '4': 16px
  '5': 24px
  '6': 32px
  gutter: 24px
  phone-overlay-width: 33vw
components:
  hud-chip:
    background: '{colors.surface-deep}'
    text: '{colors.ink-inverse}'
    border: '{colors.border-soft}'
    radius: '{rounded.md}'
  phone-overlay:
    background: '{colors.surface-raised}'
    text: '{colors.ink-primary}'
    border: '{colors.border-soft}'
    radius: '{rounded.lg}'
  dialogue-box:
    background: '{colors.surface-deep}'
    text: '{colors.ink-inverse}'
    border: '{colors.border-soft}'
    radius: '{rounded.md}'
  portrait-frame:
    background: '{colors.surface-raised}'
    border: '{colors.border-soft}'
    radius: '{rounded.lg}'
  action-confirm:
    background: '{colors.surface-raised}'
    text: '{colors.ink-primary}'
    accent: '{colors.accent-warning}'
    radius: '{rounded.md}'
  lesson-command-menu:
    background: '{colors.surface-deep}'
    text: '{colors.ink-inverse}'
    accent: '{colors.accent-primary}'
    radius: '{rounded.md}'
  lesson-status-strip:
    background: '{colors.surface-overlay}'
    text: '{colors.ink-primary}'
    accent: '{colors.accent-secondary}'
    radius: '{rounded.sm}'
  map-node:
    discovered: '{colors.accent-secondary}'
    unknown: '{colors.ink-secondary}'
    current: '{colors.accent-primary}'
  message-thread:
    background: '{colors.surface-base}'
    unread: '{colors.accent-primary}'
    radius: '{rounded.md}'
---

# DESIGN.md — High School Story

## Brand & Style

High School Story should feel grounded, nostalgic, and deliberately personal.
The UI is not trying to sell power or speed. It is trying to make daily school
life readable, emotionally legible, and gently tense. The player should feel
that ordinary decisions matter: where to go after class, whether to open a
message now, whether there is enough time to risk one more stop before curfew.

Presentation is 2D jRPG-adjacent, but the genre contract is not "battle RPG."
The game borrows the legibility and menu confidence of classic 2D RPGs, then
turns that clarity toward a school-life simulation. Portrait sprites, dialogue
boxes, map-led travel, and layered menus should feel familiar to players who
know that tradition, but the emotional center remains reflective and social.

[ASSUMPTION] The current token set is a placeholder visual direction derived
from the durable docs' grounded, cozy-leaning, late-afternoon tone. It is
usable for mockups and structural references, but it is not yet a final art
direction commitment.

## Colors

The palette should privilege warmth, readability, and emotional restraint over
neon spectacle.

- `surface-base` / `surface-raised` / `surface-overlay` create a paper-and-dorm
  material world: warm neutral surfaces that can host phone UI, menus, and
  profile screens without becoming sterile.
- `surface-deep` is reserved for dialogue boxes, high-focus overlays, and lesson
  tension surfaces. It gives the UI a slightly more dramatic register without
  making the whole game dark.
- `ink-primary` and `ink-inverse` keep long reading comfortable. Dialogue,
  profiles, messages, and calendar content should remain text-first and easy to
  parse.
- `accent-primary` is the most load-bearing accent. It should mark focus,
  selected options, important unread states, and lesson-command emphasis. It is
  warm rather than electric.
- `accent-secondary` supports maps, information structure, and cool contrast
  against the warmer base.
- `accent-warning` and `accent-danger` are for time pressure, academic risk, and
  punitive states; use them sparingly so warnings retain meaning.
- `accent-calm` supports recovery, positive condition shifts, and reassuring
  surfaces.

Do not use a full rainbow of system colors. The game should read as authored and
cohesive, not as an app dashboard.

## Typography

Typography should do two jobs:

1. Carry a large volume of readable text UI.
2. Support portrait-led emotional scenes without becoming decorative noise.

The dialogue layer, phone surfaces, and profile screens all require clear body
copy on desktop. The 24-hour clock, arrival times, and time-cost confirmations
need stable mono numerics that do not jitter. Menu labels and lesson commands
may use a denser treatment than body dialogue, borrowing just enough 2D RPG
clarity to make repeated decisions fast.

[ASSUMPTION] Final typeface pairing is intentionally unresolved. The user has
not chosen a concrete visual direction beyond "high-quality portraits" and
"jRPG-adjacent 2D presentation."

## Layout & Spacing

The screen should operate in three main postures:

- **Overworld / free navigation** — rich HUD plus visible world.
- **Phone overlay open** — phone occupies roughly one third of the screen while
  the world remains visible behind it and time is paused.
- **Dialogue / lesson focus** — the scene keeps the world context, but UI takes
  stronger control of attention through a dialogue box, portraits, command
  menus, and lesson status strips.

The phone overlay should feel compact but complete. It must support both quick
checks and deeper screens without pretending to be a separate full-screen mode.
Spacing inside the phone should therefore favor clear vertical lists, stable
section headers, and shallow but legible drill-down patterns.

HUD spacing should keep always-on data scannable in peripheral vision. Time,
location, condition, and money should not compete visually with dialogue or
portrait acting.

## Elevation & Depth

Depth should come mostly from tonal layering and focus contrast:

- Base world view
- HUD overlay
- Phone overlay / dialogue box / lesson command surfaces
- Transient alerts and confirmations

The phone overlay and dialogue box should feel lifted above the world, but not
like separate software windows. Avoid heavy glassmorphism, glossy gradients, or
flashy effects that would break the grounded tone.

Lesson UI is the one place where depth can harden slightly. The command menu,
teacher-attention hints, and lesson status strip may push farther toward
high-contrast framing so the player can read tension quickly.

## Shapes

Shapes should stay clean and confident. Slight corner rounding is enough to keep
the interface from feeling harsh, but nothing should become bubble-like or toy
like. The game is about teenage life and memory, not soft productivity-app
coziness.

- Phone surfaces and message rows should feel device-like and structured.
- Dialogue frames and portraits should look intentional and anchored.
- Lesson command menus can tighten corners slightly to hint at tactical focus.

## Components

- **HUD chip** — compact data cell for time, location, money, and condition
  signals. Clear contrast, stable placement, minimal ornament.
- **Phone overlay** — one-third-width anchored smartphone frame that can host
  both list and detail views without feeling cramped. Opens and closes quickly.
- **Dialogue box** — strong text contrast, stable nameplate, portrait-first
  composition support.
- **Portrait frame** — high-value visual container for character emotion. The
  portrait should read almost every time a named dialogue scene happens.
- **Action confirmation** — lightweight strip or compact modal showing time cost
  first, then risk.
- **Lesson command menu** — the clearest and most tactical component in the UI
  system. This is where the game can lean hardest into jRPG-like readability.
- **Lesson status strip** — carries clock, turn state, and other immediate
  lesson context without turning into a combat HUD parody.
- **Map node** — discovered destinations must read clearly from unknown ones.
  The current position and reachable neighbor chain should be legible at a
  glance.
- **Message thread row** — must support intimate content without becoming a chat
  app clone. The game is using messaging as authored relationship delivery, not
  as infinite scrolling content.

## Do's and Don'ts

- Do keep the phone visually central to the game's identity.
- Do let portraits and text carry social emotion rather than abstract stat UI.
- Do make fairness-critical signals readable quickly.
- Do allow lesson UI to feel more tactical than the rest of the game.
- Don't turn social systems into visible spreadsheet math.
- Don't make the phone a separate full-screen mode by default.
- Don't over-stylize every screen equally; lesson tension and dialogue focus
  should have stronger presentation than routine browsing.
- Don't treat warning colors as decoration.
