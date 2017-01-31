#!/bin/bash
# Script written by: Jack Miras.
# This script install Simplenote.

# Downloading Simplenote.
wget -P $HOME/Downloads/ https://github.com/Automattic/simplenote-electron/releases/download/v1.0.6/simplenote-1.0.6.deb
	
# Installing Simplenote.
sudo dpkg -i $HOME/Downloads/simplenote-1.0.6.deb && sudo apt-get -f install

# Removing simplenote-1.0.6.deb file.
rm -rf $HOME/Downloads/simplenote-1.0.6.deb
	
# Updating Ubuntu softwares and dependencies.
sudo apt-get update && sudo apt-get upgrade
