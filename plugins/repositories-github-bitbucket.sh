#!/bin/bash

# Script written by: JM.
# This script create the "Project" folder and download all my repositories fom
# Github and Bitbucket.

# Getting repositories from GitHub and Bitbucket.
if [ ! -d "$HOME/Projects/" ]; then
	mkdir $HOME/Projects/
else
  echo $'\n Projects folder already exists.'
fi

# Accessing the directory to download the repositories.
cd $HOME/Projects/

# Cloning the repositories.
if [ ! -d "$HOME/Projects/android-studio-config" ]; then
	git clone git@github.com:jackmiras/android-studio-config.git
else
  echo $'\n android-studio-config folder already exists.'
fi

if [ ! -d "$HOME/Projects/malaco-script" ]; then
	git clone git@github.com:jackmiras/malaco-script.git
else
  echo $'\n malaco-script folder already exists.'
fi

if [ ! -d "$HOME/Projects/neovim-config" ]; then
  git clone git@github.com:jackmiras/neovim-config.git
else
  echo $'\n vim-config folder already exists.'
fi

if [ ! -d "$HOME/Projects/placeholderj" ]; then
	git clone git@github.com:jackmiras/placeholderj.git
else
  echo $'\n placeholderj folder already exists.'
fi

if [ ! -d "$HOME/Projects/logger" ]; then
	git clone git@github.com:jackmiras/logger.git
else
  echo $'\n logger folder already exists.'
fi

if [ ! -d "$HOME/Projects/sublime-text-3-config" ]; then
	git clone git@github.com:jackmiras/sublime-text-3-config.git
else
  echo $'\n sublime-text-3-config folder already exists.'
fi

if [ ! -d "$HOME/Projects/sublime-text-3-config" ]; then
	git clone git@github.com:jackmiras/zshrc-config.git
else
  echo $'\n sublime-text-3-config folder already exists.'
fi

if [ ! -d "$HOME/Projects/AntennaPod" ]; then
	git clone git@github.com:jackmiras/AntennaPod.git
else
  echo $'\n AntennaPod folder already exists.'
fi

if [ ! -d "$HOME/Projects/desafio-android" ]; then
	git clone git@bitbucket.org:JacksonFlorentino/desafio-android.git
else
  echo $'\n desafio-android folder already exists.'
fi

if [ ! -d "$HOME/Projects/series-track-android" ]; then
	git clone git@bitbucket.org:JacksonFlorentino/series-track-android.git
else
  echo $'\n series-track-android folder already exists.'
fi

if [ ! -d "$HOME/Projects/orcamento-android" ]; then
	git clone git@bitbucket.org:personalorcs/orcamento-android.git
else
  echo $'\n orcamento-android folder already exists.'
fi

if [ ! -d "$HOME/Projects/orcamento-api" ]; then
	git clone git@bitbucket.org:personalorcs/orcamento-api.git
else
  echo $'\n orcamento-api folder already exists.'
fi

if [ ! -d "$HOME/Projects/nubank-assignment-android" ]; then
	git clone git@bitbucket.org:JacksonFlorentino/nubank-assignment-android.git
else
  echo $'\n nubank-assignment-android folder already exists.'
fi

