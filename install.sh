#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Codex CLI / OpenAI Codex
mkdir -p ~/.codex
ln -sf "$DOTFILES_DIR/agents/AGENTS.md" ~/.codex/AGENTS.md

# Claude Code
mkdir -p ~/.claude
ln -sf "$DOTFILES_DIR/agents/AGENTS.md" ~/.claude/CLAUDE.md

echo "Linked global agent rules."