#!/bin/bash

# Script written by: Jackson Miras.
# This script install and configure Ruby, RVM and Rails.

# Installing Ruby dependencies.
sudo apt-get update && sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

# Installing RVM.
sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm

# Installing Ruby.
rvm install 2.3.1
rvm use 2.3.1 --default

# Installing Bundler.
gem install bundler

# Installing Rails.
gem install rails -v 4.2.6

