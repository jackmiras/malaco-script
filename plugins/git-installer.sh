#!/bin/bash

# Script written by: JM.
# This script install git and configure git and also generate a ssh-key file.

if command -v git >/dev/null; then
	echo $'\n Git is already installed.'
else
	# Installing git.                                                             
	sudo apt-get update && sudo apt-get install -y git                            

	# Configuring git.                                                            
	git config --global color.ui true                                             
	git config --global user.name "Jackson Miras"                                 
	git config --global user.email "jackmiras@gmail.com"

	# Generating ssh key.                                                         
	ssh-keygen -t rsa -b 4096
	echo $'\n Git was installed with success.'
fi
