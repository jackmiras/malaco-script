#!/bin/bash
# Script written by: Jack Miras.
# This script install VLC Video player.

# Adding VLC repositories
sudo add-apt-repository ppa:videolan/stable-daily
sudo add-apt-repository ppa:nicola-onorata/desktop

# Installing VLC.
sudo apt-get update && sudo apt-get install vlc

