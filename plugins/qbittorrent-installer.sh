#!/bin/bash
# Script written by: JM.
# This script install qBittorrent.

if command -v qbittorrent >/dev/null; then
  echo 'qBittorrent is already installed.'
else
  # Adding qBittorrent repository.
  sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable

  # Installing qBittorrent.
  sudo apt-get update && sudo apt-get install qbittorrent
fi

