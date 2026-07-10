# Analysis Report: .agents/skills/gds-coached-dev-story

Generated: 2026-07-10T11:23:30Z · Schema: 2

**Grade: Good**

> Good coached workflow with one high-impact path-resolution omission.

The workflow preserves the formal GDS story lifecycle while making user approval, narrow scope, review evidence, and testing explicit at every unit of work. Its primary gap is structural: it references multiple internal resources without defining the skill-root path-resolution contract, leaving a later agent to infer it.

| Severity | Count |
| --- | --- |
| Critical | 0 |
| High | 1 |
| Medium | 0 |
| Low | 1 |

## Themes

### 1. Internal resource resolution

- Root cause: The skill loads internal resources but does not state how bare paths and runtime placeholders resolve.
- Fix: Add the standard Resolution rules block near the overview, covering bare paths, {project-root}, and {skill-name}.
- Findings:
  - `architecture-1` Missing Resolution rules for internal references — `SKILL.md: Overview`

### 2. Customization discoverability

- Root cause: The customization file supports overrides but does not tell users where the team and personal override files live.
- Fix: Add the standard team and personal override paths to the generated customize.toml header.
- Findings:
  - `customization-1` Override locations are absent from customization header — `customize.toml:1`

## Strengths

- The explicit mode table turns pair-programming choices into durable workflow state rather than a loose conversational convention.
- Per-unit completion requires both scope-aware diff review and validation evidence, preventing checkbox-only progress.
- The prompt stays below the desired token tier and carves only the end-of-story checklist, which is loaded only at the review gate.
- No deterministic helper is prematurely introduced: task-to-AC mapping, scope assessment, review, and validation choice are contextual judgments.

## Recommendations

1. Add the standard Resolution rules block to SKILL.md. (resolves: architecture-1)
2. Add standard override-file locations to customize.toml. (resolves: customization-1)

## Experience

- **Coached implementation** — Story intake -> smallest incomplete unit -> explicit mode -> tested review checkpoint -> evidence-gated completion -> explicit story finalization.
- Headless: Fundamentally interactive by design: the workflow's value depends on explicit user mode selection and approval gates.

## Findings

### High (1)

#### architecture-1 — Missing Resolution rules for internal references

- Lens: architecture
- Location: `SKILL.md: Overview`
- Evidence: SKILL.md references customize.toml and references/checklist.md, and uses {skill-root}, but has no Resolution rules block defining internal path and placeholder resolution.
- Recommendation: Add the canonical Resolution rules block near Overview so an executing agent resolves internal files and project paths consistently.

### Low (1)

#### customization-1 — Override locations are absent from customization header

- Lens: customization
- Location: `customize.toml:1`
- Evidence: The generated header says DO NOT EDIT but does not identify the team and personal override files that users should edit.
- Recommendation: Add the standard {project-root}/_bmad/custom/gds-coached-dev-story.toml and .user.toml paths to the header.
