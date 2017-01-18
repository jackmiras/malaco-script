#!/bin/bash

# Script written by: Jackson Miras.
# This script install and configure Node.

# Enabling the nvm.sh script to run in bash scripts.
. ~/.nvm/nvm.sh
. ~/.profile
. ~/.bashrc
. ~/.zshrc

# Installing Node.
nvm install 7.2.0
nvm use 7.2.0
nvm alias default 7.2.0

# Intalling npm.
sudo apt-get install npm
