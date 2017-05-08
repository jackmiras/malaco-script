#!/bin/bash
# Script written by: JM.
# This script install Stremio video streaming.

if [ -d "/opt/stremio/" ]; then
  echo $'\n Stremio Studio is already installed.'
else
  # Downloading Stremio
  wget -P $HOME/Downloads/ http://dl.strem.io/Stremio3.6.5.linux.tar.gz
  # Creating stremio folder.
  mkdir $HOME/Downloads/stremio
  # Extracting the Stremio3.6.5.linux.tar.gz files into stremio folder.
  tar -vzxf $HOME/Downloads/Stremio3.6.5.linux.tar.gz -C $HOME/Downloads/stremio
  # Moving stremio folder from Download to opt folder.
  sudo mv $HOME/Downloads/stremio /opt/
  # Downloading the image icon.
  sudo wget -P /opt/stremio/ http://www.strem.io/3.0/stremio-white-small.png
  # Renaming the image icon.
  sudo mv /opt/stremio/stremio-white-small.png /opt/stremio/icon.png

  # Setting up Stremio launcher on Ubuntu dash.
  echo "[Desktop Entry]" >> $HOME/stremio.desktop
  echo "Version=3.6.5" >> $HOME/stremio.desktop
  echo "Type=Application" >> $HOME/stremio.desktop
  echo "Name=Stremio" >> $HOME/stremio.desktop
  echo "Icon=/opt/stremio/icon.png" >> $HOME/stremio.desktop
  echo "Exec=/opt/stremio/Stremio.sh" >> $HOME/stremio.desktop
  echo "Comment=Have fun!" >> $HOME/stremio.desktop
  echo "Categories=Video" >> $HOME/stremio.desktop
  echo "Terminal=false" >> $HOME/stremio.desktop

  # Moving the eclipse.destop to the usr/share/applications folder.
  sudo mv $HOME/stremio.desktop /usr/share/applications/

  # Removing Stremio3.6.5.linux.tar.gz file.
  rm -rf $HOME/Downloads/Stremio3.6.5.linux.tar.gz

  echo $'\n Stremio Studio was installed with success.'
fi

