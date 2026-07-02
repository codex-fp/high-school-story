# Dialogue Choice / Consequence State - Mockup Spec v0

Status: accepted for raster mockup generation.

## Purpose

This surface supports authored relationship and narrative scenes where the player chooses concrete dialogue lines. It must make tone readable from the actual text of the choice rather than from abstract labels such as `kind`, `sarcastic`, or `pushy`.

The screen helps the player answer:

- Who am I speaking to?
- What did they just say or reveal?
- What can I say now?
- Which choice is currently focused?
- What kind of consequence might this choice plausibly have, without exposing hidden relationship math?

## Narrative Use

Use `Large Portrait Dialogue` for authored or emotionally important scenes:

- classmate intro beats,
- relationship milestone beats,
- club special events,
- major school/town event scenes,
- high-emotion choices,
- scenes where portrait expression and body language matter.

Use `Small Bubble Dialogue` for low-weight exchanges:

- barks,
- quick hallway interactions,
- minor NPC lines,
- short contextual comments,
- activity flavor where no major choice is present.

Large Portrait Dialogue has two approved presentation variants:

1. `Cinematic Large Portrait` - a more cinematic composition for high-weight relationship scenes, major authored beats, club special moments, exams, events, and memory scenes.
2. `Top-down-backed Large Portrait` - preserves the exploration map in the background while adding expressive portraits on the left/right. This is useful when the scene should feel emotionally present but still connected to the current location and exploration context.

Both variants use the same choice/consequence rules: concrete option text, small qualitative hint on the focused option, no exact relationship math, no hidden flag names.

## Example Mockup Scenario

Location: school library / zine table after a social clue.

Character: Nell Graves.

Scene context: Mira finds Nell near a half-finished zine draft. Nell is guarded and defensive about someone reading her work.

Nell line:

`Nell: "It's not finished. People are better at laughing than reading."`

Choice options:

1. `I can stop reading. I just liked the line about the rain.`
2. `You don't have to hide something this good.`
3. `If you hate people reading it, why leave it open?`

The choices should imply tone through wording:

- restraint / respect,
- encouragement / gentle push,
- blunt challenge.

Do not label these tones in the UI.

## Layout

Recommended `Large Portrait Dialogue` layout:

- World scene or illustrated location remains visible behind the dialogue layer. Depending on scene weight, this may be a cinematic composition or the preserved top-down exploration map.
- Character portrait or half-body portrait for the active speaker is prominent.
- In the top-down-backed variant, show expressive portraits on both left and right sides, angled toward each other, while small top-down sprites remain visible in the map background.
- Speaker name is clear.
- Dialogue text is in a large readable text panel.
- Choice list appears below or to the side, with three readable options.
- Focus ring highlights exactly one option using `DESIGN.md` `{colors.focus}`.
- The protagonist response options should have enough width to avoid truncating tone-bearing words.
- Bottom prompt row shows confirm/back/controller glyphs.

## Consequence Communication

The UI may show light, qualitative consequence hints only when the player has enough information to infer them.

Allowed:

- small icons/text such as `respects boundary`, `encourages`, `risks pressure`,
- contextual memory flags after the choice resolves,
- relationship feedback after the scene or beat,
- updated known facts/preferences in Phone Social after something is learned.

Avoid:

- exact Bond numbers,
- exact hidden flag names,
- success percentages,
- spoilers for authored outcomes,
- abstract tone labels that replace reading the line.

For the raster mockup, use a subtle selected-option detail strip rather than a full preview panel. Example for focused choice:

`Likely tone: respectful, gives space`

This hint should remain qualitative and small. It supports tone readability, but the actual choice text remains the primary source of meaning.

## Interaction

Controller-first.

- D-pad/stick moves between choices.
- Confirm selects the focused line.
- Back can return to prior line only if the scene supports review/cancel; otherwise it should be hidden or disabled during committed dialogue.
- Text advance and choice confirm should be clearly distinct when both are available.
- Focus order must be linear and predictable.

## Visual Direction

Use `DESIGN.md` tokens and accepted raster style:

- polished 2D pixel art,
- warm but intimate school-life scene,
- cream dialogue panels with dark ink,
- social purple accents may appear for relationship context,
- strong yellow focus ring,
- expressive but grounded portrait,
- no anime splash art,
- no VN-only full-screen UI if it breaks game identity,
- no dating-sim heart meter or exact relationship bar.

## Anti-Patterns

- Do not show choices as abstract tone buttons.
- Do not expose exact relationship math.
- Do not make every dialogue choice look like a major branching story decision.
- Do not hide the focused option state.
- Do not truncate choice text if the final words carry tone.
- Do not use combat/action framing.

## Accepted Filip Decisions

1. The selected/focused option may show a small qualitative tone/consequence hint before confirm.
2. First raster mockup uses Nell / library / zine as the representative scene.
3. Large Portrait Dialogue may use a more cinematic composition than top-down exploration.
4. A second approved Large Portrait variant preserves the top-down exploration map in the background and shows expressive portraits on the left/right side of the screen.
