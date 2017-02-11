#!/bin/bash
# Script written by: JM.
# This script install Clementine player.

if command -v clementine >/dev/null; then
  echo 'Clementine is already installed.'
else
  # Adding Clementaine repository.
	sudo add-apt-repository ppa:me-davidsansome/clementine && sudo apt-get update
	
  # Installing Clementine.
	sudo apt-get install clementine
fi

