#!/bin/bash

# Script written by: JM.
# This script install and configure NVM(Node Package Manager).

if [ -d "$HOME/.nvm/" ]; then
  echo $'\n NVM is already installed.'
else
  # Installing Node build essential.
  sudo apt-get update && sudo apt-get install build-essential libssl-dev
  # Downloading nvm script.
  wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
  # Installing nvm.
  bash install_nvm.sh

  zenity --info --text="Close and reopen the terminal."

  echo $'\n NVM was installed with success!'
fi
