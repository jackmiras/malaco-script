#!/bin/bash

# Script written by: Jackson Miras.
# This script install git and configure git and also generate a ssh-key file.

# Installing git.                                                             
sudo apt-get update && sudo apt-get install -y git                            
	                                                                                 
# Configuring git.                                                            
git config --global color.ui true                                             
git config --global user.name "Jackson Miras"                                 
git config --global user.email "jackmiras@gmail.com"                          
	                                                                                 
# Generating ssh key.                                                         
ssh-keygen -t rsa -b 4096
