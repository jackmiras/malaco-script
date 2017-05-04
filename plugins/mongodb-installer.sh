#!/bin/bash
# Script written by: JM.
# This script install MongoDB.

if command -v mongo >/dev/null; then
  echo $'\n MongoDB is already installed.'
else

  # Adding key server to the system.
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6

  # Adding mongo repository to the source list.
  echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

  # Updating the system.
  sudo apt-get update

  # Installing MongoDB.
  sudo apt-get install -y mongodb-org

  # Starting MongoDB.
  sudo service mongod start

  echo $'\n MongoDB has been successfully installed.'
fi
