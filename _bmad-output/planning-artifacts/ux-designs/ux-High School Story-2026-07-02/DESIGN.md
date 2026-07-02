---
name: "High School Story"
title: "High School Story - DESIGN.md"
description: "Visual identity and UI token spine for a cozy 2D pixel-art high school life sim."
project: "High School Story"
status: architecture_ready
created: 2026-07-02
updated: 2026-07-02
sources:
  - _bmad-output/brainstorming-session-2026-06-24T14-13-17.md
  - _bmad-output/planning-artifacts/gdds/gdd-High School Story-2026-06-25/gdd.md
  - _bmad-output/planning-artifacts/ndds/ndd-High School Story-2026-06-30/narrative-design.md
colors:
  ink: "#241f1b"
  ink-soft: "#4d4037"
  paper: "#f4ead7"
  paper-warm: "#ead6b8"
  panel-dark: "#191715"
  panel-dark-alt: "#24211d"
  border-dark: "#3a3028"
  border-light: "#8c765f"
  autumn-gold: "#dca33c"
  autumn-orange: "#bd6237"
  school-blue: "#2f6585"
  school-green: "#607d45"
  social-purple: "#76529b"
  notice-red: "#c94d4d"
  energy: "#f0c85a"
  stress: "#a884c9"
  mood: "#9fc46f"
  focus: "#ffd65a"
  link-blue: "#6aa9d8"
  success: "#7db66b"
  warning: "#e1a849"
  danger: "#d6655f"
typography:
  body:
    fontFamily: "Pixel-readable UI font, system fallback"
    fontSize: "16px"
    fontWeight: "500"
    lineHeight: "1.35"
    letterSpacing: "0"
  label:
    fontFamily: "Pixel-readable UI font, system fallback"
    fontSize: "14px"
    fontWeight: "600"
    lineHeight: "1.2"
    letterSpacing: "0"
  heading:
    fontFamily: "Pixel-readable UI font, system fallback"
    fontSize: "24px"
    fontWeight: "700"
    lineHeight: "1.15"
    letterSpacing: "0"
  numeric:
    fontFamily: "Monospaced pixel numeric font, system monospace fallback"
    fontSize: "20px"
    fontWeight: "700"
    lineHeight: "1.1"
    letterSpacing: "0"
  phone-body:
    fontFamily: "Clean pixel UI font, system fallback"
    fontSize: "15px"
    fontWeight: "500"
    lineHeight: "1.3"
    letterSpacing: "0"
rounded:
  sm: "4px"
  md: "6px"
  lg: "8px"
  full: "9999px"
  DEFAULT: "6px"
spacing:
  "1": "4px"
  "2": "8px"
  "3": "12px"
  "4": "16px"
  "5": "24px"
  "6": "32px"
  hud-margin: "24px"
  phone-gutter: "16px"
  safe-area: "32px"
components:
  hud-panel:
    background: "{colors.panel-dark}"
    border: "2px pixel border using {colors.border-light}"
    text: "{colors.paper}"
    radius: "{rounded.lg}"
  phone-surface:
    background: "{colors.paper}"
    border: "dark phone bezel plus subtle inner pixel highlight"
    text: "{colors.ink}"
    radius: "{rounded.lg}"
  phone-top-bar:
    background: "#000000"
    text: "{colors.paper}"
    energyIcon: "{colors.energy}"
  focus-ring:
    color: "{colors.focus}"
    width: "2px"
    treatment: "pixel outline plus small pointer/chevron where space allows"
  notification-badge:
    background: "{colors.notice-red}"
    text: "#ffffff"
    radius: "{rounded.full}"
  world-prompt:
    background: "{colors.paper}"
    border: "2px dark pixel border"
    glyph: "{colors.link-blue}"
  lesson-panel:
    background: "{colors.panel-dark}"
    border: "2px warm pixel border"
    text: "{colors.paper}"
    focus: "{colors.focus}"
---

# High School Story - Design Spine

> Architecture-ready visual contract distilled from accepted UX decisions and raster mockup directions. Mockups remain references; this file owns visual identity, tokens, component style, and hard visual rules.

## Brand & Style

`High School Story` should look like a polished 2D pixel-art school-life sim: cozy, nostalgic, slightly pressured, and grounded in everyday places. The UI should feel like a warm layer over school life rather than a strategy dashboard. It can be charming and expressive, but the player must always read time, wellbeing, money, phone state, lesson pressure, and choices quickly on a Steam Deck.

The dominant visual language is warm autumn school realism: cream paper, dark ink, wood, lockers, chalkboard greens, school blues, social purple accents, and small red notification badges. The UI is not minimalist glass, not sci-fi, not fantasy RPG combat chrome, and not a sterile productivity app.

Approved reference directions:

- `.working/exploration-hud-raster-mockup-v1.png`
- `.working/phone-social-raster-mockup-v1.png`
- `.working/phone-calendar-raster-mockup-v1.png`
- `.working/phone-map-raster-mockup-v1.png`
- `.working/lesson-flow-raster-mockup-v2.png`
- `.working/activity-choice-time-cost-raster-mockup-v2.png`
- `.working/dialogue-choice-consequence-raster-mockup-v1.png`
- `.working/dialogue-choice-consequence-raster-mockup-v2-topdown-portraits.png`

## Colors

| Role | Token | Hex | Use |
| --- | --- | --- | --- |
| Ink | `ink` | `#241f1b` | Primary text on phone/paper surfaces. |
| Soft Ink | `ink-soft` | `#4d4037` | Secondary text, timestamps, detail copy. |
| Paper | `paper` | `#f4ead7` | Phone app backgrounds, prompts, light cards. |
| Warm Paper | `paper-warm` | `#ead6b8` | Secondary cards, inactive phone panels. |
| Dark Panel | `panel-dark` | `#191715` | HUD panels, lesson panels, high-pressure overlays. |
| Dark Panel Alt | `panel-dark-alt` | `#24211d` | Alternate rows, selected panel backgrounds. |
| Dark Border | `border-dark` | `#3a3028` | Pixel outlines, dividers, phone card borders. |
| Light Border | `border-light` | `#8c765f` | Warm rim highlights on HUD panels. |
| Autumn Gold | `autumn-gold` | `#dca33c` | Time pressure accents, highlighted lesson clock wedges. |
| Autumn Orange | `autumn-orange` | `#bd6237` | Seasonal accents, warning warmth, world signage. |
| School Blue | `school-blue` | `#2f6585` | School surfaces, map/water/campus accents, interaction glyphs when blue fits. |
| School Green | `school-green` | `#607d45` | Campus/noticeboard/world accents, calm school identity. |
| Social Purple | `social-purple` | `#76529b` | Social app identity, relationship/profile accents, message shortcut. |
| Notice Red | `notice-red` | `#c94d4d` | Notification badges and urgent marks only. |
| Energy | `energy` | `#f0c85a` | Energy status, phone battery-energy metaphor. |
| Stress | `stress` | `#a884c9` | Stress status and related icons. |
| Mood | `mood` | `#9fc46f` | Mood status and recovery-positive feedback. |
| Focus | `focus` | `#ffd65a` | Controller focus ring and active selection. |
| Link Blue | `link-blue` | `#6aa9d8` | Map links, interact glyphs, informational affordances. |
| Success | `success` | `#7db66b` | Positive academic/social/wellbeing feedback. |
| Warning | `warning` | `#e1a849` | Tight timing, medium risk, upcoming commitment pressure. |
| Danger | `danger` | `#d6655f` | High risk, strict teacher warning, failed/blocked states. |

Resource and state colors must be reinforced with labels, icons, meter shape, or position. Do not rely on hue alone.

## Typography

Use a pixel-readable UI type system: enough pixel character to match the game, but not so decorative that Polish/English text, lesson choices, profile facts, or Steam Deck UI become hard to read.

- `heading` is for app titles, lesson titles, teacher names, and major screen headings.
- `body` is for HUD labels, dialogue-adjacent UI, activity descriptions, and lesson consequences.
- `label` is for tabs, buttons, risk tags, notification badges, and compact metadata.
- `numeric` is for time, money, grade/progress numbers, travel minutes, lesson clock values, and countdowns. Numerics should not jitter as values change.
- `phone-body` may be slightly cleaner than HUD text because phone screens carry denser content.

Letter spacing stays `0`. Do not scale type directly with viewport width; use surface-specific layouts and shorter labels instead.

## Layout & Spacing

Use an 8px-feeling pixel grid with 4px half-steps for tight phone details. HUD elements sit inside `{spacing.safe-area}` where possible and must leave the world readable.

HUD layout follows the accepted `EXPERIENCE.md` hierarchy:

- Time/day remains visible.
- Wellbeing sits lower-left.
- Money is plain text near the phone button.
- Phone access sits lower-right.
- Toasts use upper-right.
- Interaction prompts attach near the relevant world object/NPC.

Phone UI uses dense but readable app composition: `{spacing.phone-gutter}` gutters, bottom navigation where useful, and card stacks for feed/profile content. Phone screens may be busier than HUD, but the focus state must remain obvious.

Lesson UI can be denser and more game-like than exploration HUD because the scene is a focused mode. Keep the classroom visible behind the UI; do not bury the teacher and board under panels.

## Elevation & Depth

Depth is pixel-art layering, not soft modern shadows. Use:

- dark or warm pixel outlines,
- subtle inner highlights,
- light/dark panel contrast,
- short cast shadows only when they help separate UI from a busy scene,
- a darker scrim behind full phone overlays when the world remains visible.

Avoid stacked modal shadows and glassmorphism. Phone overlay, lesson panels, prompts, and toasts should feel like distinct layers with crisp edges.

## Shapes

Use small radii: `{rounded.sm}` to `{rounded.lg}`. Cards and panels should generally stay at 8px or below. The rounded language is soft enough for cozy school life, but still crisp enough to belong in pixel art.

Use `{rounded.full}` only for notification badges, tiny status dots, and circular icon counters. Avoid pill overload; when a fact chip is used in Phone Social, keep it compact and text-readable.

## Components

- **HUD panel** - Dark warm panel using `{components.hud-panel.background}`, `{components.hud-panel.border}`, and `{colors.paper}` text. Used for time, wellbeing, toasts when over world scenes, and compact lesson information.
- **Phone surface** - Cream paper app canvas inside a dark phone bezel. Uses `{components.phone-surface.background}` with `{colors.ink}` text. It should feel like a smartphone app adapted to pixel art, not a literal iOS clone.
- **Phone top bar** - Black system bar with date left, current time centered, and energy/battery icon right. It is phone-system chrome, not app chrome.
- **App back button** - Upper-left app-level arrow. It belongs inside the app screen, not the phone top bar.
- **Bottom nav** - Used for Phone Social and similarly tabbed phone apps. Active tab uses stronger contrast and/or `{colors.social-purple}` when in Social. Notification badges use `{components.notification-badge}`.
- **Notification badge** - Red circular badge with white count. Use only for unread/actionable information; never as decoration.
- **World interaction prompt** - Light paper prompt attached near NPC/object/door/bus stop/map edge. Contains adaptive input glyph plus short verb and target name.
- **Toast** - Compact upper-right notification with icon, short title, and one-line detail. Use darker HUD treatment over world scenes and app-native treatment inside phone if needed.
- **Wellbeing status** - Three persistent statuses: Energy, Stress, Mood. Each uses icon + label + value/state, reinforced by `{colors.energy}`, `{colors.stress}`, and `{colors.mood}`.
- **Money text** - Plain text near phone access, no chip/panel background in exploration HUD.
- **Lesson panel** - Dark panel with warm border and cream text. The lesson action list uses a strong `{colors.focus}` controller focus ring.
- **Lesson clock** - Circular clock/dial with three 15-minute blocks. Active block uses `{colors.autumn-gold}`; remaining/completed states must be distinguishable without color alone.
- **Risk tag** - Compact qualitative tag: Safe, Low Risk, Risky, Very Risky. Uses text plus color; high risk may use `{colors.danger}` but must not be color-only.
- **Relationship/fact chip** - Small bordered phone chip for discovered facts and preferences. Do not imply hidden progress meters.

## Do's and Don'ts

- Do keep UI grounded in cozy school materials: paper, ink, chalkboard, lockers, wood, autumn light.
- Do keep controller focus obvious on every interactive surface.
- Do make phone screens denser than HUD, but still readable at Steam Deck size.
- Do use icons plus labels for resources, risks, badges, and prompts.
- Do keep mockup-derived visuals subordinate to this file and `EXPERIENCE.md`.
- Don't turn Calendar into a productivity-app planner visual with selectable empty slots.
- Don't make Map look like a remote quest/activity launcher.
- Don't use combat UI language for Lesson Flow: no HP bars, enemy frames, attack buttons, or boss-like teacher treatment.
- Don't use large purple/blue gradients or one-note color themes.
- Don't rely on tiny icon-only cues for important social clues, wellbeing changes, risks, or time pressure.
- Don't stack cards inside cards; use clear panels, rows, and sections instead.
