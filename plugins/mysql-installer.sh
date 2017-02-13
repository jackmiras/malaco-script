#!/bin/bash
# Script written by: Jackson Miras.
# This script install and configure Ruby, RVM and Rails.

if command -v mysql >/dev/null; then
  echo $'\n MySQL is already installed.\n'
else
  # Installing MySQL.
  sudo apt-get update && sudo apt-get install mysql-server mysql-client libmysqlclient-dev
  echo $'\n Mysql was installed with success!\n'
fi
