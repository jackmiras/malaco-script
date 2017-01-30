#!/bin/bash
# Script written by: Jack Miras.
# This script install Spotfy.

# Downloading Spotfy client.
wget -P $HOME/Downloads/ http://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.0.38.171.g5e1cd7b2-22_amd64.deb

# Installing Spotfy client.
sudo dpkg -i spotify-client_1.0.38.171.g5e1cd7b2-22_amd64.deb && sudo apt-get -f install

# Updating Ubuntu dependencies.
sudo apt-get install && sudo apt-get upgrade

# Removing Spotfy file from Download folder.
rm -rf $HOME/Downloads/spotify-client_1.0.38.171.g5e1cd7b2-22_amd64.deb
