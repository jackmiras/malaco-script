#!/bin/bash

# Script written by: JM.
# This script install git-flow.

if command -v git flow >/dev/null; then
	echo 'Git flow is already installed.'
else
	sudo apt-get update && sudo apt-get install -y git-flow
	echo $'\nGit flow was installed with succes.'
fi
