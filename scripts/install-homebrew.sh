#!/bin/bash
# Install Homebrew (macOS package manager)
set -e

if command -v brew &>/dev/null; then
  echo "Homebrew already installed"
  exit 0
fi

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add to PATH for Apple Silicon
if [[ -d "/opt/homebrew/bin" ]]; then
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "Homebrew installed"
