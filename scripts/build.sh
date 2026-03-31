#!/usr/bin/env bash
set -euo pipefail

echo "[build] validating shell scripts"
chmod +x scripts/*.sh bin/* 2>/dev/null || true

echo "[build] validating markdown presence"
for f in AGENTS.md README.md docs/architecture.md docs/data-flow.md docs/considerations.md; do
  [[ -f "$f" ]] || { echo "Missing $f"; exit 1; }
done

echo "[build] done"
