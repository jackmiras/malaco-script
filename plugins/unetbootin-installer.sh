#!/bin/bash
# Script written by: Jack Miras.
# This script install Unetbootin.

# Adding Unetbootin repository.
sudo add-apt-repository ppa:gezakovacs/ppa
	
# Installing Unetbootin
sudo apt-get update && sudo apt-get install unetbootin
