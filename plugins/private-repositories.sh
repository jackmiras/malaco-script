#!/bin/bash

# Script written by: JM.
# This script create the "Project" folder and download all my repositories fom
# Github and GitLab.

# Getting repositories from GitHub and GitLab.
if [ ! -d "$HOME/Projects/" ]; then
  mkdir $HOME/Projects/
else
  echo $'\n The Projects folder already exists.'
fi

# Accessing the directory to download the repositories.
cd $HOME/Projects/

################################################################################
#                           GitHub repositories                                #
################################################################################
if [ ! -d "$HOME/Projects/android-studio-config" ]; then
  git clone git@github.com:jackmiras/android-studio-config.git
else
  echo $'\n The android-studio-config folder already exists.'
fi

if [ ! -d "$HOME/Projects/intellij-idea-config" ]; then
  git clone git@github.com:jackmiras/intellij-idea-config.git
else
  echo $'\n The intellij-idea-config folder already exists.'
fi

if [ ! -d "$HOME/Projects/malaco-script" ]; then
  git clone git@github.com:jackmiras/malaco-script.git
else
  echo $'\n The malaco-script folder already exists.'
fi

if [ ! -d "$HOME/Projects/neovim-config" ]; then
  git clone git@github.com:jackmiras/neovim-config.git
else
  echo $'\n The vim-config folder already exists.'
fi

if [ ! -d "$HOME/Projects/placeholderj" ]; then
  git clone git@github.com:jackmiras/placeholderj.git
else
  echo $'\n The placeholderj folder already exists.'
fi

if [ ! -d "$HOME/Projects/logger" ]; then
  git clone git@github.com:jackmiras/logger.git
else
  echo $'\n The logger folder already exists.'
fi

if [ ! -d "$HOME/Projects/sublime-text-3-config" ]; then
  git clone git@github.com:jackmiras/sublime-text-3-config.git
else
  echo $'\n The sublime-text-3-config folder already exists.'
fi

if [ ! -d "$HOME/Projects/zshrc-config" ]; then
  git clone git@github.com:jackmiras/zshrc-config.git
else
  echo $'\n The zshrc-config folder already exists.'
fi

if [ ! -d "$HOME/Projects/orcamento-android" ]; then
  git clone https://github.com/orcamentopessoal/orcamento-android
else
  echo $'\n The orcamento-android folder already exists.'
fi

if [ ! -d "$HOME/Projects/orcamento-api" ]; then
  git clone git@github.com:orcamentopessoal/orcamento-api.git
else
  echo $'\n The orcamento-api folder already exists.'
fi

################################################################################
#                           GitLab repositories                                #
################################################################################
if [ ! -d "$HOME/Projects/inteli-api-kotlin" ]; then
  git clone git@gitlab.com:intelitechnology/inteli-api-kotlin.git
else
  echo $'\n The inteli-api folder already exists.'
fi

if [ ! -d "$HOME/Projects/inteli-plataforma-arduino" ]; then
  git clone git@gitlab.com:intelitechnology/inteli-plataforma-arduino.git
else
  echo $'\n The inteli-plataforma folder already exists.'
fi

if [ ! -d "$HOME/Projects/inteli-central-arduino" ]; then
  git clone git@gitlab.com:intelitechnology/inteli-central-arduino.git
else
  echo $'\n The inteli-plataforma folder already exists.'
fi

if [ ! -d "$HOME/Projects/inteli-site-php" ]; then
  git clone git@gitlab.com:intelitechnology/inteli-site-php.git
else
  echo $'\n The inteli-site folder aldready exists.'
fi

if [ ! -d "$HOME/Projects/desafio-android" ]; then
  git clone git@gitlab.com:jackmiras/desafio-android.git
else
  echo $'\n The desafio-android folder already exits.'
fi

if [ ! -d "$HOME/Projects/series-track-android" ]; then
  git clone git@gitlab.com:jackmiras/series-track-android.git
else
  echo $'\n The series-track-android folder already exists.'
fi

if [ ! -d "$HOME/Projects/nubank-assignment-android" ]; then
  git clone git@gitlab.com:jackmiras/nubank-assignment-android.git
else
  echo $'\n The nubank-assignment-android folder already exists.'
fi

if [ ! -d "$HOME/Projects/qfome-android" ]; then
  git clone git@gitlab.com:qfome/qfome-android.git
else
  echo $'\n The qfome-android folder already exists.'
fi

if [ ! -d "$HOME/Projects/qfome-web" ]; then
  git clone git@gitlab.com:qfome/qfome-web.git
else
  echo $'\n The qfome-web folder already exists.'
fi

