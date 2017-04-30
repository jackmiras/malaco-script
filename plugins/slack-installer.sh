#!/bin/bash
# Script written by: JM.
# This script install Slack.

if command -v slack >/dev/null; then
  echo $'\n Slack is already installed.'
else
  # Downloading Slack.
  wget -P $HOME/Downloads/ https://downloads.slack-edge.com/linux_releases/slack-desktop-2.5.2-amd64.deb

  # Installing Slack.
  sudo dpkg -i $HOME/Downloads/slack-desktop-2.5.2-amd64.deb && sudo apt-get -f install

  # Removing slack-desktop-2.5.2-amd64.deb file.
  rm -rf $HOME/Downloads/slack-desktop-2.5.2-amd64.deb

  # Updating Ubuntu softwares and dependencies.
  sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove

  echo $'\n Slack was installed with success.'
fi

