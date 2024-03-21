#!/bin/bash

# Install Xcode command line tools
xcode-select --install

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Append the Homebrew environment setup script to the user's .zprofile
# Using the $HOME environment variable to get the user's home directory
echo -e "\neval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> "$HOME/.zprofile"

# Evaluate the Homebrew environment setup script to update the current session
eval "$($(brew --prefix)/bin/brew shellenv)"

# Install deps
brew install node pnpm tmux pscale mysql-client

# Install ngrok
brew install --cask ngrok

# Install iTerm2
brew install --cask iterm2

# Install global node module
pnpm add -g vercel prisma

# Install tmux package manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Create tmux config
mkdir ~/.config/tmux && curl https://raw.githubusercontent.com/Careerbase/careerbase-config/main/src/tmux.conf -o ~/.config/tmux/tmux.conf