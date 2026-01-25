#!/bin/bash
# Install GitHub CLI and configure git credentials
set -e

if command -v gh &>/dev/null; then
  echo "GitHub CLI already installed"
else
  echo "Installing GitHub CLI..."
  brew install gh
fi

echo "Configuring git credential helpers..."
gh auth setup-git

echo "GitHub CLI configured"
