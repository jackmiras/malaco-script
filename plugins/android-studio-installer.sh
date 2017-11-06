#!/bin/bash
# Script written by: JM.
# This script install and configure Android Studio IDE.

if [ -d "/opt/android-studio/" ]; then
  echo $'\n Android Studio is already installed.'
else
  # Installing Android Studio dependencies.
  sudo apt-get install lib32z1 lib32ncurses5 lib32stdc++6

  # Downloading Android Studio.
  wget -P $HOME/Downloads/ https://dl.google.com/dl/android/studio/ide-zips/3.0.0.18/android-studio-ide-171.4408382-linux.zip

  # Extracting Android Studio into Download folder.
  unzip $HOME/Downloads/android-studio-ide-171.4408382-linux.zip -d $HOME/Downloads/

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

  # Moving the jetbrains-studio.destop to the usr/share/applications folder.
  sudo mv $HOME/jetbrains-studio.desktop /usr/share/applications/

  # Executing Android Studio to generate the .AndroidStudio folder.
  sh /opt/android-studio/bin/studio.sh
  if [ ! -d "$HOME/Projects/android-studio-config" ]; then
    # Downloading custom configs of Android Studio from Github.
    cd $HOME/Projects && git clone git@github.com:jackmiras/android-studio-config.git && cd $HOME
  fi

  if [ -d "$HOME/Projects/android-studio-config" ]; then
    # Removing current configurations of Android Studio.
	  rm -rf $HOME/.AndroidStudio3.0/config/codestyles
    rm -rf $HOME/.AndroidStudio3.0/config/colors
    rm -rf $HOME/.AndroidStudio3.0/config/options/androidStudioFirstRun.xml
    rm -rf $HOME/.AndroidStudio3.0/config/options/colors.scheme.xml
    rm -rf $HOME/.AndroidStudio3.0/config/options/debugger.xml
    rm -rf $HOME/.AndroidStudio3.0/config/options/debugger.renderers.xml
    rm -rf $HOME/.AndroidStudio3.0/config/options/editor.codeinsight.xml
    rm -rf $HOME/.AndroidStudio3.0/config/options/editor.xml
    rm -rf $HOME/.AndroidStudio3.0/config/options/ide.general.xml
    rm -rf $HOME/.AndroidStudio3.0/config/options/jdk.table.xml
    rm -rf $HOME/.AndroidStudio3.0/config/options/laf.xml
    rm -rf $HOME/.AndroidStudio3.0/config/options/path.macros.xml
    rm -rf $HOME/.AndroidStudio3.0/config/options/project.default.xml
    rm -rf $HOME/.AndroidStudio3.0/config/options/ui.lnf.xml
    rm -rf $HOME/.AndroidStudio3.0/config/templates
    rm -rf $HOME/.AndroidStudio3.0/config/plugins

	  # Creating a symbolic link of the new Android Studio configurations into .AndroidStudio folder.
	  ln -s $HOME/Projects/android-studio-config/codestyles/ $HOME/.AndroidStudio3.0/config/
    ln -s $HOME/Projects/android-studio-config/colors/ $HOME/.AndroidStudio3.0/config/
    ln -s $HOME/Projects/android-studio-config/options/androidStudioFirstRun.xml $HOME/.AndroidStudio3.0/config/options/
    ln -s $HOME/Projects/android-studio-config/options/colors.scheme.xml $HOME/.AndroidStudio3.0/config/options/
    ln -s $HOME/Projects/android-studio-config/options/debugger.xml $HOME/.AndroidStudio3.0/config/options/
    ln -s $HOME/Projects/android-studio-config/options/debugger.renderers.xml $HOME/.AndroidStudio3.0/config/options/
    ln -s $HOME/Projects/android-studio-config/options/editor.codeinsight.xml $HOME/.AndroidStudio3.0/config/options/
    ln -s $HOME/Projects/android-studio-config/options/editor.xml $HOME/.AndroidStudio3.0/config/options/
    ln -s $HOME/Projects/android-studio-config/options/ide.general.xml $HOME/.AndroidStudio3.0/config/options/
    ln -s $HOME/Projects/android-studio-config/options/jdk.table.xml $HOME/.AndroidStudio3.0/config/options/
    ln -s $HOME/Projects/android-studio-config/options/laf.xml $HOME/.AndroidStudio3.0/config/options/
    ln -s $HOME/Projects/android-studio-config/options/path.macros.xml $HOME/.AndroidStudio3.0/config/options/
    ln -s $HOME/Projects/android-studio-config/options/project.default.xml $HOME/.AndroidStudio3.0/config/options/
    ln -s $HOME/Projects/android-studio-config/options/ui.lnf.xml $HOME/.AndroidStudio3.0/config/options/
    ln -s $HOME/Projects/android-studio-config/templates/ $HOME/.AndroidStudio3.0/config/
    ln -s $HOME/Projects/android-studio-config/plugins/ $HOME/.AndroidStudio3.0/config/
	fi

  # Removing Android Studio zip file from Download folder.
  rm -rf $HOME/Downloads/android-studio-ide-171.4408382-linux.zip

  echo $'\n Android Studio has been successfully installed.'
fi

