#!/bin/bash
# Script written by: JM.
# This script install Robomongo.

if [ -d "/opt/robomongo/" ]; then
  echo $'\n Robomongo is already installed.'
else
  # Downloading Robomongo.
  wget -P $HOME/Downloads/ https://download.robomongo.org/1.0.0/linux/robomongo-1.0.0-linux-x86_64-89f24ea.tar.gz 
  # Extracting android-studio-ide-145.3360264-linux.zip into Download folder.
  tar zxvf $HOME/Downloads/robomongo-1.0.0-linux-x86_64-89f24ea.tar.gz -C $HOME/Downloads/
  # Removing robomongo-1.0.0-linux-x86_64-89f24ea.tar.gz zip file from Download folder.
  rm -rf $HOME/Downloads/robomongo-1.0.0-linux-x86_64-89f24ea.tar.gz
  # Renaming robomongo* folder to a simpler name.
  mv $HOME/Downloads/robomongo* $HOME/Downloads/robomongo
  # Moving robomongo folder from Download to the opt folder.
  sudo mv $HOME/Downloads/robomongo /opt/

  # Setting up the Robomongo launcher on Ubuntu dash.
  echo "[Desktop Entry]" >> $HOME/robomongo.desktop
  echo "Version=0.9.0" >> $HOME/robomongo.desktop
  echo "Type=Application" >> $HOME/robomongo.desktop
  echo "Name=Robomongo" >> $HOME/robomongo.desktop
  echo "Icon=/opt/robomongo/bin/robomongo.png" >> $HOME/robomongo.desktop
  echo "Exec="/opt/robomongo/bin/robomongo" %f" >> $HOME/robomongo.desktop
  echo "Comment=Develop with pleasure!" >> $HOME/robomongo.desktop
  echo "Categories=Database" >> $HOME/robomongo.desktop
  echo "Terminal=false" >> $HOME/robomongo.desktop
	
  # Moving the robomongo.desktop to the usr/share/applications folder.
  sudo mv $HOME/robomongo.desktop /usr/share/applications/

  echo $'\n Robomongo has been successfully installed.'
fi
