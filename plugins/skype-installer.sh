#!/bin/bash
# Script written by: JM.
# This script install Skype.

if command -v skype >/dev/null; then
  echo $'\n Skype is already isntalled.'
else
  # Downloading Skype.
  wget -P $HOME/Downloads/ https://repo.skype.com/latest/skypeforlinux-64.deb

  # Installing Skype.
  sudo dpkg -i $HOME/Downloads/skypeforlinux-64.deb

  # Installing Skype dependencies.
  sudo apt-get -f install

  # Removing skypeforlinux-64.deb file.
  rm -rf $HOME/Downloads/skypeforlinux-64.deb

  # Updating Ubuntu softwares and dependencies.
  sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove

  echo $'\n Skype was isntalled with success.'
fi

