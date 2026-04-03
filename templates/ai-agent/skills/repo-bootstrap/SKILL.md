---
name: repo-bootstrap
description: Setup new repository structure, scripts, and config
---

# New Repository Structure

project/
|- src/
|  |- controllers/
|  |- services/
|  |- repositories/
|  \- utils/
|- tests/
|- scripts/
|  |- build.sh
|  |- start.sh
|  \- test.sh
|- docs/
|  |- architecture.md
|  |- data-flow.md
|  \- considerations.md
|- .env.example
|- .gitignore
|- README.md
\- AGENTS.md

## scripts/build.sh
- Install dependencies
- Build project
- Set up environment (copy .env.example to .env if missing)

## scripts/start.sh
- Start application
- Run services

## scripts/test.sh <- required, was missing
- Run full test suite
- Exit with non-zero code on failure

## .gitignore must include
- .env
- CHANGELOG_PENDING.md <- must never be committed accidentally
- node_modules/ or __pycache__/
- dist/ or build/

## Bootstrap Checklist
- [ ] All directories created
- [ ] scripts/ files created and chmod +x
- [ ] .env.example created with all required variables documented
- [ ] .gitignore created
- [ ] README.md created
- [ ] docs/ files created
- [ ] AGENTS.md copied into project root
- [ ] git init + initial commit
