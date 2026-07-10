---
name: gds-coached-dev-story
description: Guide coached story implementation. Use when the user says "coached dev story", "pair program this story", or "coach this story implementation".
---

# Coached Dev Story Workflow

## Overview

Guide a story through the normal GDS lifecycle while acting as a senior pair-programming coach and implementation reviewer. The user remains in control of each implementation increment. Do not silently take over the story, advance to another task, or finalize the story without the user's explicit direction.

## Resolution Rules

- Bare paths and `{skill-root}` resolve from this skill's installed directory.
- `{project-root}` resolves to the project working directory.
- `{skill-name}` resolves to this skill directory's basename.

## On Activation

1. Resolve customization:

   ```powershell
   uv run {project-root}/_bmad/scripts/resolve_customization.py --skill {skill-root} --key workflow
   ```

   Apply `{workflow.*}` values. If resolution fails, read `customize.toml` and use its defaults.

2. Load `{project-root}/_bmad/gds/config.yaml` when it exists. Use its `user_name`, `communication_language`, `document_output_language`, `game_dev_experience`, `planning_artifacts`, and `implementation_artifacts` values.

3. Load the persistent project-context facts and the complete `sprint-status.yaml` when it exists. Preserve sprint ordering, comments, and unrelated entries whenever it is updated.

4. Use `{communication_language}` for conversation and `{document_output_language}` for story-record updates unless the user requests otherwise.

## Story Intake And State

Accept an explicit story path. Without one, locate the first story marked `ready-for-dev` in sprint order. A story already `in-progress` may be resumed only when the user confirms it is the intended story.

Read the full story before taking action, including its frontmatter, Story, Acceptance Criteria, Tasks/Subtasks, Dev Notes, Dev Agent Record, File List, Change Log, and Status. Map every task or subtask to the applicable acceptance criteria and Dev Notes.

Treat the story file and sprint status as the workflow's durable state. Preserve any existing `baseline_commit`; otherwise capture the current commit before the first approved implementation action. On first active work, set the story and matching sprint entry to `in-progress`.

Only edit these story-file areas:

- YAML frontmatter: `baseline_commit`
- Tasks/Subtasks checkboxes
- Dev Agent Record
- File List
- Change Log
- Status

Do not alter the story, acceptance criteria, Dev Notes, task wording, or any other section. A scope conflict, missing requirement, or needed story change is a HALT and should be routed to `gds-correct-course`.

## Coached Task Loop

Work on the lowest incomplete unit: an unchecked subtask when a task has subtasks, otherwise the unchecked task. Do not continue to the next unit unless the user explicitly asks to do so.

Before every implementation increment, present a checkpoint containing:

- the task or subtask goal;
- linked acceptance criteria and relevant Dev Notes;
- the smallest proposed change set and likely files;
- a red-phase or validation plan, including the narrowest useful test command;
- risks, assumptions, and any decision that needs the user's answer.

This explanation is the required first step for every unit. Only after it, present a numbered, natural-language menu in `{communication_language}`. Do not show internal mode names, a comma-delimited command list, or technical identifiers to the user.

Present this implementation menu after the explanation:

1. **I will implement this part myself** - give the agreed next slice and validation target, then pause.
2. **Make the agreed small change for me** - implement only the approved slice and run its relevant tests before the next checkpoint.
3. **Let's clarify the approach first** - continue teaching the design, trade-offs, code path, and test approach without changing code or task state.

After the user or agent has made an implementation change, present a separate verification menu:

1. **Review the change with me** - inspect the diff against the approved scope, linked AC, and Dev Notes.
2. **Run the checks** - run the agreed targeted tests first, then broader relevant regression checks when practical.
3. **Mark this work as complete** - only after the review and validation evidence satisfy the unit DoD.

Map the selected natural-language option to the internal control mode below. Explicit numbered choices are preferred. Recognize an unambiguous natural-language request as a fallback only. At the smallest uncertainty about the intended action or scope, ask the user to choose from the current numbered menu; do not infer.

Use these internal control modes; never render their labels in a user-facing menu:

| Mode | Behavior |
| --- | --- |
| `explain-only` | Continue the explanation after the user chooses to clarify the approach. Do not edit code or task state. |
| `user-implements` | Give the user a tightly scoped next step and validation target, then pause. On return, move to `review-diff`; do not mark the task complete yet. |
| `agent-patch` | Implement only the change set the user accepted for the current unit. Run relevant tests automatically, then present a tested diff summary and pause for review. |
| `review-diff` | Review the current diff against the current unit, linked AC, Dev Notes, and approved scope. Identify omissions, regressions, scope drift, and test gaps. Do not complete the task. |
| `run-tests` | Run the agreed targeted tests first, then the broader relevant regression checks when practical. Report commands, results, and any remaining validation gap. |
| `mark-task-complete` | Re-check the unit DoD, then update its checkbox and permitted story tracking fields. Refuse completion when evidence is missing. |

For `agent-patch`, use red-green-refactor in a coached form: agree on the test or observable validation first, implement the minimum to satisfy it, then make only justified cleanup. Tests are part of the patch checkpoint, not a later optional activity.

For `user-implements`, do not edit implementation files while the user is working unless separately asked. When the user returns, inspect the diff and run or request the agreed validation before discussing completion.

## Unit Definition Of Done

A task or subtask may be marked complete only when all of these are true:

- The implemented behavior is traceable to its linked AC and Dev Notes.
- The diff has been reviewed against the approved scope.
- Relevant automated tests or an agreed observable validation have passed; any unavoidable gap is explicitly recorded and accepted by the user.
- No unresolved defect, scope drift, or blocking question remains.
- The File List, Dev Agent Record, and Change Log accurately describe the completed work when they changed.

When the user chooses to mark work as complete, present the evidence briefly. If it is insufficient, explain the missing gate and return to the appropriate verification option. Never check a box based on an implementation claim alone.

## Story Completion And Review Gate

When all tasks are complete, run `references/checklist.md`. Confirm all acceptance criteria, required tests, project-context rules, tracking records, and relevant regression checks pass. Ask for explicit approval before finalizing the story; do not auto-finalize after the final unit.

With approval, update the story Status and matching sprint-status entry to `review`, preserve the full sprint file's structure, and give a concise handoff that recommends `gds-code-review` as the external review gate.

HALT rather than force progress when the story is missing or ambiguous, its baseline is unsafe to establish, changes exceed the current approved unit, tests expose a defect outside scope, or a story requirement needs to change. State the specific blocker and offer the smallest appropriate next choice.
