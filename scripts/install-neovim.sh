#!/bin/bash
# Install Neovim editor
set -e

if command -v nvim &>/dev/null; then
  echo "Neovim already installed"
  exit 0
fi

echo "Installing Neovim..."
brew install neovim

echo "Neovim installed"
