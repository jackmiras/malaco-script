#!bin/bash

# Script written by: Jackson Miras.
#
# This script install git and configure git and also generate a ssh-key file.

if which git >dev/null; then
	# Installing git.                                                             
	sudo apt-get update && sudo apt-get install -y git                            
	                                                                                 
	# Configuring git.                                                            
	git config --global color.ui true                                             
	git config --global user.name "Jackson Miras"                                 
	git config --global user.email "jackmiras@gmail.com"                          
	                                                                                 
	# Generating ssh key.                                                         
	ssh-keygen -t rsa -b 4096
else
	echo "Git is already installed... To this script take any effect you should uninstall git."
fi
