#!/bin/bash
# Script written by: JM.
# This script install Unity Tweak Tool.

if command -v unity-tweak-tool >/dev/null; then
  echo 'Unity Tweak tool is already installed.'
else
  # Installing Unity Tweek Tool
  sudo apt-get update && sudo apt-get install unity-tweak-tool
fi

