#!/bin/bash
# Script written by: JM.
# This script install Eclipse IDE.

if [ -d "/opt/eclipse/" ]; then
  echo $'\n Eclipse is already installed.\n'
else
  # Downloading Eclipse.
  wget -P $HOME/Downloads/ http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/neon/1a/eclipse-jee-neon-1a-linux-gtk-x86_64.tar.gz

  # Extracting eclipse-jee-neon-1a-linux-gtk-x86_64.tar.gz into Download folder.
  tar -vzxf $HOME/Downloads/eclipse-jee-neon-1a-linux-gtk-x86_64.tar.gz -C $HOME/Downloads/

  # Moving eclipse folder  from Download to the opt folder.
  sudo mv $HOME/Downloads/eclipse /opt/

  # Setting up Eclipse launcher on Ubuntu dash.
  echo "[Desktop Entry]" >> $HOME/eclipse.desktop
  echo "Version=1.0" >> $HOME/eclipse.desktop
  echo "Name=Eclipse" >> $HOME/eclipse.desktop
  echo "Exec=env UBUNTU_MENUPROXY= eclipse" >> $HOME/eclipse.desktop
  echo "Terminal=false" >> $HOME/eclipse.desktop
  echo "Icon=/opt/eclipse/icon.xpm" >> $HOME/eclipse.desktop
  echo "Type=Application" >> $HOME/eclipse.desktop
  echo "Categories=IDE;Development" >> $HOME/eclipse.desktop
  echo "X-Ayatana-Desktop-Shortcuts=NewWindow" >> $HOME/eclipse.desktop
  echo "[NewWindow Shortcut Group]" >> $HOME/eclipse.desktop
  echo "Name=New Window" >> $HOME/eclipse.desktop
  echo "Exec=env UBUNTU_MENUPROXY= eclipse" >> $HOME/eclipse.desktop
  echo "TargetEnvironment=Unity" >> $HOME/eclipse.desktop

  # Moving the eclipse.destop to the usr/share/applications folder.
  sudo mv $HOME/eclipse.desktop /usr/share/applications/

  # Removing Eclipse tar.gz file from Download folder.
  rm -rf $HOME/Downloads/eclipse-jee-neon-1a-linux-gtk-x86_64.tar.gz

  echo $'\n Eclipse was installed with success.\n'
fi

