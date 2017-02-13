#!/bin/bash
# Script written by: JM.
# This script install Simplenote.

if [ -d "/usr/share/simplenote/" ]; then
  echo $'\n Simplenote is already installed.'
else
  # Downloading Simplenote.
  wget -P $HOME/Downloads/ https://github.com/Automattic/simplenote-electron/releases/download/v1.0.8/simplenote-1.0.8.deb

	
  # Installing Simplenote.
  sudo dpkg -i $HOME/Downloads/simplenote-1.0.8.deb && sudo apt-get -f install

  # Removing simplenote-1.0.6.deb file.
  rm -rf $HOME/Downloads/simplenote-1.0.8.deb
	
  # Updating Ubuntu softwares and dependencies.
  sudo apt-get update && sudo apt-get upgrade

  echo $'\n Simplenote was installed with success.'
fi
