#!/bin/bash
# Script written by: JM.
# This script install and configure PgAdmin3.

if command -v pgadmin3 >/dev/null; then
  echo $'\n Pgadmin3 is already installed.'
else
  # Installing PgAdmin3.
  sudo apt-get update && sudo apt-get install pgadmin3
  echo $'\n Pgadmin3 was installed with success.'
fi

