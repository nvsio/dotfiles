#!/bin/bash
# Install OpenCode CLI
set -e

if command -v opencode &>/dev/null; then
  echo "OpenCode already installed"
  exit 0
fi

echo "Installing OpenCode..."
curl -fsSL https://opencode.ai/install.sh | bash

echo "OpenCode installed"
