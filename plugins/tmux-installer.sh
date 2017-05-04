#!/bin/bash
# Script written by: JM.
# This plugin install and configure Tmux software.

if command -v tmux >/dev/null; then
	echo $'\n Tmux is already installed'
else
	# Installing Tmux.
	sudo apt-get update && sudo apt-get install -y tmux

  # Checking if tmux-config folder exists on computer.
  if [ ! -d "$HOME/Projects/tmux-config" ]; then
	  # Downloading Tmux configs from github.
	  cd $HOME/Projects && git clone git@github.com:jackmiras/tmux-config.git && cd $HOME
  fi

  # Removing any existent .tmux.conf file from $HOME
  if [ -e "$HOME/.tmux.conf" ]; then
    rm -rf .tmux.conf
  fi

  # Creating a symbolic link of the .tmux.config file in the $HOME.
  ln -s $HOME/Projects/tmux-config/tmux.conf $HOME/

	echo $'\n Tmux was installed with succes.'
fi
