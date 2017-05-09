#!/bin/bash
# Script written by: JM.
# This script install Google Chrome browser.

if command -v google-chrome >/dev/null; then
  echo $'\n Google chrome is already install.'
else
  # Downloading Google Chrome key to add as key of system repositories.
  wget -P $HOME/Downloads https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

  # Installing the stable version of Google Chrome.
  sudo dpkg -i $HOME/Downloads/google-chrome-stable_current_amd64.deb
  sudo apt-get install -f
  
  # Updating Ubuntu dependencies.
  sudo apt-get update && sudo apt-get upgrade

  # Installing related dependencies.
  sudo apt --fix-broken install

  # Removing google-chrome-stable_current_amd64.deb from Downloads folder.
  rm -rf $HOME/Downloads/google-chrome-stable_current_amd64.deb

  echo $'\n Google chrome was installed with success.'
fi

