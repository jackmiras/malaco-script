#!/bin/bash
# Script written by: JM.
# This script install Syspeek.

if command -v syspeek >/dev/null; then
  echo $'\n Syspeek is already installed.'
else
  # adding syspeek repository.
  sudo add-apt-repository ppa:nilarimogard/webupd8 && sudo apt-get update
  # installing syspeek.
  sudo apt-get install syspeek

  echo $'\n Syspeek was installed with success.'
fi

