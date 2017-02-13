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
		FALSE "3" "Get repositories from Github and Bitbucket"\
		FALSE "4" "Htop"\
		FALSE "5" "Tmux"\
		FALSE "6" "Zsh"\
		FALSE "7" "Zsh Syntax Highlighting"\
		FALSE "8" "7zip, Rar, Unrar"\
		FALSE "9" "Java 8"\
		FALSE "10" "NVM"\
		FALSE "11" "Node Js"\
		FALSE "12" "Ruby, RVM, Rails"\
		FALSE "13" "MySQL"\
		FALSE "14" "MySQL Workbench"\
		FALSE "15" "PostgreSQL"\
		FALSE "16" "PgAdmin3"\
		FALSE "17" "Neovim"\
		FALSE "18" "Sublime Text 3"\
		FALSE "19" "Android Studio"\
		FALSE "20" "Eclipse"\
		FALSE "21" "Google Chrome"\
		FALSE "22" "Opera"\
		FALSE "23" "Dropbox"\
		FALSE "24" "pCloud"\
		FALSE "25" "qBittorrent"\
		FALSE "26" "Spotfy"\
		FALSE "27" "Clementine"\
		FALSE "28" "Vocal"\
		FALSE "29" "VLC"\
		FALSE "30" "Stremio"\
		FALSE "31" "Inkscape"\
		FALSE "32" "Slack"\
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
	# Installing git.
  ./plugins/git-installer.sh
fi

if [[ "$selected_item" =~ "2" ]]; then
	# Installing Git-flow.
  ./plugins/git-flow-installer.sh
fi

if [[ "$selected_item" =~ "3" ]]; then
	# Getting repositories from Github and Bitbucket.
  ./plugins/repositories-github-bitbucket.sh
fi

if [[ "$selected_item" =~ "4" ]]; then
	# Installing Htop.
  ./plugins/htop-installer.sh
fi

if [[ "$selected_item" =~ "5" ]]; then
	# Installing Tmux.
  ./plugins/tmux-installer.sh
fi

if [[ "$selected_item" =~ "6" ]]; then
	# Installing zsh.
  ./plugins/zsh-installer.sh
fi

if [[ "$selected_item" =~ "7" ]]; then
	# Installing Zsh Syntax Highlighting.
  ./plugins/zsh-syntax-highlighting-installer.sh
fi

if [[ "$selected_item" =~ "8" ]]; then
	# Installing unpack files software.
  ./plugins/unpack-files-installer.sh
fi

if [[ "$selected_item" =~ "9" ]]; then
	# Installing Oracle Java 8.
	./plugins/java8-installer.sh
fi

if [[ "$selected_item" =~ "10" ]]; then
	# Installing NVM.
  ./plugins/nvm-installer.sh 
fi

if [[ "$selected_item" =~ "11" ]]; then
	# Installing Node.
	./plugins/node-installer.sh
fi

if [[ "$selected_item" =~ "12" ]]; then
	# Installing Ruby.
  ./plugins/ruby-installer.sh
fi

if [[ "$selected_item" =~ "13" ]]; then
	# Installing MySQL.
  ./plugins/mysql-installer.sh
fi

if [[ "$selected_item" =~ "14" ]]; then
	# Installing MySQL Workbench.
	./plugins/mysql-workbench-installer.sh
fi

if [[ "$selected_item" =~ "15" ]]; then
	# Installing PostgreSQL.
  ./plugins/postgresql-installer.sh	
fi

if [[ "$selected_item" =~ "16" ]]; then
	# Installing PgAdmin3.
  ./plugins/pgadmin3-installer.sh
fi

if [[ "$selected_item" =~ "17" ]]; then
  # Installing Neovim.
	./plugins/neovim-installer.sh
fi

if [[ "$selected_item" =~ "18" ]]; then
	# Installing Sublime Text 3.
	./plugins/sublime-text3-installer.sh
fi

if [[ "$selected_item" =~ "19" ]]; then
	# Installing Android Studio.
	./plugins/android-studio-installer.sh
fi

if [[ "$selected_item" =~ "20" ]]; then
	# Installing Eclipse.
  ./plugins/eclipse-installer.sh
fi

if [[ "$selected_item" =~ "21" ]]; then	
	# Installing Google Chrome.
  ./plugins/chrome-installer.sh
fi

if [[ "$selected_item" =~ "22" ]]; then
	# Installing Opera.
  ./plugins/opera-installer.sh
fi

if [[ "$selected_item" =~ "23" ]]; then
	# Installing Dropbox.
	./plugins/dropbox-installer.sh
fi

if [[ "$selected_item" =~ "24" ]]; then
	# Installing pCloud.
  ./plugins/pcloud-installer.sh
fi

if [[ "$selected_item" =~ "25" ]]; then
	# Installing qBittorrent.
  ./plugins/qbittorrent-installer.sh
fi

if [[ "$selected_item" =~ "26" ]]; then
	# Installing Spotfy client.
  ./plugins/spotify-install.sh
fi

if [[ "$selected_item" =~ "27" ]]; then
	# Installing Clementine.
  ./plugins/clementine-installer.sh
fi

if [[ "$selected_item" =~ "28" ]]; then	
	# Installing Vocal.
	./plugins/vocal-installer.sh
fi

if [[ "$selected_item" =~ "29" ]]; then
	# Installing VLC.
  ./plugins/vlc-installer.sh
fi

if [[ "$selected_item" =~ "30" ]]; then
	# Installing Stremio
  ./plugins/stremio-installer.sh
fi

if [[ "$selected_item" =~ "31" ]]; then
	# Installing Inkscape.
  ./plugins/inkscape-installer.sh
fi

if [[ "$selected_item" =~ "32" ]]; then
	# Installing Slack.
	./plugins/slack-installer.sh
fi

if [[ "$selected_item" =~ "33" ]]; then
	# Installing Skype.
	./plugins/skype-installer.sh
fi

if [[ "$selected_item" =~ "34" ]]; then
	# Installing Simplenote.
	./plugins/simplenote-installer.sh
fi

if [[ "$selected_item" =~ "35" ]]; then
	# Installing Unetbootin
  ./plugins/unetbootin-installer.sh
fi

if [[ "$selected_item" =~ "36" ]]; then
	# Installing Unity Tweek Tool
  ./plugins/unity-tweak-tool-installer.sh
fi

if [[ "$selected_item" =~ "37" ]]; then
	# Installing Restricted-Extras.
  ./plugins/ubuntu-restricted-extras.sh
fi

if [[ "$selected_item" =~ "38" ]]; then
	# Installing Syspeek.
  ./plugins/syspeek-installer.sh
fi

if [[ "$selected_item" =~ "39" ]]; then
	# Installing Linuxbrew.
	./plugins/linuxbrew-installer.sh
fi

#################Uninstalling unused softwares from Ubuntu.##################
if command -v onboard >/dev/null; then
# Removing Onboard from the system.
	sudo apt-get remove --purge onboard
	sudo apt-get autoremove
fi

if command -v gnome-mahjongg >/dev/null; then
	# Removing GNOME Mahjongg.
	sudo apt-get remove --purge gnome-mahjongg
	sudo apt-get autoremove
fi

if command -v gnome-sudoku >/dev/null; then
	# Removing GNOME Sudoku.
	sudo apt-get remove --purge gnome-sudoku
	sudo apt-get autoremove
fi

if command -v gnome-orca >/dev/null; then
	# Removing GNOME Orca.
	sudo apt-get remove --purge gnome-orca
	sudo apt-get autoremove
fi

if command -v gnome-mines>/dev/null; then
	# Removing GNOME Mines.
	sudo apt-get remove --purge gnome-mines
	sudo apt-get autoremove
fi

if command -v rhythmbox >/dev/null; then
	# Removing Rhythmbox.
	sudo apt-get remove --purge rhythmbox
	sudo apt-get autoremove
fi

if command -v thunderbird >/dev/null; then
	# Removing Thunderbird.
	sudo apt-get remove --purge thunderbird*
	sudo apt-get autoremove
fi

zenity --info --title "Installation finished" --text "Installation finished with success!"
