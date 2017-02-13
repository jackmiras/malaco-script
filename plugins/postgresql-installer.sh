#!/bin/bash
# Script written by: JM.
# This script install and configure PostgreSQL.

if command -v psql >/dev/null; then
  echo $'\n PostgreeSQL is already installed.\n'
else
  # Adding PostgreSQL on Ubuntu souces.list.
  sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
  # Downloading PostgreSQL key to add as key of system repositories.
  wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
  # Installing PostgreSQL.
  sudo apt-get update && sudo apt-get install postgresql-common && sudo apt-get install postgresql-9.5 libpq-dev
  echo $'\n PostgreeSQL was installed with success!\n'
fi
