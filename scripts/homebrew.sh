#!/bin/bash

# Install Xcode command line tools
xcode-select --install

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Append the Homebrew environment setup script to the user's .zprofile
# Using the $HOME environment variable to get the user's home directory
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile

# Evaluate the Homebrew environment setup script to update the current session
eval "$(/opt/homebrew/bin/brew shellenv)"