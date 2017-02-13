#!/bin/bash
# Script written by: JM.
# This script install Vocal podcast player.

if command -v vocal >/dev/null; then
  echo $'\n Vocal is already installed.\n'
else
  # Downloading Vocal.
  wget -P $HOME/Downloads/ http://ufpr.dl.sourceforge.net/project/vocalpodcast/vocal_1.0_amd64.deb

  # Downloading Vocal dependencies.
  wget -P $HOME/Downloads/ https://launchpadlibrarian.net/201478397/libgranite2_0.3.0+r850+pkg80~ubuntu0.3.1_amd64.deb
  wget -P $HOME/Downloads/ https://launchpadlibrarian.net/201478393/libgranite-common_0.3.0+r850+pkg80~ubuntu0.3.1_all.deb

  # Installing Vocal dependencies.
  sudo dpkg -i $HOME/Downloads/libgranite2_0.3.0+r850+pkg80~ubuntu0.3.1_amd64.deb && sudo apt-get -f install
  sudo dpkg -i $HOME/Downloads/libgranite-common_0.3.0+r850+pkg80~ubuntu0.3.1_all.deb && sudo apt-get -f install

  # Installing Vocal.
  sudo dpkg -i $HOME/Downloads/vocal_1.0_amd64.deb && sudo apt-get -f install

  # Removing Vocal and his dependencies files.
  rm -rf $HOME/Downloads/vocal_1.0_amd64.deb
  rm -rf $HOME/Downloads/libgranite2_0.3.0+r850+pkg80~ubuntu0.3.1_amd64.deb
  rm -rf $HOME/Downloads/libgranite-common_0.3.0+r850+pkg80~ubuntu0.3.1_all.deb

  # Updating Ubuntu dependencies.
  sudo apt-get update && sudo apt-get upgrade

  echo $'\n Vocal was installed with success.\n'
fi

