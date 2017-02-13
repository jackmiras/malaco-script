#!/bin/bash
# Script written by: JM.
# This script install Unity Tweak Tool.

if command -v unity-tweak-tool >/dev/null; then
  echo $'\n Unity Tweak tool is already installed.\n'
else
  # Installing Unity Tweek Tool
  sudo apt-get update && sudo apt-get install unity-tweak-tool

  echo $'\n Unity Tweak tool was installed with success.\n'
fi

