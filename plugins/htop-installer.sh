#!/bin/bash

#	Script written by: JM.
# This script install the htop software.

if command -v htop >/dev/null; then
	echo $'\n Htop is already installed.'
else
	#Installing Htop.
	sudo apt-get update && sudo apt-get install -y htop
	echo $'\n Htop was installed with success.'
fi
