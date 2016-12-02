#!/bin/bash
# Script written by: Jackson Miras.

# Adding Oracle Java 8 repository.
sudo add-apt-repository -y ppa:webupd8team/java && sudo apt-get update

# Installing Oracle Java 8.
sudo apt-get -y install oracle-java8-installer

# Setting Oracle Java 8 as default JDK.
sudo update-java-alternatives -s java-8-oracle && sudo apt-get -y install oracle-java8-set-default

# Removing Open JDK 7.
sudo apt-get -y purge openjdk-7-jre openjdk-7-jre-lib openjdk-7-jre-headless
