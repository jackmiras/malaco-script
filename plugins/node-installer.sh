#!/bin/bash

# Script written by: JM.
# This script install and configure Node.

if command -v npm >/dev/null; then
  echo $'\n NPM is already installed.'
else
  # Enabling the nvm.sh script to run in bash scripts.
  . ~/.nvm/nvm.sh
  . ~/.profile
  . ~/.bashrc
  . ~/.zshrc
  # Installing Node.
  nvm install 7.9.0
  nvm use 7.9.0
  nvm alias default 7.9.0
  # Intalling npm.
  sudo apt-get install npm

  echo $'\n NPM was isntalled with success!'
fi
