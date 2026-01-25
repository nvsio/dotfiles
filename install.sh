#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing dotfiles from $DOTFILES_DIR"

# Create config directories
mkdir -p ~/.config/ghostty
mkdir -p ~/.dotfiles/bin
mkdir -p ~/.dotfiles/zsh
mkdir -p ~/.claude

# Ghostty
ln -sf "$DOTFILES_DIR/ghostty/config" ~/.config/ghostty/config
echo "✓ Ghostty config linked"

# Tmux
ln -sf "$DOTFILES_DIR/tmux/tmux.conf" ~/.tmux.conf
echo "✓ Tmux config linked"

# Git
ln -sf "$DOTFILES_DIR/git/gitconfig" ~/.gitconfig
ln -sf "$DOTFILES_DIR/git/gitignore" ~/.gitignore
echo "✓ Git config linked"

# Zsh support files
ln -sf "$DOTFILES_DIR/zsh/git-prompt.zsh" ~/.dotfiles/zsh/git-prompt.zsh
ln -sf "$DOTFILES_DIR/zsh/multiline-prompt.zsh" ~/.dotfiles/zsh/multiline-prompt.zsh
ln -sf "$DOTFILES_DIR/zsh/zsh-git-prompt.sh" ~/.dotfiles/zsh/zsh-git-prompt.sh
ln -sf "$DOTFILES_DIR/zsh/gitstatus.py" ~/.dotfiles/zsh/gitstatus.py
echo "✓ Zsh support files linked"

# Bin scripts
ln -sf "$DOTFILES_DIR/bin/battery" ~/.dotfiles/bin/battery
ln -sf "$DOTFILES_DIR/bin/tmux-launch" ~/.dotfiles/bin/tmux-launch
if [[ -d "$DOTFILES_DIR/bin/OpenWithNeovim.app" ]]; then
  cp -r "$DOTFILES_DIR/bin/OpenWithNeovim.app" /Applications/ 2>/dev/null || true
  echo "✓ OpenWithNeovim.app copied to /Applications"
fi
echo "✓ Bin scripts linked"

# Claude Code
ln -sf "$DOTFILES_DIR/ai/claude.md" ~/.claude/CLAUDE.md
ln -sf "$DOTFILES_DIR/ai/agents.md" ~/.claude/AGENTS.md
echo "✓ Claude Code config linked"

echo ""
echo "Done! Next steps:"
echo ""
echo "1. Add to your ~/.zshrc:"
echo "   source $DOTFILES_DIR/zsh/zshrc"
echo ""
echo "2. Set your git identity:"
echo "   git config --global user.name \"Your Name\""
echo "   git config --global user.email \"your@email.com\""
echo ""
echo "3. Reload your shell:"
echo "   source ~/.zshrc"
