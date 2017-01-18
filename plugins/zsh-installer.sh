#!/bin/bash

# Script is written by: Jackson Miras.
# This script install the zsh and oh-my-zsh softwares, the current script also
# download and setup my configs of oh-my-zsh.

# Installing zsh.
sudo apt-get update && sudo apt-get install -y zsh
# Making zsh the default shell.
chsh -s $(which zsh)
# Installing oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# Removing the default .zshrc file.
rm -rf $HOME/.zshrc
# Downloading Zsh configs from github.
cd $HOME/Projects && git clone git@github.com:jackmiras/zshrc-config.git && cd $HOME/
# Creating symbolic link of Zsh configs into the home of computer.
ln -s $HOME/Projects/zshrc-config/.zshrc $HOME/.zshrc
