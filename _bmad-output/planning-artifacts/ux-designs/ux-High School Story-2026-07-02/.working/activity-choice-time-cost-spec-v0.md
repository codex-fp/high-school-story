# Activity Choice + Time Cost Confirmation - Mockup Spec v0

Status: accepted for raster mockup generation.

## Purpose

This screen appears after the player has already traveled to a location, explored it, and interacted with a relevant NPC/object/activity occasion. It is not launched remotely from Calendar or Map.

The screen helps the player answer:

- What can I do here right now?
- How much time will it cost?
- Can it fit before my next hard commitment or dorm return?
- What are the likely wellbeing, money, academic, social, or clue consequences?
- Which option am I committing to?

## Example Mockup Scenario

Location: cozy pixel-art cafe after school.

Trigger: Alex/Mira interacts with the barista counter or barista NPC.

Activity occasion title: `Cafe Counter`

Example options:

- `Study with coffee` - 45 min, costs money, academic gain, Stress may rise.
- `Quiet snack break` - 30 min, costs money, Energy and Mood recovery.
- `Chat with barista` - 15 min, small social clue / town knowledge.
- `Wait for Nell` - 30 min, contextual social opportunity if a clue points here.

## Layout

World remains visible behind the UI with a subtle dark scrim. The default Activity Choice + Time Cost presentation preserves the same top-down exploration camera used before the interaction. The player should feel they are still standing in the cafe, making a quick reversible decision, not entering a separate cinematic scene.

Close/cinematic composition is reserved for heavier authored moments such as lessons, relationship milestones, club special events, exams, major event scenes, or memory/semester reflection beats. Routine activity occasions should not imply a major mode switch.

Recommended layout:

- Normal exploration HUD remains visible while the activity choice overlay is open.
- Top-left existing time/day HUD remains visible.
- Lower-left wellbeing HUD remains visible.
- Lower-right phone/money HUD remains visible because some choices cost money.
- Main decision panel sits in the lower or right-central portion of the top-down exploration screen, avoiding the player character and activity object where possible.
- Left side of the panel: activity option list.
- Right side of the panel: selected option detail.
- Bottom strip: confirm/cancel prompts and final feasibility statement.

## Required Information

Each visible activity option should show:

- activity name,
- duration in minutes,
- short category icon or label: Study / Social / Recovery / Errand / Event,
- money cost if any,
- disabled/blocked state if the activity cannot fit or Energy is too low. Blocked discovered activities remain visible with a plain-language reason.

Selected activity detail should show:

- current time,
- activity duration,
- expected end time,
- travel/return feasibility when relevant,
- next hard commitment or dorm return pressure,
- likely effects, expressed qualitatively or with compact deltas:
  - Energy,
  - Stress,
  - Mood,
  - subject/academic progress,
  - relationship/social clue,
  - money.

Use known exact time costs. Use qualitative outcome wording when exact result is not guaranteed.

## Feasibility Rules

- Activities that cannot fit before a mandatory lesson, event, or dorm return must be blocked or clearly unavailable, but still visible when discovered/available in context.
- The system should explain the block in plain language, e.g. `Too late: dorm return by 21:00`.
- The system should distinguish:
  - fits comfortably,
  - tight but possible,
  - impossible/blocked.
- Feasibility includes activity duration and any required return travel when relevant.
- The player cannot voluntarily confirm an activity that would make them late to mandatory school commitments or dorm return.

## Interaction

Controller-first.

- D-pad/stick moves through activity options.
- Confirm selects/focuses an option and confirms when already focused on the confirm action.
- Back cancels to exploration without spending time.
- Details remain readable at Steam Deck size.
- Focus ring uses DESIGN.md `{colors.focus}`.
- Disabled choices remain visible but visibly unavailable and explain why.

Suggested prompt row:

- `A Confirm`
- `B Back`
- `Y Phone` only if opening phone is allowed from this context.

## Visual Direction

Use `DESIGN.md` tokens and accepted raster style:

- polished 2D pixel-art cafe scene,
- top-down exploration camera preserved behind the overlay,
- warm autumn afternoon light,
- cream paper decision cards over dark warm panel,
- crisp pixel borders,
- no phone app frame,
- no cinematic close camera for routine activity choice,
- no calendar grid,
- no remote quest board,
- no combat UI,
- notification/risk/wellbeing colors reinforced with text and icons.

## Anti-Patterns

- Do not show the player selecting activities from Calendar.
- Do not show travel choice on this screen; travel already happened.
- Do not make the options look like abstract task-board quests.
- Do not hide the reason an option is blocked.
- Do not show exact hidden probabilities or hidden NPC schedules.
- Do not replace world presence with a full-screen productivity menu.
- Do not switch routine activity choices into a lesson-like or cutscene-like camera angle.

## Accepted Filip Decisions

1. Normal HUD remains visible while the activity choice panel is open.
2. Blocked activities remain visible with a reason.
3. First raster mockup uses the cafe/barista scenario.
4. Default activity choice uses top-down exploration background. Close/cinematic framing is reserved for heavier authored moments, not routine quick decisions.
