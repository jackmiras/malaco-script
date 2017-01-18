#!/bin/bash
# Script written by: Jackson Miras.
# This script install android configure Sublime Text 3 text editor.

# Adding Sublime Text 3 respository.
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3 && sudo apt-get update

# Installing Sublime Text 3.
sudo apt-get -y install sublime-text-installer

# Downloading Sublime Text 3 configs from Github.
if [ ! -d "$HOME/Projects/sublime-text-3-config" ]; then
		cd $HOME/Projects && git clone git@github.com:jackmiras/sublime-text-3-config.git && cd $HOME
fi

# Creating a symbolic link of Sublime Text 3 configs into the Home/.config folder of Ubuntu.
ln -s $HOME/Projects/sublime-text-3-config $HOME/.config/sublime-text-3

