#!/bin/bash
# Script written by: JM.
# This script install VLC Video player.

if command -v vlc >/dev/null; then
  echo $'\n Vlc is already installed.'
else
  # Adding VLC repositories
  sudo add-apt-repository ppa:videolan/stable-daily
  sudo add-apt-repository ppa:nicola-onorata/desktop

  # Installing VLC.
  sudo apt-get update && sudo apt-get install vlc

  echo $'\n Vlc was installed with success.'
fi

