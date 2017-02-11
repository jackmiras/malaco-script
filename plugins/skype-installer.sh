#!/bin/bash
# Script written by: JM.
# This script install Skype.

if command -v skype >/dev/null; then
  echo 'Skype is already isntalled.'
else
  # Downloading Skype.
  wget -P $HOME/Downloads/ https://download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb

  # Installing Skype.
  sudo dpkg -i $HOME/Downloads/skype-ubuntu-precise_4.3.0.37-1_i386.deb

  # Installing Skype dependencies.
  sudo apt-get -f install
	
  # Removing skype-ubuntu-precise_4.3.0.37-1_i386.deb file.
  rm -rf $HOME/Downloads/skype-ubuntu-precise_4.3.0.37-1_i386.deb

  # Updating Ubuntu softwares and dependencies.
  sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove
fi

