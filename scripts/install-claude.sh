#!/bin/bash
# Install Claude Code CLI
set -e

if command -v claude &>/dev/null; then
  echo "Claude Code already installed"
  exit 0
fi

echo "Installing Claude Code..."
npm install -g @anthropic-ai/claude-code

echo "Claude Code installed"
