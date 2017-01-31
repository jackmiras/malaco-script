#!/bin/bash
# Script written by: Jack Miras.
# This script install Stremio video streaming.

# Downloading Google Play Music to the download folder.
wget -P $HOME/Downloads/ https://github-cloud.s3.amazonaws.com/releases/40008106/42e05a06-9491-11e6-885c-b9b3588ff9a0.deb?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAISTNZFOVBIJMK3TQ%2F20161031%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20161031T184825Z&X-Amz-Expires=300&X-Amz-Signature=0d1c4b89a84149d1e40dd61045ffec11e8e52ea531f8c94809e5c02f25a15c63&X-Amz-SignedHeaders=host&actor_id=5861625&response-content-disposition=attachment%3B%20filename%3Dgoogle-play-music-desktop-player_4.0.1_amd64.deb&response-content-type=application%2Foctet-stream

# Installing Google Play Music.
sudo dpkg -i $HOME/Downloads/google-play-music-desktop-player_4.0.1_amd64.deb && sudo apt-get -f install

# Updating Ubuntu dependencies and softwares.
sudo apt-get update && sudo apt-get upgrade

# Removing google-play-music-desktop-player_4.0.1_amd64.deb file.
rm -rf $HOME/Downloads/google-play-music-desktop-player_4.0.1_amd64.deb

