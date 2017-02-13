#!/bin/bash

# Scrip written by: JM.
# This script install the zsh-syntax-highlighting.

DESTINATION="$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
if [ -d "$DESTINATION" ]; then
	echo $'\n zsh-syntax-highlighting is already installed.'
else
  # Installing Zsh Syntax Highlighting.
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

	echo $'\n zsh-syntax-highlighting was installed with success!'
fi
