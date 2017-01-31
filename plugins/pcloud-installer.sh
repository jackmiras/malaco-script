#!/bin/bash
# Script written by: Jack Miras.
# This script install pCloud.

# Downloading pCloud to the Download folder.
wget -P $HOME/Downloads/ https://c75.pcloud.com/dHZ8IsmSZJvU4uZZZmMutt7ZHkZZGNRZkZ5LUXZssw368uiJLjYQDTAP0KEsS2b0egy/pCloud_Linux_amd64_3.1.1.deb

# Installing pCloud.
sudo dpkg -i $HOME/Downloads/pCloud_Linux_amd64_3.1.1.deb && sudo apt-get -f install

# Updating Ubuntu dependencies and softwares.
sudo apt-get update && sudo apt-get upgrade

# Removing pCloud_Linux_amd64_3.1.1.deb file from Download folder.
rm -rf $HOME/Downloads/pCloud_Linux_amd64_3.1.1.deb
