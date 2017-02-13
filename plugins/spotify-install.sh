#!/bin/bash
# Script written by: JM.
# This script install Spotfy.

if command -v spotify >/dev/null; then
  echo $'\n Spotify is already installed.'
else
  # Downloading Spotfy client.
  wget -P $HOME/Downloads/ http://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.0.48.103.g15edf1ec-121_amd64.deb

  # Installing Spotfy client.
  sudo dpkg -i $HOME/Downloads/spotify-client_1.0.48.103.g15edf1ec-121_amd64.deb && sudo apt-get -f install

  # Updating Ubuntu dependencies.
  sudo apt-get install && sudo apt-get upgrade

  # Removing Spotfy file from Download folder.
  rm -rf $HOME/Downloads/spotify-client_1.0.48.103.g15edf1ec-121_amd64.deb

  echo $'\n Spotify was installed with success.'
fi
