#!/bin/bash
# Script written by: JM.
# This script install Stremio video streaming.

if [ -d "/opt/Stremio/" ]; then
  echo $'\n Stremio Studio is already installed.'
else
  # Downloading Stremio
	wget -P $HOME/Downloads/ http://dl.strem.io/stremio_3.6.5_amd64.deb
	# Installing Stremio.
	sudo dpkg -i $HOME/Downloads/stremio_3.6.5_amd64.deb && sudo apt-get -f install
  # Updating the system.
  sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove

  echo $'\n Stremio Studio was installed with success.'
fi

