---
name: documentation
description: Enforce documentation updates before every push
---

# Documentation Rules

## When to Update

| Trigger | Action |
|---------|--------|
| New feature | Update README purpose + usage |
| New endpoint or function | Update README usage section |
| Config change | Update README + .env.example |
| Architecture change | Update architecture.md diagram |
| Any meaningful commit | README must reflect current state |

## Before Push
1. Update README.md
2. Verify folder structure section is accurate
3. Update usage instructions if behavior changed
4. Update docs/ references if files were added or removed

## README must contain
- Purpose
- How to run (build + start commands)
- Configuration (env variables table)
- Folder structure (accurate, not stale)
- Scripts usage
- Links to docs/

## Quality Rule
Short and accurate beats long and outdated.
Delete documentation for removed features immediately.
