#!/bin/bash
# Script written by: JM.

if command -v java >/dev/null; then
  echo 'Java 8 is already installed.'
else
  # Adding Oracle Java 8 repository.
  sudo add-apt-repository -y ppa:webupd8team/java && sudo apt-get update
  # Installing Oracle Java 8.
  sudo apt-get -y install oracle-java8-installer
  # Setting Oracle Java 8 as default JDK.
  sudo update-java-alternatives -s java-8-oracle && sudo apt-get -y install oracle-java8-set-default
  # Removing Open JDK 7.
  sudo apt-get -y purge openjdk-7-jre openjdk-7-jre-lib openjdk-7-jre-headless

  echo $'\nJava 8 was installed with success!'
fi
