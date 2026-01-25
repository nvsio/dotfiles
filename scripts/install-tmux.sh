#!/bin/bash
# Install tmux terminal multiplexer
set -e

if command -v tmux &>/dev/null; then
  echo "tmux already installed"
  exit 0
fi

echo "Installing tmux..."
brew install tmux

echo "tmux installed"
