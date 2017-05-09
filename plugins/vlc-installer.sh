#!/bin/bash
# Script written by: JM.
# This script install VLC Video player.

if command -v vlc >/dev/null; then
  echo $'\n Vlc is already installed.'
else
  # Installing VLC.
  sudo apt-get update && sudo apt-get install vlc

  echo $'\n Vlc was installed with success.'
fi

