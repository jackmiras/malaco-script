#!/bin/bash
# Script written by: Jackson Miras.
# This script install and configure Vim text editor.

# Installing Vim.
sudo apt-get update && sudo apt-get install vim
if [ ! -d "$HOME/Projects/vim-config" ]; then
	# Downloading Vim configs from github.
	cd $HOME/Projects && git clone git@github.com:jackmiras/vim-config.git && cd $HOME
fi

# Creating a symbolic link of Vim configurations into the Home folder of Ubuntu.
ln -s $HOME/Projects/vim-config/ $HOME/.vim
ln -s $HOME/Projects/vim-config/vimrc $HOME/.vimrc

# Installing vim plugins.
cd $HOME/.vim
git submodule init
git submodule update --recursive
