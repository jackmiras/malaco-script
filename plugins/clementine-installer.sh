#!/bin/bash
# Script written by: JM.
# This script install Clementine player.

if command -v clementine >/dev/null; then
  echo $'\n Clementine is already installed.'
else
  # Adding Clementaine repository.
  sudo add-apt-repository ppa:me-davidsansome/clementine && sudo apt-get update

  # Installing Clementine.
  sudo apt-get install clementine

  echo $'\n Clementine was installed with success.'
fi

