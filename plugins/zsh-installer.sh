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

  echo $'\n Zsh and Oh-my-zsh was installed with succes.'
fi

