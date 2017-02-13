#!/bin/bash

# Script written by: JM.
# This script install softwares that are resposible by unpack files.

########################### Installing p7zip ###################################
if command -v p7zip >/dev/null; then
  echo $'\n p7zip is already installed.\n'
else
  sudo apt-get -y install p7zip p7zip-full p7zip-rar
  echo $'\n p7zip was installed with success!\n'
fi

########################## Installing unrar ####################################
if command -v unrar >/dev/null; then
  echo $'\n Unrar is already installed.\n'
else
  sudo apt-get -y unrar
  echo $'\n Unrar was installed with success!\n'
fi

########################## Installing unrar ####################################
if command -v rar >/dev/null; then
  echo $'\n Rar is already installed.\n'
else
  sudo apt-get -y rar
  echo $'\n Rar was installed with success!\n'
fi

########################## Installing unace ####################################
if command -v unace >/dev/null; then
  echo $'\n Unace-nonfree is already installed.\n'
else
  sudo apt-get -y unace-nonfree
  echo $'\n Unace-nonfree was installed with success!\n'
fi

