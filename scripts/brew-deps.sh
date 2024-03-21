#!/bin/bash

# Create config directory
mkdir ~/.config

# Install deps
brew install node 
brew install pnpm
brew install tmux
brew install planetscale/tap/pscale
brew install mysql-client
brew install --cask ngrok
brew install --cask iterm2

# Install global node module
pnpm add -g vercel prisma

# Install tmux package manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Create tmux config
mkdir ~/.config/tmux && curl https://raw.githubusercontent.com/Careerbase/careerbase-config/main/src/tmux.conf -o ~/.config/tmux/tmux.conf