#!/bin/bash
# Script written by: Jack Miras.
# This script install GIMP image editor.

# Setting up GIMP ppa.
sudo add-apt-repository ppa:otto-kesselgulasch/gimp && sudo apt-get update

# Installing Gimp.
sudo apt-get install gimp
