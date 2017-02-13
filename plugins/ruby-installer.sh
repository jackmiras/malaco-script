#!/bin/bash

# Script written by: JM.
# This script install and configure Ruby, RVM and Rails.

# Installing Ruby dependencies.
sudo apt-get update && sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

if command -v rvm >/dev/null; then
  echo $'\n RVM is already installed\n'
else
  # Installing RVM.
  sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
  gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
  curl -sSL https://get.rvm.io | bash -s stable
  source ~/.rvm/scripts/rvm
  echo $'\n RVM was installed with succes!\n'
fi

if command -v ruby >/dev/null; then
  echo $'\n Ruby is already installed.\n'
else
  # Installing Ruby.
  rvm install 2.3.1
  rvm use 2.3.1 --default
  echo $'\n Ruby was installed with succes\n'
fi

if command -v bundler >/dev/null; then
  echo $'\n Bundler is already installed.\n'
else
  # Installing Bundler.
  gem install bundler
  echo $'\n Bundler was installed with succes!\n'
fi

if command -v rails >/dev/null; then
  echo $'\n Rails is already installed.\n'
else
  # Installing Rails.
  gem install rails -v 4.2.6
  echo $'\n Rails was installed with success!\n'
fi

