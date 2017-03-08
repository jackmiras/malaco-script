#!/bin/bash
# Script written by: JM.
# This script install and configure Android Studio IDE.

if [ -d "/opt/android-studio/" ]; then
  echo $'\n Android Studio is already installed.'
else
  # Installing Android Studio dependencies.
  sudo apt-get install lib32z1 lib32ncurses5 lib32stdc++6

  # Downloading Android Studio.
  wget -P $HOME/Downloads/ https://dl.google.com/dl/android/studio/ide-zips/2.3.0.8/android-studio-ide-162.3764568-linux.zip

  # Extracting android-studio-ide-145.3360264-linux.zip into Download folder.
  unzip $HOME/Downloads/android-studio-ide-162.3764568-linux.zip -d $HOME/Downloads/

  # Moving android-studio folder from Download to the opt folder.
  sudo mv $HOME/Downloads/android-studio /opt/

  # Setting up the Android Studio launcher on Ubuntu dash.
  echo "[Desktop Entry]" >> $HOME/jetbrains-studio.desktop
  echo "Version=1.0" >> $HOME/jetbrains-studio.desktop
  echo "Type=Application" >> $HOME/jetbrains-studio.desktop
  echo "Name=Android Studio" >> $HOME/jetbrains-studio.desktop
  echo "Icon=/opt/android-studio/bin/studio.png" >> $HOME/jetbrains-studio.desktop
  echo "Exec="/opt/android-studio/bin/studio.sh" %f" >> $HOME/jetbrains-studio.desktop
  echo "Comment=Develop with pleasure!" >> $HOME/jetbrains-studio.desktop
  echo "Categories=Development;IDE;" >> $HOME/jetbrains-studio.desktop
  echo "Terminal=false" >> $HOME/jetbrains-studio.desktop
  echo "StartupWMClass=jetbrains-studio" >> $HOME/jetbrains-studio.desktop
	
  # Moving the jetbrains-studio.destop to the usr/share/applications folder.
  sudo mv $HOME/jetbrains-studio.desktop /usr/share/applications/

  # Executing Android Studio to generate the .AndroidStudio folder.
  sh /opt/android-studio/bin/studio.sh
  if [ ! -d "$HOME/Projects/android-studio-config" ]; then
	  # Downloading custom configs of Android Studio from Github.
	  cd $HOME/Projects && git clone git@github.com:jackmiras/android-studio-config.git && cd $HOME
  fi

  # Removing current configurations of Android Studio.
  rm -rf $HOME/.AndroidStudio2.3/config/codestyles
  rm -rf $HOME/.AndroidStudio2.3/config/colors
  rm -rf $HOME/.AndroidStudio2.3/config/plugins
  rm -rf $HOME/.AndroidStudio2.3/config/inspection
  rm -rf $HOME/.AndroidStudio2.3/config/options
  # Creating a symbolic link of the new Android Studio configurations into .AndroidStudio folder.
  ln -s $HOME/Projects/android-studio-config/* $HOME/.AndroidStudio2.3/config/
  # Removing Android Studio zip file from Download folder.
  rm -rf $HOME/Downloads/android-studio-ide-162.3764568-linux.zip

  echo $'\n Android Studio was installed with success.'
fi

