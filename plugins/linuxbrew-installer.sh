#!/bin/bash
# Script written by: JM.
# This script install Linuxbrew.

if command -v brew >/dev/null; then
  echo $'\n Linuxbrew is already installed.'
else
  # Installing Linuxbrew dependencies.
  sudo apt-get install build-essential curl git python-setuptools ruby
	
  # Installing Linuxbrew.
  git clone https://github.com/Linuxbrew/brew.git ~/.linuxbrew
	
  # Exporting environment variables of Linuxbrew.
  echo "export PATH='$HOME/.linuxbrew/bin:$PATH'" >> ~/.bashrc
  echo "export MANPATH='$HOME/.linuxbrew/share/man:$MANPATH'" >> ~/.bashrc
  echo "export INFOPATH='$HOME/.linuxbrew/share/info:$INFOPATH'" >> ~/.bashrc

  echo $'\n Linuxbrew was installed with success.'
fi

