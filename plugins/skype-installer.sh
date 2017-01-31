#!/bin/bash
# Script written by: Jack Miras.
# This script install Skype.

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
