#!/bin/bash

#	Script written by: JM.
# This script install the htop software.

if command -v htop >/dev/null; then
	echo 'Htop is already installed.'
else
	#Installing Htop.
	sudo apt-get update && sudo apt-get install -y htop
	echo $'\nHtop was installed with success.'
fi
