#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Setting up dotfiles from $DOTFILES_DIR..."

# 1. Global AI agent rules for Codex and Claude Code
mkdir -p ~/.codex ~/.claude
ln -sf "$DOTFILES_DIR/agents/AGENTS.md" ~/.codex/AGENTS.md
ln -sf "$DOTFILES_DIR/agents/AGENTS.md" ~/.claude/CLAUDE.md
echo "Linked AI agent rules."

# 2. Source shell aliases in .zshrc and .bashrc
touch ~/.zshrc
SOURCE_LINE="[ -f \"$DOTFILES_DIR/shell/aliases.sh\" ] && source \"$DOTFILES_DIR/shell/aliases.sh\""

for rc in ~/.zshrc ~/.bashrc; do
  if [ -f "$rc" ] && ! grep -Fq "$DOTFILES_DIR/shell/aliases.sh" "$rc"; then
    echo "" >> "$rc"
    echo "$SOURCE_LINE" >> "$rc"
    echo "Added alias source line to $rc"
  fi
done

echo "Dotfiles setup complete."