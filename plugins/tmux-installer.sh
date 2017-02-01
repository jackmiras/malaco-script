#!/bin/bash

# Script written by: JM.
# This plugin install the Tmux software.

if command -v tmux >/dev/null; then
	echo 'Tmux is already installed'
else
	# Installing Tmux.
	sudo apt-get update && sudo apt-get install -y tmux
	echo $'\nTmux was installed with succes.'
fi
