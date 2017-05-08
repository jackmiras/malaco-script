#!/bin/bash

# Script written by: Jackson Miras.
#
# This is a script inspired on fedy(http://folkswithhats.org/) that is software
# builted to easy install another software on Fedora. The problem is that haven't
# used Fedora for almos 3 years and I realy realy enjoy the experience and the time
# saving that's provided by fedy.
#
# With this thinks in mind I've decided to write my, sort of, own version of fedy
# but focused on Ubuntu that is my current Linux distribuition.
#
# This is script also uses Zenity to build the graphic user interface.

selected_item=$(zenity --list\
  --text "This is a script written to save time, choose down below the softwares that you want to install."\
  --checklist  --column "Install" --column "Id" --column "Name"\
    FALSE "1" "Git"\
    FALSE "2" "Git-flow"\
    FALSE "3" "Get private repositories"\
    FALSE "4" "Htop"\
    FALSE "5" "Tmux"\
    FALSE "6" "Zsh"\
    FALSE "7" "Zsh Syntax Highlighting"\
    FALSE "8" "Oh-my-zsh"\
    FALSE "9" "7zip, Rar, Unrar"\
    FALSE "10" "Java 8"\
    FALSE "11" "NVM"\
    FALSE "12" "Node Js"\
    FALSE "13" "Ruby, RVM, Rails"\
    FALSE "14" "MySQL"\
    FALSE "15" "MySQL Workbench"\
    FALSE "16" "PostgreSQL"\
    FALSE "17" "PgAdmin3"\
    FALSE "18" "MongoDB"\
    FALSE "19" "Robomongo"\
    FALSE "20" "Neovim"\
    FALSE "21" "Sublime Text 3"\
    FALSE "22" "Android Studio"\
    FALSE "23" "IntelliJ IDEA"\
    FALSE "24" "Google Chrome"\
    FALSE "25" "Opera"\
    FALSE "26" "Dropbox"\
    FALSE "27" "pCloud"\
    FALSE "28" "qBittorrent"\
    FALSE "29" "Clementine"\
    FALSE "30" "Vocal"\
    FALSE "31" "VLC"\
    FALSE "32" "Stremio"\
    FALSE "33" "Skype"\
    FALSE "34" "Simplenote"\
    FALSE "35" "Unetbootin"\
    FALSE "36" "Unity Tweak Tool"\
    FALSE "37" "Ubuntu Restricted Extras"\
    FALSE "38" "Syspeek"\
    FALSE "39" "Linuxbrew"\
  --separator=":" --width=1024 --height=768
)

if [[ "$selected_item" =~ "1" ]]; then
  ./plugins/git-installer.sh
fi

if [[ "$selected_item" =~ "2" ]]; then
  ./plugins/git-flow-installer.sh
fi

if [[ "$selected_item" =~ "3" ]]; then
  ./plugins/private-repositories.sh
fi

if [[ "$selected_item" =~ "4" ]]; then
  ./plugins/htop-installer.sh
fi

if [[ "$selected_item" =~ "5" ]]; then
  ./plugins/tmux-installer.sh
fi

if [[ "$selected_item" =~ "6" ]]; then
  ./plugins/zsh-installer.sh
fi

if [[ "$selected_item" =~ "7" ]]; then
  ./plugins/zsh-syntax-highlighting-installer.sh
fi

if [[ "$selected_item" =~ "8" ]]; then
  ./plugins/oh-my-zsh-installer.sh
fi

if [[ "$selected_item" =~ "9" ]]; then
  ./plugins/unpack-files-installer.sh
fi

if [[ "$selected_item" =~ "10" ]]; then
  ./plugins/java8-installer.sh
fi

if [[ "$selected_item" =~ "11" ]]; then
  ./plugins/nvm-installer.sh
fi

if [[ "$selected_item" =~ "12" ]]; then
  ./plugins/node-installer.sh
fi

if [[ "$selected_item" =~ "13" ]]; then
  ./plugins/ruby-installer.sh
fi

if [[ "$selected_item" =~ "14" ]]; then
  ./plugins/mysql-installer.sh
fi

if [[ "$selected_item" =~ "15" ]]; then
  ./plugins/mysql-workbench-installer.sh
fi

if [[ "$selected_item" =~ "16" ]]; then
  ./plugins/postgresql-installer.sh
fi

if [[ "$selected_item" =~ "17" ]]; then
  ./plugins/pgadmin3-installer.sh
fi

if [[ "$selected_item" =~ "18" ]]; then
  ./plugins/mongodb-installer.sh
fi

if [[ "$selected_item" =~ "19" ]]; then
  ./plugins/robomongo-installer.sh
fi

if [[ "$selected_item" =~ "20" ]]; then
  ./plugins/neovim-installer.sh
fi

if [[ "$selected_item" =~ "21" ]]; then
  ./plugins/sublime-text3-installer.sh
fi

if [[ "$selected_item" =~ "22" ]]; then
  ./plugins/android-studio-installer.sh
fi

if [[ "$selected_item" =~ "23" ]]; then
  ./plugins/intellij-idea-installer.sh
fi

if [[ "$selected_item" =~ "24" ]]; then
  ./plugins/chrome-installer.sh
fi

if [[ "$selected_item" =~ "25" ]]; then
  ./plugins/opera-installer.sh
fi

if [[ "$selected_item" =~ "26" ]]; then
  ./plugins/dropbox-installer.sh
fi

if [[ "$selected_item" =~ "27" ]]; then
  ./plugins/pcloud-installer.sh
fi

if [[ "$selected_item" =~ "28" ]]; then
  ./plugins/qbittorrent-installer.sh
fi

if [[ "$selected_item" =~ "29" ]]; then
  ./plugins/clementine-installer.sh
fi

if [[ "$selected_item" =~ "30" ]]; then
  ./plugins/vocal-installer.sh
fi

if [[ "$selected_item" =~ "31" ]]; then
  ./plugins/vlc-installer.sh
fi

if [[ "$selected_item" =~ "32" ]]; then
  ./plugins/stremio-installer.sh
fi

if [[ "$selected_item" =~ "33" ]]; then
  ./plugins/skype-installer.sh
fi

if [[ "$selected_item" =~ "34" ]]; then
  ./plugins/simplenote-installer.sh
fi

if [[ "$selected_item" =~ "35" ]]; then
  ./plugins/unetbootin-installer.sh
fi

if [[ "$selected_item" =~ "36" ]]; then
  ./plugins/unity-tweak-tool-installer.sh
fi

if [[ "$selected_item" =~ "37" ]]; then
  ./plugins/ubuntu-restricted-extras.sh
fi

if [[ "$selected_item" =~ "38" ]]; then
  ./plugins/syspeek-installer.sh
fi

if [[ "$selected_item" =~ "39" ]]; then
  ./plugins/linuxbrew-installer.sh
fi

##################Uninstalling unused softwares from Ubuntu.####################
if command -v onboard >/dev/null; then
  sudo apt-get remove --purge onboard
  sudo apt-get autoremove
fi

if command -v gnome-mahjongg >/dev/null; then
  sudo apt-get remove --purge gnome-mahjongg
  sudo apt-get autoremove
fi

if command -v gnome-sudoku >/dev/null; then
  sudo apt-get remove --purge gnome-sudoku
  sudo apt-get autoremove
fi

if command -v gnome-orca >/dev/null; then
  sudo apt-get remove --purge gnome-orca
  sudo apt-get autoremove
fi

if command -v gnome-mines>/dev/null; then
  sudo apt-get remove --purge gnome-mines
  sudo apt-get autoremove
fi

if command -v rhythmbox >/dev/null; then
  sudo apt-get remove --purge rhythmbox
  sudo apt-get autoremove
fi

if command -v thunderbird >/dev/null; then
  sudo apt-get remove --purge thunderbird*
  sudo apt-get autoremove
fi

if command -v gnome-music >/dev/null; then
  sudo apt-get remove gnome-music
fi

if command -v gedit >/dev/null; then
  sudo apt-get remove gedit
fi

zenity --info --title "Installation finished" --text "Installation finished with success!"
