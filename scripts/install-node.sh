#!/bin/bash
# Install Node.js
set -e

if command -v node &>/dev/null; then
  echo "Node.js already installed: $(node --version)"
  exit 0
fi

echo "Installing Node.js..."
brew install node

echo "Node.js installed: $(node --version)"
