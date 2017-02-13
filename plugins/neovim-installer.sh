#!/bin/bash
# Script written by: JM.
# This script install and configure Vim text editor.

if command -v nvim >/dev/null; then
  echo $'\n Neovim is already installed.\n'
else
  # Installing xclip as a dependency required by Neovim
  sudo apt-get install xclip

  # Installing Neovim.
  sudo apt-get install software-properties-common
  sudo apt-get install python-software-properties
  sudo add-apt-repository ppa:neovim-ppa/unstable
  sudo apt-get update
  sudo apt-get install neovim

  if [ ! -d "$HOME/Projects/neovim-config" ]; then
	  # Downloading Neovim configs from github.
	  cd $HOME/Projects && git clone git@github.com:jackmiras/neovim-config.git && cd $HOME
  fi

  # Loading the Neovim plugins
  cd $HOME/Projects/neovim-config
  git submodule init && git submodule update --recursive

  # Creating a symbolic link of Neovim configurations into the .config folder of Ubuntu.
  ln -s $HOME/Projects/neovim-config $HOME/.config/nvim

  echo $'\n Neovim was installed with success.\n'
fi

