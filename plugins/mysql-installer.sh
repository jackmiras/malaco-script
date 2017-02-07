#!/bin/bash
# Script written by: Jackson Miras.
# This script install and configure Ruby, RVM and Rails.

if command -v mysql >/dev/null; then
  echo 'MySQL is already installed.'
else
  # Installing MySQL.
  sudo apt-get update && sudo apt-get install mysql-server mysql-client libmysqlclient-dev
  echo $'\nMysql was installed with success!'
fi
