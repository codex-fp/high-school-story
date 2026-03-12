# Product Decisions And Open Questions

## Purpose

This document translates already-locked game design decisions into product-facing guidance for planning, backlog creation, and scope control.

Use it as the quick reference for what is settled, what is derived directly from design, and what still needs additional game design or product decisions.

## Settled Product Decisions

These points should be treated as current source-of-truth decisions because they are already established in `docs/design`.

### Experience and pressure

- The target pressure is cozy-leaning and lightly demanding.
- Routine is the dominant texture of play.
- The player should often feel limited, but rarely doomed.
- Soft failure is preferred over hard punishment.

### Daily structure

- Weekday school attendance is default and central.
- Truancy may exist as an exception, but is not a promoted fantasy.
- The default daily loop is dormitory morning, school block, afternoon freedom, dormitory evening.
- Morning is a moderate slot: usually one larger action or two small ones.
- The `21:00-22:00` window allows normal study, but it is usually weaker because of condition.

### Lessons and academics

- Standard lessons last `3` turns.
- Lesson action set is `attentive listening`, `talking`, `reading`, `browsing`, `napping`.
- Lesson variation comes from a roughly `50/50` mix of subject and teacher.
- Subjects differ mainly through hidden-but-learnable reward biases.
- Teachers differ through strictness or tolerance and teaching style.
- Players should start sensing subject character within `1-2` lessons.
- Grades are one major long-term pillar, but not the dominant one.
- The semester exam is a medium-complexity shared exam-period scene with short subject-specific accents.

### Relationships

- Relationships use descriptive stages instead of raw visible numbers.
- Friendship and romance are distinct.
- The player may explore multiple interests.
- The player can only have one active committed romance at a time.
- Social opportunities should usually be surfaced in sets of `1-2`.

### MVP scope shape

- MVP is one playable `12-week` semester.
- MVP roster is `5` classmates.
- MVP includes one lightweight fully supported arc and lighter support for the rest of the roster.
- MVP includes one extra social venue beyond the base locations.
- The current recommended extra venue is `park`.

## Product Implications Derived From Design

These are not new design decisions. They are direct product consequences of the settled design.

### Backlog implications

- The backlog should prioritize daily rhythm, lessons, condition feedback, social surfacing, and semester exam flow before scaling content breadth.
- New features should be checked against the cozy-leaning, lightly demanding pressure target.
- Any feature that promotes truancy, over-centralizes grades, or floods the player with concurrent social prompts should be treated as misaligned by default.

### UX implications

- UI must clearly show time, duration, and arrival-time consequences before committing to actions.
- Lesson feedback must make subject and teacher differences readable without requiring overt numerical explanation.
- Relationship UI should favor descriptive state and contextual feedback over exposed affinity math.

### Content planning implications

- Content cadence should preserve routine as the base and use events as accents.
- Social content should be authored for small visible opportunity sets, not broad simultaneous invitation spam.
- `park` should be treated as a strategic MVP content multiplier because it covers recovery, friendship, romance, and low-pressure story scenes.

## Open Questions

These topics are not resolved by current design and should remain open instead of being silently assumed closed.

### Pending game design

- Exact numeric formulas for lesson risk, threshold penalties, and recovery efficiency.
- Exact tuning for semester-standing versus exam-scene weighting.
- Exact teacher roster and per-subject reward-bias map.
- Exact social cooldown and opportunity-return tuning.

### Pending product decisions

- Post-MVP expansion path after the first semester is proven.
- Final target class size and final relationship-content density.
- Final venue expansion order after `park`.
- Final ending and epilogue structure for the larger product.
- Production, release, and commercial constraints.

## Recommended Planning Use

- Use `docs/product/product-vision.md` for intent and pillars.
- Use `docs/product/core-loop.md` for system-level product behavior.
- Use `docs/product/mvp-scope.md` for what must be in the first playable slice.
- Use this document when deciding whether a backlog item is already settled, derived, or still blocked by open design.
