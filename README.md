# ai-agent

This repository is a template source for coding-agent instructions.

It provides:
- A reusable template bundle in `templates/.ai-agent/`
- A global CLI command `ai` in `bin/ai`

## What `ai agent` Does

When you run `ai agent` inside any project directory:
1. Copies `templates/.ai-agent/` into the current directory as `.ai-agent/`
2. Ensures `.gitignore` contains `.ai-agent/`

Result: the AI agent can read local instructions, but `.ai-agent/` is not committed to that project.

## Install Command Globally

From this repository:

```bash
./bin/ai install
source ~/.zshrc
```

This installs:
- Command: `~/.local/bin/ai`
- Template cache: `~/.config/opencode/ai-agent-template/.ai-agent`

## Remove Global Install

```bash
ai uninstall
```

This removes:
- `~/.local/bin/ai`
- `~/.config/opencode/ai-agent-template/.ai-agent`
- The PATH helper line added to `~/.zshrc` (if present)

## Use Anywhere

In any repository folder:

```bash
ai agent
```

## Remove Local Agent Folder

In any repository folder where `.ai-agent/` exists:

```bash
ai rm agent
```

or

```bash
ai remove agent
```

This removes local `.ai-agent/` and removes `.ai-agent/` from `.gitignore` if present.

## Template Contents

The copied `.ai-agent/` directory includes:
- `AGENTS.md`
- `skills/`
  - `code-quality/SKILL.md`
  - `commit-workflow/SKILL.md`
  - `testing/SKILL.md`
  - `repo-bootstrap/SKILL.md`
  - `documentation/SKILL.md`
  - `architecture/SKILL.md`
- `templates/`
  - `README.md`
  - `docs/architecture.md`
  - `docs/data-flow.md`
  - `docs/considerations.md`
