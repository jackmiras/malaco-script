#!/bin/bash

# Script is written by: JM.
# This script setup my configs of oh-my-zsh.

# Checking if zshrc-config folder exists on computer.
if [ ! -d "$HOME/Projects/zshrc-config" ]; then
  cd $HOME/Projects && git clone git@github.com:jackmiras/zshrc-config.git && cd $HOME/
fi
  
# Removing current configurations of Zsh and Oh my Zsh.
rm -rf $HOME/.zshrc
rm -rf $HOME/.oh-my-zsh/themes
rm -rf $HOME/.oh-my-zsh/custom

# Creating symbolic link of the Zsh and Oh my Zsh configuration.
ln -s $HOME/Projects/zshrc-config/zshrc $HOME/.zshrc
ln -s $HOME/Projects/zshrc-config/themes/ $HOME/.oh-my-zsh/themes
ln -s $HOME/Projects/zshrc-config/custom/ $HOME/.oh-my-zsh/custom

echo $'\nOh-my-zsh config was installed with succes.'

