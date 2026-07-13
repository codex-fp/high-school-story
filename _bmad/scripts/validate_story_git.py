#!/usr/bin/env python3
"""Validate Conventional Commit metadata for one BMAD/GDS story branch."""

from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import PurePosixPath


ALLOWED_TYPES = "feat|fix|docs|style|refactor|perf|test|build|ci|chore|revert"


def git(*args: str) -> str:
    completed = subprocess.run(
        ["git", *args], text=True, capture_output=True, check=False
    )
    if completed.returncode:
        message = completed.stderr.strip() or completed.stdout.strip()
        raise RuntimeError(message or f"git {' '.join(args)} failed")
    return completed.stdout


def normalize_path(value: str) -> str:
    return PurePosixPath(value.replace("\\", "/")).as_posix()


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Validate story IDs and Story-File trailers in a Git commit range."
    )
    parser.add_argument("--story-id", required=True, help="Numeric ID, for example 0.1")
    parser.add_argument(
        "--story-file", required=True, help="Repository-relative path to the story Markdown file"
    )
    parser.add_argument("--base", required=True, help="Exclusive base revision")
    parser.add_argument("--head", default="HEAD", help="Inclusive head revision (default: HEAD)")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    story_file = normalize_path(args.story_file)
    title = re.compile(
        rf"^(?:{ALLOWED_TYPES})\([^)]+\): {re.escape(args.story_id)} .+"
    )

    try:
        commits = git("rev-list", "--reverse", f"{args.base}..{args.head}").splitlines()
    except RuntimeError as error:
        print(f"error: cannot resolve commit range: {error}", file=sys.stderr)
        return 2

    if not commits:
        print("error: commit range is empty", file=sys.stderr)
        return 2

    failures: list[str] = []
    for sha in commits:
        subject = git("show", "-s", "--format=%s", sha).rstrip("\n")
        body = git("show", "-s", "--format=%B", sha)
        expected_trailer = f"Story-File: {story_file}"
        trailer_matches = [
            line.strip()
            for line in body.splitlines()
            if line.strip().lower().startswith("story-file:")
        ]

        problems: list[str] = []
        if not title.fullmatch(subject):
            problems.append(
                f"title must match 'type(scope): {args.story_id} short description'"
            )
        if trailer_matches != [expected_trailer]:
            problems.append(f"trailer must be exactly '{expected_trailer}'")
        if problems:
            failures.append(f"{sha[:12]}: {'; '.join(problems)}")

    if failures:
        print("Story commit validation failed:", file=sys.stderr)
        print("\n".join(failures), file=sys.stderr)
        return 1

    print(f"Validated {len(commits)} story commits for {args.story_id}.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
