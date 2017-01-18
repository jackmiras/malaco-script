#!/bin/bash

# Script written by: Jackson Miras.
# This script install and configure NVM(Node Package Manager).

# Installing Node build essential.
sudo apt-get update && sudo apt-get install build-essential libssl-dev
# Downloading nvm script.
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh -o install_nvm.sh
# Installing nvm.
bash install_nvm.sh

zenity --info --text="Close and reopen the terminal."

