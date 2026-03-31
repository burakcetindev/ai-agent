#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_BIN_DIR="$HOME/.local/bin"
TARGET_AI="$TARGET_BIN_DIR/ai"
TARGET_TEMPLATE_ROOT="$HOME/.config/opencode/ai-agent-template"

mkdir -p "$TARGET_BIN_DIR"
mkdir -p "$TARGET_TEMPLATE_ROOT"

cp "$REPO_ROOT/bin/ai" "$TARGET_AI"
chmod +x "$TARGET_AI"

rm -rf "$TARGET_TEMPLATE_ROOT/.ai-agent"
mkdir -p "$TARGET_TEMPLATE_ROOT"
cp -R "$REPO_ROOT/template/.ai-agent" "$TARGET_TEMPLATE_ROOT/.ai-agent"

ZSHRC="$HOME/.zshrc"
PATH_LINE='export PATH="$HOME/.local/bin:$PATH"'
if [[ -f "$ZSHRC" ]]; then
  if ! grep -qxF "$PATH_LINE" "$ZSHRC"; then
    printf "\n%s\n" "$PATH_LINE" >> "$ZSHRC"
  fi
else
  printf "%s\n" "$PATH_LINE" > "$ZSHRC"
fi

export PATH="$HOME/.local/bin:$PATH"

echo "Installed ai command to $TARGET_AI"
echo "Installed template to $TARGET_TEMPLATE_ROOT/.ai-agent"
echo "If needed, run: source ~/.zshrc"
