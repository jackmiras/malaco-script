#!/bin/bash
# Script written by: JM.
# This script install Google Chrome browser.

if command -v google-chrome >/dev/null; then
  echo $'\n Google chrome is already install.'
else
  # Downloading Google Chrome key to add as key of system repositories.
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

  # Adding Google Chrome to the source list.
  sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

  # Installing the stable version of Google Chrome.
  sudo apt-get update && sudo apt-get install -y google-chrome-stable && sudo apt-get -f install
  echo $'\n Google chrome was installed with success.'
fi

