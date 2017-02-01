#!/bin/bash

# Script written by: JM.
# This script create the "Project" folder and download all my repositories fom
# Github and Bitbucket.

# Getting repositories from GitHub and Bitbucket.
if [ ! -d "$HOME/Projects/" ]; then
	mkdir $HOME/Projects/
fi

# Accessing the directory to download the repositories.
cd $HOME/Projects/

# Cloning the repositories.
if [ ! -d "$HOME/Projects/android-studio-config" ]; then
	git clone git@github.com:jackmiras/android-studio-config.git
fi

if [ ! -d "$HOME/Projects/malaco-script" ]; then
	git clone git@github.com:jackmiras/malaco-script.git
fi


if [ ! -d "$HOME/Projects/vim-config" ]; then
	git clone git@github.com:jackmiras/vim-config.git
fi

if [ ! -d "$HOME/Projects/placeholderj" ]; then
	git clone git@github.com:jackmiras/placeholderj.git
fi

if [ ! -d "$HOME/Projects/logger" ]; then
	git clone git@github.com:jackmiras/logger.git
fi

if [ ! -d "$HOME/Projects/sublime-text-3-config" ]; then
	git clone git@github.com:jackmiras/sublime-text-3-config.git
fi

if [ ! -d "$HOME/Projects/sublime-text-3-config" ]; then
	git clone git@github.com:jackmiras/zshrc-config.git
fi

if [ ! -d "$HOME/Projects/AntennaPod" ]; then
	git clone git@github.com:jackmiras/AntennaPod.git
fi

if [ ! -d "$HOME/Projects/desafio-android" ]; then
	git clone git@bitbucket.org:JacksonFlorentino/desafio-android.git
fi

if [ ! -d "$HOME/Projects/series-track-android" ]; then
	git clone git@bitbucket.org:JacksonFlorentino/series-track-android.git
fi

if [ ! -d "$HOME/Projects/orcamento-android" ]; then
	git clone git@bitbucket.org:personalorcs/orcamento-android.git
fi

if [ ! -d "$HOME/Projects/orcamento-api" ]; then
	git clone git@bitbucket.org:personalorcs/orcamento-api.git
fi

if [ ! -d "$HOME/Projects/nubank-assignment-android" ]; then
	git clone git@bitbucket.org:JacksonFlorentino/nubank-assignment-android.git
fi
