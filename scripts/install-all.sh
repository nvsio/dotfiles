#!/bin/bash
# Install all tools used by dotfiles
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing all dotfiles dependencies..."
echo ""

# Homebrew first (required for other installs)
"$SCRIPT_DIR/install-homebrew.sh"

# Core tools via Homebrew
"$SCRIPT_DIR/install-ghostty.sh"
"$SCRIPT_DIR/install-tmux.sh"
"$SCRIPT_DIR/install-neovim.sh"
"$SCRIPT_DIR/install-node.sh"

# Tools with custom installers
"$SCRIPT_DIR/install-bun.sh"
"$SCRIPT_DIR/install-claude.sh"
"$SCRIPT_DIR/install-gh.sh"
"$SCRIPT_DIR/install-opencode.sh"

echo ""
echo "All tools installed!"
echo "Run ./install.sh to link dotfiles"
