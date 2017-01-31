#!/bin/bash
# Script written by: Jack Miras.
# This script install Slack.

# Downloading Slack.
wget -P $HOME/Downloads/ https://downloads.slack-edge.com/linux_releases/slack-desktop-2.2.1-amd64.deb

# Installing Slack.
sudo dpkg -i $HOME/Downloads/slack-desktop-2.2.1-amd64.deb

# Installing Slack dependencies.
sudo apt-get -f install

# Removing slack-desktop-2.2.1-amd64.deb file.
rm -rf $HOME/Downloads/slack-desktop-2.2.1-amd64.deb

# Updating Ubuntu softwares and dependencies.
sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove
