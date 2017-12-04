#!/bin/bash
# Script written by: JM.
# This script install and configure IntelliJ-IDEA IDE.

if [ -d "/opt/idea-IC/" ]; then
  echo $'\n IntelliJ IDEA is already installed.'
else
  # Installing IntelliJ IDEA dependencies.
  sudo apt-get install lib32z1 lib32ncurses5 lib32stdc++6

  # Downloading IntelliJ IDEA.
  wget -P $HOME/Downloads/ https://download-cf.jetbrains.com/idea/ideaIC-2017.3.tar.gz

  # Extracting IntelliJ IDEA into Download folder.
  tar zxvf $HOME/Downloads/ideaIC-2017.3.tar.gz -C $HOME/Downloads/

  # Renaming the folder to a simpler name.
  mv $HOME/Downloads/idea-IC* $HOME/Downloads/idea-IC

  # Moving idea-IC folder from Download to the opt folder.
  sudo mv $HOME/Downloads/idea-IC /opt/

  # Setting up the IntelliJ IDEA launcher on Ubuntu dash.
  echo "[Desktop Entry]" >> $HOME/jetbrains-idea.desktop
  echo "Version=1.0" >> $HOME/jetbrains-idea.desktop
  echo "Type=Application" >> $HOME/jetbrains-idea.desktop
  echo "Name=IntelliJ IDEA" >> $HOME/jetbrains-idea.desktop
  echo "Icon=/opt/idea-IC/bin/idea.png" >> $HOME/jetbrains-idea.desktop
  echo "Exec="/opt/idea-IC/bin/idea.sh" %f" >> $HOME/jetbrains-idea.desktop
  echo "Comment=Develop with pleasure!" >> $HOME/jetbrains-idea.desktop
  echo "Categories=Development;IDE;" >> $HOME/jetbrains-idea.desktop

  # Moving the jetbrains-studio.destop to the usr/share/applications folder.
  sudo mv $HOME/jetbrains-idea.desktop /usr/share/applications/

  # Executing Intellij IDEA to generate the .IdeaIC folder.
  sh /opt/idea-IC/bin/idea.sh

  # Downloading custom configs of IntelliJ IDEA from Github if needed.
  if [ ! -d "$HOME/Projects/intellij-idea-config" ]; then
    cd $HOME/Projects && git clone git clone git@github.com:jackmiras/intellij-idea-config.git && cd $HOME
  fi

  if [ -d "$HOME/Projects/intellij-idea-config" ]; then
    # Removing current configurations of IntelliJ IDEA.
    rm -rf $HOME/.IdeaIC2017.3/config/codestyles
    rm -rf $HOME/.IdeaIC2017.3/config/colors
    rm -rf $HOME/.IdeaIC2017.3/config/fileTemplates
    rm -rf $HOME/.IdeaIC2017.3/config/options/colors.scheme.xml
    rm -rf $HOME/.IdeaIC2017.3/config/options/debugger.renderers.xml
    rm -rf $HOME/.IdeaIC2017.3/config/options/debugger.xml
    rm -rf $HOME/.IdeaIC2017.3/config/options/editor.codeinsight.xml
    rm -rf $HOME/.IdeaIC2017.3/config/options/editor.xml
    rm -rf $HOME/.IdeaIC2017.3/config/options/find.xml
    rm -rf $HOME/.IdeaIC2017.3/config/options/ide.general.xml
    rm -rf $HOME/.IdeaIC2017.3/config/options/jdk.table.xml
    rm -rf $HOME/.IdeaIC2017.3/config/options/laf.xml
    rm -rf $HOME/.IdeaIC2017.3/config/options/other.xml
    rm -rf $HOME/.IdeaIC2017.3/config/options/path.macros.xml
    rm -rf $HOME/.IdeaIC2017.3/config/options/project.default.xml
    rm -rf $HOME/.IdeaIC2017.3/config/options/ui.lnf.xml
    rm -rf $HOME/.IdeaIC2017.3/config/templates
    rm -rf $HOME/.IdeaIC2017.3/config/plugins

    # Creating a symbolic link of the new IntelliJ IDEA configurations into .IdeaIC folder.
    ln -s $HOME/Projects/intellij-idea-config/codestyles/ $HOME/.IdeaIC2017.3/config/
    ln -s $HOME/Projects/intellij-idea-config/colors/ $HOME/.IdeaIC2017.3/config/
    ln -s $HOME/Projects/intellij-idea-config/fileTemplates/ $HOME/.IdeaIC2017.3/config/
    ln -s $HOME/Projects/intellij-idea-config/options/colors.scheme.xml $HOME/.IdeaIC2017.3/config/options/
    ln -s $HOME/Projects/intellij-idea-config/options/debugger.renderers.xml $HOME/.IdeaIC2017.3/config/options/
    ln -s $HOME/Projects/intellij-idea-config/options/debugger.xml $HOME/.IdeaIC2017.3/config/options/
    ln -s $HOME/Projects/intellij-idea-config/options/editor.codeinsight.xml $HOME/.IdeaIC2017.3/config/options/
    ln -s $HOME/Projects/intellij-idea-config/options/editor.xml $HOME/.IdeaIC2017.3/config/options/
    ln -s $HOME/Projects/intellij-idea-config/options/find.xml $HOME/.IdeaIC2017.3/config/options/
    ln -s $HOME/Projects/intellij-idea-config/options/ide.general.xml $HOME/.IdeaIC2017.3/config/options/
    ln -s $HOME/Projects/intellij-idea-config/options/jdk.local.xml $HOME/.IdeaIC2017.3/config/options/
    ln -s $HOME/Projects/intellij-idea-config/options/laf.xml $HOME/.IdeaIC2017.3/config/options/
    ln -s $HOME/Projects/intellij-idea-config/options/other.xml $HOME/.IdeaIC2017.3/config/options/
    ln -s $HOME/Projects/intellij-idea-config/options/path.macros.xml $HOME/.IdeaIC2017.3/config/options/
    ln -s $HOME/Projects/intellij-idea-config/options/project.default.xml $HOME/.IdeaIC2017.3/config/options/
    ln -s $HOME/Projects/intellij-idea-config/options/ui.lnf.xml $HOME/.IdeaIC2017.3/config/options/
    ln -s $HOME/Projects/intellij-idea-config/templates/ $HOME/.IdeaIC2017.3/config/
    ln -s $HOME/Projects/intellij-idea-config/plugins/ $HOME/.IdeaIC2017.3/config/
  fi
  # Removing IntelliJ IDEA tar.gz file from Download folder.
  rm -rf $HOME/Downloads/ideaIC-2017.3.tar.gz

  echo $'\n IntelliJ IDEA has been successfully installed.'
fi
