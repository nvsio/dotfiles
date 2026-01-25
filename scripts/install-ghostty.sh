#!/bin/bash
# Install Ghostty terminal emulator
set -e

if command -v ghostty &>/dev/null || [[ -d "/Applications/Ghostty.app" ]]; then
  echo "Ghostty already installed"
  exit 0
fi

echo "Installing Ghostty..."
brew install --cask ghostty

echo "Ghostty installed"
