#!/bin/bash
# Script written by: JM.
# This script install Inkscape image editor.

if command -v inkscape >/dev/null; the
  echo 'Inkscape is already installed.'
else
  # Installing Inkscape.
  sudo apt-get update && sudo apt-get -y install inkscape
fi

