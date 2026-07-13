# Story development workflow

This document is the canonical Git workflow for BMAD/GDS implementation stories.

## Story branch and pull request

- Start every story from an up-to-date, clean `main` branch.
- Create the branch as `story/<epic>-<story>/<slug>`, for example `story/0-1/create-godot-host-and-clean-c-solution-boundaries`.
- Record the branch name in the story frontmatter as `branch_name` and retain the pre-story commit as `baseline_commit`.
- Commit the initial `in-progress` tracking update, push the branch, and create a draft pull request. Store its URL in `pull_request_url` in the story frontmatter.
- Commit each approved guided-dev plan batch separately. A commit may contain only that batch's completed work and required story tracking updates.
- Before moving the story to `review`, validate its commits, push the branch, and mark the draft pull request ready for review.
- Run `gds-code-review` against the pull request. After a clean review marks the story `done`, request explicit user confirmation before rebase-merging and deleting the branch.

## Commit messages

Every commit belonging to a story must be a Conventional Commit with a required scope, the story ID immediately after the colon, and a `Story-File` trailer with the repository-relative story path.

```text
type(scope): 0.1 short description

Story-File: _bmad-output/implementation-artifacts/0-1-create-godot-host-and-clean-c-solution-boundaries.md
```

Allowed types are `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`, and `revert`. Use the numeric story ID from the story heading (for example `0.1`), not its filename key (`0-1`).

Commits not belonging to a story still use Conventional Commits, but must not include a story ID or `Story-File` trailer.

## Validation and recovery

Run `_bmad/scripts/validate_story_git.py` before review. It checks every commit from the supplied base to `HEAD`, reports the offending SHA, and exits non-zero if the title or trailer is invalid.

If GitHub CLI authentication, push permission, or pull-request creation is unavailable, stop before implementation or review and present the exact manual Git/GitHub action needed. Do not continue on `main` as a fallback.
