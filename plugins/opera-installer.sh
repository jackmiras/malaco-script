#!/bin/bash
# Script written by: Jack Miras.
# This script install Opera browser.

# Downloading opera-stable_41.0.2353.46_amd64.deb into the Download folder.
wget -P $HOME/Downloads/ http://download4.operacdn.com/pub/opera/desktop/41.0.2353.46/linux/opera-stable_41.0.2353.46_amd64.deb

# Installing the stable version Opera.
sudo dpkg -i $HOME/Downloads/opera-stable_41.0.2353.46_amd64.deb && sudo apt-get -f install

# Updating Ubuntu dependencies. 
sudo ap-get update && sudo apt-get upgrade

