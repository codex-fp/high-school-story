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

Read the full story before taking action, including its frontmatter, Story, Acceptance Criteria, Tasks/Subtasks, Dev Notes, Dev Agent Record, File List, Change Log, and Status. Map every task or subtask to the applicable acceptance criteria and Dev Notes. Treat these as the authoritative requirements and technical constraints; use the coached design checkpoint to decide implementation details that remain open within that scope.

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

### Design And Planning Checkpoint

Before implementation, jointly turn the current unit into an approved micro-plan. Present:

- the task or subtask goal;
- linked acceptance criteria and relevant Dev Notes;

- the smallest proposed change set, likely files or components, and their responsibilities;
- a red-phase or validation plan, including the narrowest useful test command;
- risks, assumptions, and any implementation decision that needs the user's answer.

When real alternatives exist, propose two or three approaches with their meaningful trade-offs and a recommendation. When the solution is obvious, state the recommended approach and ask for short confirmation. Ask only questions needed to resolve technical choices. Do not offer implementation until the user confirms the chosen approach, scope, and validation plan.

Record the approved result in Dev Agent Record under `Approved Implementation Plan`, with one entry per task or subtask. Derive a stable unit key from the story's task tree: `T1`, `T2`, and so on for top-level tasks; `T1.S1`, `T1.S2`, and so on for their subtasks. Once recorded, preserve that key even if a later correct-course update reorders the task list.

Write each entry as a level-four heading containing the key, the exact task or subtask text, and a version:

```md
#### T1.S1 - Add `global.json` pinned to .NET SDK 10 (v1)

- **Status:** Approved
- **Approach:** ...
- **Scope:** ...
- **Files / components:** ...
- **Validation:** ...
```

The full task or subtask text is the human-readable match; the `Tn` or `Tn.Sn` key is the durable workflow reference. Append entries to existing plans; do not overwrite them. When a design decision changes, append the next version for the same key with `Status: Approved`, `Supersedes: vN`, and a `Reason`; the highest approved version is the active plan. Reference the same key and version in Completion Notes when the unit is completed.

### Implementation Choice

After recording the approved micro-plan, show only this letter-keyed menu in `{communication_language}`:

- **[U] I will implement the approved plan** - give the agreed next slice and validation target, then pause.
- **[A] Implement the approved plan for me** - implement only the recorded scope and run its relevant tests before the post-implementation pause.

Explicit `U` or `A` is preferred. Recognize an unambiguous natural-language request as a fallback only. At the smallest uncertainty, ask the user to choose `U` or `A`; do not infer.

### Review And Completion Gate

After `U` or `A`, do not show another letter menu or advance to another unit. Pause and ask an equivalent closed question in `{communication_language}`, for example: "Czy chcesz teraz przejrzeć diff i uruchomić potrzebne sprawdzenia?"

- If the user says yes, review the diff against the approved micro-plan, linked AC, and Dev Notes. Run the agreed targeted tests first, then broader relevant regression checks when practical. Identify omissions, regressions, scope drift, and test gaps.
- If the user says no, preserve the approved micro-plan and current task state, leave its checkbox unchanged, and pause.

Only after review and validation pass, summarize the evidence and ask in plain language whether to mark the unit complete. Never provide a shortcut that skips review or validation.

For an agent patch, use red-green-refactor in a coached form: use the approved test or observable validation, implement the minimum to satisfy it, then make only justified cleanup. Tests are part of the patch checkpoint, not a later optional activity.

When the user implements, do not edit implementation files while the user is working unless separately asked. When the user returns, wait for the closed review question before inspecting the diff and running the approved validation.

## Unit Definition Of Done

A task or subtask may be marked complete only when all of these are true:

- The implemented behavior is traceable to its linked AC and Dev Notes.
- An active, keyed Approved Implementation Plan exists for the current unit and the diff follows it.
- The diff has been reviewed against the approved scope.
- Relevant automated tests or an agreed observable validation have passed; any unavoidable gap is explicitly recorded and accepted by the user.
- No unresolved defect, scope drift, or blocking question remains.
- The File List, Dev Agent Record, and Change Log accurately describe the completed work when they changed.

When the user agrees to mark work as complete, present the evidence briefly. If it is insufficient, explain the missing gate and preserve the current state. Never check a box based on an implementation claim alone.

## Story Completion And Review Gate

When all tasks are complete, run `references/checklist.md`. Confirm all acceptance criteria, required tests, project-context rules, tracking records, and relevant regression checks pass. Ask for explicit approval before finalizing the story; do not auto-finalize after the final unit.

With approval, update the story Status and matching sprint-status entry to `review`, preserve the full sprint file's structure, and give a concise handoff that recommends `gds-code-review` as the external review gate.

HALT rather than force progress when the story is missing or ambiguous, its baseline is unsafe to establish, changes exceed the current approved unit, tests expose a defect outside scope, or a story requirement needs to change. State the specific blocker and offer the smallest appropriate next choice.
