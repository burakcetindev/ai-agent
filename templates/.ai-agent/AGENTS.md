# Coding Agent Operating Rules

> Global rules. Project-level AGENTS.md can override sections.
> Skills live in: ~/.config/opencode/skills/

## Development Workflow

Execute in order on every task:

1. Understand - clarify requirements before writing code
2. Design - plan architecture, identify components
3. Code - modular, documented, SOLID-compliant
4. Test - write real tests, run them, fix failures
5. Dry Run - execute app end-to-end, validate the flow
6. Docs - update README.md and docs/ folder
7. Diagrams - update Mermaid diagrams to match code
8. Changelog - create CHANGELOG_PENDING.md
9. Confirm - ask user "Ready to commit?"
10. Commit - conventional format, delete CHANGELOG_PENDING.md

## Code Rules
- OOP
- SOLID
- DRY
- Modular
- Extensible
- No function over 40 lines
- No silent failures

## Testing Rules
- No mocks
- Real verification
- Integration preferred
- Tests must pass before commit

## Documentation Rules
- README must be updated before push
- Diagrams must stay in sync with code

## Architecture Rules
- docs/architecture.md required (Mermaid graph diagram)
- docs/data-flow.md required (Mermaid sequence diagram)
- docs/considerations.md required (decisions + tradeoffs)

## Scripts
- scripts/build.sh required
- scripts/start.sh required
- scripts/test.sh required

## Commit Rules
- Conventional commits mandatory
- CHANGELOG_PENDING.md workflow mandatory
- Never commit with failing tests
- Never commit .env files

## Skill Reference

| Skill | Load when |
|-------|-----------|
| code-quality | writing or reviewing code |
| commit-workflow | preparing a commit |
| testing | writing or running tests |
| repo-bootstrap | creating a new project |
| documentation | updating docs or README |
| architecture | creating or updating diagrams |
