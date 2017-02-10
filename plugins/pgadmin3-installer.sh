#!/bin/bash
# Script written by: Jackson Miras.
# This script install and configure PgAdmin3.

if command -v pgadmin3 >/dev/null; then
  echo 'PostgreeSQL is already installed.'
else
  # Installing PgAdmin3.
  sudo apt-get update && sudo apt-get install pgadmin3
fi

