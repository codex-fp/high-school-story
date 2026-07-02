# Raster Mockup Prompt Template

Use this template for polished raster mockups that should look like real in-game screenshots for `High School Story`.

## Reusable Template

Create a polished raster mockup that looks like an actual 2D pixel-art game screenshot for a cozy nostalgic high school life sim called "High School Story".

Scene: {scene_description}. The screen should be a {aspect_ratio} game screenshot composition, not a UI diagram.

HUD / UI requirements based on the approved UX wireframe:

- {ui_requirement_1}
- {ui_requirement_2}
- {ui_requirement_3}
- {ui_requirement_4}
- {ui_requirement_5}

Do not include:

- {negative_requirement_1}
- {negative_requirement_2}
- {negative_requirement_3}

Visual style: detailed 2D pixel art with crisp readable UI overlays, cozy school-life sim, gentle autumn palette, polished indie game presentation, readable but not dashboard-like. UI should be clean and plausible as in-game UI, not a wireframe. Text should be legible and fit inside its UI elements. Avoid photorealism, avoid 3D, avoid anime splash art, avoid heavy fantasy/combat HUD.

Text accuracy note: if exact text matters, keep text short and high-contrast. For names and labels, prefer fewer words and repeat critical strings explicitly in the prompt.

## Source Prompt: Exploration HUD v1

Create a polished raster mockup that looks like an actual 2D pixel-art game screenshot for a cozy nostalgic high school life sim called "High School Story". Scene: top-down pixel-art school hallway in a fictional European high school, warm autumn indoor lighting, lockers on the left, classroom doors, a notice board, subtle floor tiles, a player character named Mira near an NPC named Nell. The screen should be 16:9 game screenshot composition, not a UI diagram.

HUD requirements based on an approved UX wireframe:

- Top-left: compact time/day cluster: "15:20" large, "Mon - Week 3" below.
- Top-right: transient toast notification, not permanent HUD. Example toast: red badge icon + "New social clue" + "Nell posted near the library." Make it subtle and game-like.
- Lower-left: always-visible wellbeing cluster with three readable statuses: Energy 68, Stress 42, Mood Calm. Make it soft, cozy, non-combat, readable for controller/Steam Deck, like small rounded UI chips/panel.
- Lower-right: phone access button: small phone icon, "Y Phone" and tiny "Tab" keyboard hint. Include a small red notification badge on the phone icon. To the left of the phone button, plain text only: "Money: 24" with no background.
- Interaction prompt anchored in the world near Nell, not bottom-screen: a small rounded prompt with a blue A-button glyph and text "Talk" / "Nell Graves". It should feel attached to the NPC/object.
- No quest tracker, no minimap, no pause menu prompt, no full activity list.

Visual style: detailed 2D pixel art with crisp readable UI overlays, cozy school-life sim, gentle autumn palette, polished indie game presentation, readable but not dashboard-like. UI should be clean and plausible as an in-game HUD, not a wireframe. Text should be legible and fit inside its UI elements. Avoid photorealism, avoid 3D, avoid anime splash art, avoid heavy fantasy/combat HUD.
