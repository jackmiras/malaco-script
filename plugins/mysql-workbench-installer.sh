#!/bin/bash
# Script written by: JM.
# This script install MySQL Workbench.

if command -v mysql-workbench >/dev/null; then
  echo $'\n MySQL-Workbench is already installed.\n'
else
  # Downloading MySQL Workbench.
  wget -P $HOME/Downloads/ http://cdn.mysql.com//Downloads/MySQLGUITools/mysql-workbench-community-6.3.8-1ubu1604-amd64.deb
  # Installing MySQL Workbench.
  sudo dpkg -i $HOME/Downloads/mysql-workbench-community-6.3.8-1ubu1604-amd64.deb && sudo apt-get -f install
  # Removing mysql-workbench-community-6.3.8-1ubu1604-amd64.deb.
  rm -rf $HOME/Downloads/mysql-workbench-community-6.3.8-1ubu1604-amd64.deb
  # Installing dependencies.
  sudo apt-get -f install
  # Updating Ubuntu dependencies.
  sudo apt-get update && sudo apt-get upgrade
  echo $'\n MySQL-Workbench was installed with success!\n'
fi
