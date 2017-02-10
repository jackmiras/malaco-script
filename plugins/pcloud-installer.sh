#!/bin/bash
# Script written by: JM.
# This script install pCloud.

if command -v psyncgui >/dev/null; then
  echo 'pCloud is already installed.'
else
  # Downloading pCloud to the Download folder.
  wget -P $HOME/Downloads/ https://c132.pcloud.com/dHZ8IsmSZJvU4uZZZn1ij67ZHkZZHaRZkZ5LUXZ1nYdW4mJmNVDaaGfw8OCvLtCBaP7/pCloud_Linux_amd64_3.1.1.deb

  # Installing pCloud.
  sudo dpkg -i $HOME/Downloads/pCloud_Linux_amd64_3.1.1.deb && sudo apt-get -f install

  # Updating Ubuntu dependencies and softwares.
  sudo apt-get update && sudo apt-get upgrade

  # Removing pCloud_Linux_amd64_3.1.1.deb file from Download folder.
  rm -rf $HOME/Downloads/pCloud_Linux_amd64_3.1.1.deb
fi

