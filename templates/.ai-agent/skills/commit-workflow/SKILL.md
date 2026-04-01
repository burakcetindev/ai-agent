---
name: commit-workflow
description: Enforce conventional commits and changelog workflow
---

# Commit Workflow (MANDATORY)

## Step 1 - Create CHANGELOG_PENDING.md
Before commit, create this file at repo root:

Contents:
- What changed
- Why
- Impact
- Breaking changes (or NONE)

## Step 2 - Ask user
Ask: "Here's the pending changelog. Ready to commit?"
Wait for explicit YES. Do not auto-commit.

## Step 3 - If YES
- Use changelog content as commit message body
- DELETE CHANGELOG_PENDING.md
- Commit

## Step 4 - If NO
- Keep CHANGELOG_PENDING.md in place
- Continue working, update file as changes accumulate

## Conventional Commit Format

feat: new feature
fix: bug fix
refactor: code change with no behavior change
docs: documentation only
test: adding or fixing tests
chore: build process, deps, tooling
perf: performance improvement

Format:
<type>(<scope>): <summary>

- what: <detail>
- why: <reason>
- impact: <what is affected>

Example:
feat(auth): add JWT refresh token rotation

- what: added refresh endpoint and token rotation logic
- why: security audit requirement
- impact: new /auth/refresh endpoint, updated token schema

## Commit Hygiene
- Never commit with failing tests
- Never commit debug logs or commented-out code
- Never commit .env files - only .env.example
- Squash WIP commits before merging to main
