#!/bin/bash
# Script written by: JM.
# This script install Opera browser.

if command -v opera >/dev/null; then
  echo $'\n Opera is already installed.'
else
  # Downloading opera-stable_44.0.2510.1449_amd64.deb into the Download folder.
  wget -P $HOME/Downloads/ http://download3.operacdn.com/pub/opera/desktop/44.0.2510.1449/linux/opera-stable_44.0.2510.1449_amd64.deb

  # Installing the stable version Opera.
  sudo dpkg -i $HOME/Downloads/opera-stable_44.0.2510.1449_amd64.deb && sudo apt-get -f install

  # Updating Ubuntu dependencies.
  sudo ap-get update && sudo apt-get upgrade

  echo $'\n Opera was installed with success.'
fi

