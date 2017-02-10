#!/bin/bash
# Script written by: JM.
# This script install Dropbox.

if command -v dropbox >/dev/null; then
  echo 'Dropbox is already installed'
else
  # Download dropbox_2015.10.28_amd64.deb into the Download folder.
  wget -P $HOME/Downloads/ https://linux.dropbox.com/packages/ubuntu/dropbox_2015.10.28_amd64.deb

  # Installing Dropbox.
  sudo dpkg -i $HOME/Downloads/dropbox_2015.10.28_amd64.deb

  # Removing dropbox_2015.10.28_amd64.deb from Download folder.
  rm -rf $HOME/Downloads/dropbox_2015.10.28_amd64.deb

  # Installing Dropbox dependencies.
  sudo apt-get -f install

  # Updating Ubuntu dependencies.
  sudo apt-get update && sudo apt-get upgrade
fi
