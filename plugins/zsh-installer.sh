#!/bin/bash

# Script is written by: JM.
# This script install the zsh and oh-my-zsh softwares, the current script also
# download and setup my configs of oh-my-zsh.

if command -v zsh >/dev/null; then
  echo $'\n Zsh and Oh-myzsh are already installed.'
else
  # Installing zsh.
  sudo apt-get update && sudo apt-get install -y zsh
  # Making zsh the default shell.
  chsh -s $(which zsh)
  # Installing oh-my-zsh
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
  # Removing the default .zshrc file.
  rm -rf $HOME/.zshrc

  # Checking if zshrc-config folder exists on computer.
  if [ ! -d "$HOME/Projects/zshrc-config" ]; then
    cd $HOME/Projects && git clone git@github.com:jackmiras/zshrc-config.git && cd $HOME/
  fi

  # Removing current configurations of Zsh and Oh my Zsh.
  rm -rf $HOME/.zshrc
  rm -rf $HOME/.oh-my-zsh/themes
  rm -rf $HOME/.oh-my-zsh/custom

  # Creating symbolic link of the Zsh and Oh my Zsh configuration.
  ln -s $HOME/Projects/zshrc-config/.zshrc $HOME/.zshrc
  ln -s $HOME/Projects/zshrc-config/themes/ $HOME/.oh-my-zsh/themes
  ln -s $HOME/Projects/zshrc-config/custom/ $HOME/.oh-my-zsh/custom

  echo $'\n Zsh and Oh-my-zsh was installed with succes.'
fi
