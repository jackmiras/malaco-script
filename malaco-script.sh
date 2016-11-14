#!/bin/bash
# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"

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

if [ "$(id -u)" != "0" ]; then
	zenity --info --title="A problem has occurred"\
		--text="In order to make this script work correctly you need to execute this as super user to avoid further problems!"\
		--width=350 --height=100
else
	selected_item=$(zenity --list\
		--text "This is a script written to save time, choose down below the softwares that you want to install."\
		--checklist  --column "Instalar"\
		--column "Softwares"\
			TRUE "1 - Git"\
			TRUE "2 - Git-flow"\
			TRUE "3 - Get repositories from Github and Bitbucket"\
			TRUE "4 - Htop"\
			TRUE "5 - Tmux"\
			TRUE "6 - Zsh"\
			TRUE "7 - Zsh Syntax Highlighting"\
			TRUE "8 - 7zip, Rar, Unrar"\
			TRUE "9 - Java 8"\
			TRUE "10 - Python"\
			TRUE "11 - Node Js"\
			TRUE "12 - Ruby, RVM, Rails"\
			TRUE "13 - MySQL"\
			FALSE "14 - MySQL Workbench"\
			TRUE "15 - PostgreSQL"\
			TRUE "16 - PgAdmin3"\
			TRUE "17 - Vim"\
			TRUE "18 - Sublime Text 3"\
			TRUE "19 - Android Studio"\
			FALSE "20 - Eclipse"\
			TRUE "21 - Google Chrome"\
			TRUE "22 - Opera"\
			TRUE "23 - Dropbox"\
			TRUE "24 - pCloud"\
			TRUE "25 - qBittorrent"\
			TRUE "26 - Google Play Music"\
			FALSE "27 - Spotfy"\
			TRUE "28 - Clementine"\
			TRUE "29 - Vocal"\
			TRUE "30 - VLC"\
			TRUE "31 - Stremio"\
			TRUE "32 - Gimp"\
			FALSE "33 - Inkscape"\
			TRUE "34 - Slack"\
			TRUE "35 - Skype"\
			TRUE "36 - Simplenote"\
			TRUE "37 - Unetbootin"\
			TRUE "38 - Unity Tweak Tool"\
			TRUE "39 - Restricted-Extras (Codecs de áudio e vídeo, plugin flash, java entre outros)"\
			TRUE "40 - Syspeek"\
			TRUE "41 - Linuxbrew"\
			TRUE "42 - Toggl"\
		--separator=":" --width=1024 --height=768
	)

	if [[ $selected_item =~ "1" ]]; then
		# Installing git.
		sudo apt-get update && sudo apt-get install -y git

		# Configuring git.
		git config --global color.ui true
		git config --global user.name "Jackson Miras"
		git config --global user.email "jackmiras@gmail.com"

		# Generating ssh key.
		ssh-keygen -t rsa -b 4096
	fi

	if [[ $selected_item =~ "2" ]]; then
		# Installing Git-flow.
		sudo apt-get update && sudo apt-get install -y git-flow
	fi

	if [[ $selected_item =~ "3" ]]; then
		# Getting repositories from Github and Bitbucket.
		mkdir $HOME/Projects/
		chown $USER $HOME/Projects/
		cd $HOME/Projects/
	fi

	if [[ $selected_item =~ "4" ]]; then
		# Installing Htop.
		sudo apt-get update && sudo apt-get install -y htop
	fi

	if [[ $selected_item =~ "5" ]]; then
		# Installing Tmux.
		sudo apt-get update && sudo apt-get install -y tmux
	fi

	if [[ $selected_item =~ "6" ]]; then
		# Installing Zsh.
		sudo apt-get update && sudo apt-get install -y zsh && chsh -s $(which zsh)
		# Downloading Zsh configs from github.
		cd &HOME/Projects && git clone git@github.com:jackmiras/zshrc-config.git && cd $HOME/
		# Creating symbolic link of Zsh configs into the home of computer.
		ln -s $HOME/Projects/zshrc-config/.zshrc $HOME/.zshrc
	fi

	if [[ $selected_item =~ "7" ]]; then
		# Installing Zsh Syntax Highlighting.
		git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	fi

	if [[ $selected_item =~ "8" ]]; then
		# Instalar compactadores de arquivos.
	  sudo apt-get -y install p7zip p7zip-full p7zip-rar unrar rar unace-nonfree
	fi

	if [[ $selected_item =~ "9" ]]; then
		# Adding Oracle Java 8 repository.
		sudo add-apt-repository -y ppa:webupd8team/java && sudo apt-get update
		# Installing Oracle Java 8.
		sudo apt-get -y install oracle-java8-installer
		# Setting Oracle Java 8 as default JDK.
		sudo update-java-alternatives -s java-8-oracle && sudo apt-get -y install oracle-java8-set-default
		# Removing Open JDK 7.
		sudo apt-get -y purge openjdk-7-jre openjdk-7-jre-lib openjdk-7-jre-headless
	fi

	if [[ $selected_item =~ "10" ]]; then
		# Installing Python.
		sudo apt-get install -y python-software-properties python g++ make && sudo apt-get install idle-python3.4
	fi

	if [[ $selected_item =~ "11" ]]; then
		# Adding Node Js repository.
		sudo add-apt-repository -y ppa:chris-lea/node.js && sudo apt-get update
		# Installing Node.
		sudo apt-get install -y nodejs
		# Setting up to not need sudo permission when Node Js was executed.
		echo prefix = ~/.node >> ~/.npmrc
		echo 'export PATH=$HOME/.node/bin:$PATH' >> ~/.bashrc
		echo 'export PATH=$HOME/.node/bin:$PATH' >> ~/.zshrc
	fi

	if [[ $selected_item =~ "12" ]]; then
		# Installing Ruby dependencies.
		sudo apt-get update && sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

		# Installing RVM.
		sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
		gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
		curl -sSL https://get.rvm.io | bash -s stable
		source ~/.rvm/scripts/rvm
		rvm install 2.3.1
		rvm use 2.3.1 --default

		# Installing Bundler.
		gem install bundler

		# Installing Rails.
		gem install rails -v 4.2.6
	fi

	if [[ $selected_item =~ "13" ]]; then
		# Installing MySQL.
		sudo apt-get update && sudo apt-get install mysql-server mysql-client libmysqlclient-dev
	fi

	if [[ $selected_item =~ "14" ]]; then
		# Downloading MySQL Workbench.
		wget -P $HOME/Download http://cdn.mysql.com//Downloads/MySQLGUITools/mysql-workbench-community-6.3.8-1ubu1604-amd64.deb
		# Installing MySQL Workbench.
		cd $HOME/Download && sudo dpkg -i mysql-workbench-community-6.3.8-1ubu1604-amd64.deb && sudo apt-get -f install
		# Updating Ubuntu dependencies.
		sudo apt-get update && sudo apt-get upgrade
	fi

	if [[ $selected_item =~ "15" ]]; then
		# Adding PostgreSQL on Ubuntu souces.list.
		sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
		# Downloading PostgreSQL key to add as key of system repositories.
		wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
		# Installing PostgreSQL.
		sudo apt-get update && sudo apt-get install postgresql-common && sudo apt-get install postgresql-9.5 libpq-dev
	fi

	if [[ $selected_item =~ "16" ]]; then
		# Installing PgAdmin3.
		sudo apt-get update && sudo apt-get install pgadmin3
	fi

	if [[ $selected_item =~ "17" ]]; then
		# Installing Vim.
		sudo apt-get update && sudo apt-get install vim
		# Downloading Vim configs from github.
		cd $HOME/Projects && git clone git@github.com:jackmiras/vim-config.git && cd $HOME
		# Creating a symbolic link of Vim configurations into the Home folder of Ubuntu.
		ln -s $HOME/Projects/vim-config/.vimrc $HOME/.vimrc
	fi

	if [[ $selected_item =~ "18" ]]; then
		# Adding Sublime Text 3 respository.
		sudo add-apt-repository -y ppa:webupd8team/sublime-text-3 && sudo apt-get update
		# Installing Sublime Text 3.
		sudo apt-get -y install sublime-text-installer
		# Downloading Sublime Text 3 configs from Github.
		cd $HOME/Projects && git clone git@github.com:jackmiras/sublime-text-3-config.git && cd $HOME
		# Creating a symbolic link of Sublime Text 3 configs into the Home/.config folder of Ubuntu.
		ln -s $HOME/Projects/sublime-text-3-config $HOME/.config/sublime-text-3
	fi

	if [[ $selected_item =~ "19" ]]; then
		# Installing Android Studio dependencies.
		sudo apt-get install lib32z1 lib32ncurses5 lib32stdc++6
		# Downloading Android Studio.
		wget -P $HOME/Download https://dl.google.com/dl/android/studio/ide-zips/2.2.2.0/android-studio-ide-145.3360264-linux.zip
		# Extracting android-studio-ide-145.3360264-linux.zip into Download folder.
		unzip $HOME/Download/android-studio-ide-145.3360264-linux.zip -d $HOME/Download
		# Moving android-studio folder from Download to the opt folder.
		sudo mv $HOME/Download/android-studio /opt/

		# Setting up the Android Studio launcher on Ubuntu dash.
		echo "[Desktop Entry]" >> ~/.local/share/applications/jetbrains-studio.desktop
		echo "Version=1.0" >> ~/.local/share/applications/jetbrains-studio.desktop
		echo "Type=Application" >> ~/.local/share/applications/jetbrains-studio.desktop
		echo "Name=Android Studio" >> ~/.local/share/applications/jetbrains-studio.desktop
		echo "Icon=/opt/android-studio/bin/studio.png" >> ~/.local/share/applications/jetbrains-studio.desktop
		echo "Exec="/opt/android-studio/bin/studio.sh" %f" >> ~/.local/share/applications/jetbrains-studio.desktop
		echo "Comment=Develop with pleasure!" >> ~/.local/share/applications/jetbrains-studio.desktop
		echo "Categories=Development;IDE;" >> ~/.local/share/applications/jetbrains-studio.desktop
		echo "Terminal=false" >> ~/.local/share/applications/jetbrains-studio.desktop
		echo "StartupWMClass=jetbrains-studio" >> ~/.local/share/applications/jetbrains-studio.desktop

		# Executing Android Studio to generate the .AndroidStudio folder.
		sh /opt/android-studio/bin/studio.sh
		# Downloading custom configs of Android Studio from Github.
		cd $HOME/Projects && git clone git@github.com:jackmiras/android-studio-config.git && cd $HOME
		# Removing current configurations of Android Studio.
		rm -rf $HOME/.AndroidStudio2.2/config
		# Creating a symbolic link of the new Android Studio configurations into .AndroidStudio folder.
		ln -s $HOME/Projects/android-studio-config $HOME/.AndroidStudio2.2/config
		# Removing Android Studio zip file from Download folder.
		rm -rf $HOME/Download/android-studio-ide-145.3360264-linux.zip
	fi

	if [[ $selected_item =~ "20" ]];then
		# Downloading Eclipse.
		wget -P $HOME/Download http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/neon/1a/eclipse-jee-neon-1a-linux-gtk-x86_64.tar.gz
		# Extracting eclipse-jee-neon-1a-linux-gtk-x86_64.tar.gz into Download folder.
		tar -vzxf $HOME/Download/eclipse-jee-neon-1a-linux-gtk-x86_64.tar.gz -C $HOME/Download
		# Moving eclipse folder  from Download to the opt folder.
		sudo mv $HOME/Download/eclipse /opt/

		# Setting up Eclipse launcher on Ubuntu dash.
		echo "[Desktop Entry]" >> ~/.local/share/applications/eclipse.desktop
		echo "Version=1.0" >> ~/.local/share/applications/eclipse.desktop
		echo "Name=Eclipse" >> ~/.local/share/applications/eclipse.desktop
		echo "Exec=env UBUNTU_MENUPROXY= eclipse" >> ~/.local/share/applications/eclipse.desktop
		echo "Terminal=false" >> ~/.local/share/applications/eclipse.desktop
		echo "Icon=/opt/eclipse/icon.xpm" >> ~/.local/share/applications/eclipse.desktop
		echo "Type=Application" >> ~/.local/share/applications/eclipse.desktop
		echo "Categories=IDE;Development" >> ~/.local/share/applications/eclipse.desktop
		echo "X-Ayatana-Desktop-Shortcuts=NewWindow" >> ~/.local/share/applications/eclipse.desktop
		echo "[NewWindow Shortcut Group]" >> ~/.local/share/applications/eclipse.desktop
		echo "Name=New Window" >> ~/.local/share/applications/eclipse.desktop
		echo "Exec=env UBUNTU_MENUPROXY= eclipse" >> ~/.local/share/applications/eclipse.desktop
		echo "TargetEnvironment=Unity" >> ~/.local/share/applications/eclipse.desktop

		# Removing Eclipse tar.gz file from Download folder.
		rm -rf $HOME/Download/eclipse-jee-neon-1a-linux-gtk-x86_64.tar.gz
	fi

	if [[ $selected_item =~ "21" ]]; then
		# Downloading Google Chrome key to add as key of system repositories.
		wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
		# Adding Google Chrome to the source list.
		sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
		# Installing the stable version of Google Chrome.
		sudo apt-get update && sudo apt-get install -y google-chrome-stable
	fi

	if [[ $selected_item =~ "22" ]]; then
		# Downloading opera-stable_41.0.2353.46_amd64.deb into the Download folder.
		wget -P $HOME/Download http://download4.operacdn.com/pub/opera/desktop/41.0.2353.46/linux/opera-stable_41.0.2353.46_amd64.deb
		# Installing the stable version Opera.
		sudo dpkg -i $HOME/Download/opera-stable_41.0.2353.46_amd64.deb && sudo apt-get -f install
		# Updating Ubuntu dependencies. 
		sudo ap-get update && sudo apt-get upgrade
	fi

	if [[ $selected_item =~ "23" ]]; then
		# Download dropbox_2015.10.28_amd64.deb into the Download folder.
		wget -P $HOME/Download https://linux.dropbox.com/packages/ubuntu/dropbox_2015.10.28_amd64.deb
		# Installing Dropbox.
		sudo dpkg -i $HOME/Download/dropbox_2015.10.28_amd64.deb && sudo apt-get -f install
		# Removing dropbox_2015.10.28_amd64.deb from Download folder.
		rm -rf $HOME/Download/dropbox_2015.10.28_amd64.deb
		# Updating Ubuntu dependencies.
		sudo apt-get update && sudo apt-get upgrade
	fi

	if [[ $selected_item =~ "24" ]]; then
		# Downloading pCloud to the Download folder.
		wget -P $HOME/Download https://c75.pcloud.com/dHZ8IsmSZJvU4uZZZmMutt7ZHkZZGNRZkZ5LUXZssw368uiJLjYQDTAP0KEsS2b0egy/pCloud_Linux_amd64_3.1.1.deb
		# Installing pCloud.
		sudo dpkg -i $HOME/Download/pCloud_Linux_amd64_3.1.1.deb && sudo apt-get -f install
		# Updating Ubuntu dependencies and softwares.
		sudo apt-get update && sudo apt-get upgrade
		# Removing pCloud_Linux_amd64_3.1.1.deb file from Download folder.
		rm -rf $HOME/Download/pCloud_Linux_amd64_3.1.1.deb
	fi

	if [[ $selected_item =~ "25" ]]; then
		# Adding qBittorrent repository.
		sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
		# Installing qBittorrent.
		sudo apt-get update && sudo apt-get install qbittorrent
	fi

	if [[ $selected_item =~ "26" ]]; then
		# Downloading Google Play Music to the download folder.
		wget -P $HOME/Download https://github-cloud.s3.amazonaws.com/releases/40008106/42e05a06-9491-11e6-885c-b9b3588ff9a0.deb?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAISTNZFOVBIJMK3TQ%2F20161031%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20161031T184825Z&X-Amz-Expires=300&X-Amz-Signature=0d1c4b89a84149d1e40dd61045ffec11e8e52ea531f8c94809e5c02f25a15c63&X-Amz-SignedHeaders=host&actor_id=5861625&response-content-disposition=attachment%3B%20filename%3Dgoogle-play-music-desktop-player_4.0.1_amd64.deb&response-content-type=application%2Foctet-stream
		# Installing Google Play Music.
		sudo dpkg -i $HOME/Download/google-play-music-desktop-player_4.0.1_amd64.deb && sudo apt-get -f install
		# Updating Ubuntu dependencies and softwares.
		sudo apt-get update && sudo apt-get upgrade
		# Removing google-play-music-desktop-player_4.0.1_amd64.deb file.
		rm -rf $HOME/Download/google-play-music-desktop-player_4.0.1_amd64.deb
	fi

	if [[ $selected_item =~ "27" ]]; then
		# Downloading Spotfy client.
		wget -P $HOME/Download http://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.0.38.171.g5e1cd7b2-22_amd64.deb
		# Installing Spotfy client.
		sudo dpkg -i spotify-client_1.0.38.171.g5e1cd7b2-22_amd64.deb && sudo apt-get -f install
		# Updating Ubuntu dependencies.
		sudo apt-get install && sudo apt-get upgrade
		# Removing Spotfy file from Download folder.
		rm -rf $HOME/Download/spotify-client_1.0.38.171.g5e1cd7b2-22_amd64.deb
	fi

	if [[ $selected_item =~ "28" ]]; then
		# Adding Clementaine repository.
		sudo add-apt-repository ppa:me-davidsansome/clementine
		# Installing Clementine.
		sudo apt-get update && sudo apt-get install clementine
	fi

	if [[ $selected_item =~ "29" ]]; then
		# Downloading Vocal.
		wget -P $HOME/Download http://ufpr.dl.sourceforge.net/project/vocalpodcast/vocal_1.0_amd64.deb
		# Downloading Vocal dependencies.
		wget -P $HOME/Download https://launchpadlibrarian.net/201478397/libgranite2_0.3.0+r850+pkg80~ubuntu0.3.1_amd64.deb
		wget -P $HOME/Download https://launchpadlibrarian.net/201478393/libgranite-common_0.3.0+r850+pkg80~ubuntu0.3.1_all.deb
		# Installing Vocal dependencies.
		sudo dpkg -i $HOME/Download/libgranite2_0.3.0+r850+pkg80~ubuntu0.3.1_amd64.deb && sudo apt-get -f install
		sudo dpkg -i $HOME/Download/libgranite-common_0.3.0+r850+pkg80~ubuntu0.3.1_all.deb && sudo apt-get -f install
		# Installing Vocal.
		sudo dpkg -i $HOME/Download/vocal_1.0_amd64.deb && sudo apt-get -f install
		# Removing Vocal and his dependencies files.
		rm -rf $HOME/Download/vocal_1.0_amd64.deb
		rm -rf $HOME/Download/libgranite2_0.3.0+r850+pkg80~ubuntu0.3.1_amd64.deb
		rm -rf $HOME/Download/libgranite-common_0.3.0+r850+pkg80~ubuntu0.3.1_all.deb
		# Updating Ubuntu dependencies.
		sudo apt-get update && sudo apt-get upgrade
	fi

	if [[ $selected_item =~ "30" ]]; then
		# Adding VLC repositories
		sudo add-apt-repository ppa:videolan/stable-daily
		sudo add-apt-repository ppa:nicola-onorata/desktop
		# Installing VLC.
		sudo apt-get update && sudo apt-get install vlc
	fi

	if [[ $selected_item =~ "31" ]]; then
		# Downloading Stremio
		wget -P $HOME/Download http://dl.strem.io/Stremio3.6.5.linux.tar.gz 
		# Creating stremio folder.
		mkdir Download/stremio/
		# Extracting the Stremio3.6.5.linux.tar.gz files into stremio folder.
		tar -vzxf $HOME/Download/Stremio3.6.5.linux.tar.gz -C $HOME/Download/stremio
		# Moving stremio folder from Download to opt folder.
		sudo mv $HOME/Download/stremio /opt/
		# Downloading the image icon.
		wget -P /opt/stremio http://www.strem.io/3.0/stremio-white-small.png
		# Renaming the image icon.
		sudo mv /opt/stremio/stremio-white-small.png /opt/stremio/icon.png

		# Setting up Stremio launcher on Ubuntu dash.
		echo "[Desktop Entry]" >> ~/.local/share/applications/stremio.desktop
		echo "Version=1.0" >> ~/.local/share/applications/stremio.desktop
		echo "Name=Stremio" >> ~/.local/share/applications/stremio.desktop
		echo "Exec=/opt/Stremio/Stremio.sh" >> ~/.local/share/applications/stremio.desktop
		echo "Terminal=false" >> ~/.local/share/applications/stremio.desktop
		echo "Icon=/opt/Stremio/icon.png" >> ~/.local/share/applications/stremio.desktop
		echo "Type=Application" >> ~/.local/share/applications/stremio.desktop
		echo "Categories=Video" >> ~/.local/share/applications/stremio.desktop
		echo "X-Ayatana-Desktop-Shortcuts=NewWindow" >> ~/.local/share/applications/stremio.desktop
		echo "[NewWindow Shortcut Group]" >> ~/.local/share/applications/stremio.desktop
		echo "Name=New Window" >> ~/.local/share/applications/stremio.desktop
		echo "Exec=/opt/Stremio/Stremio.sh" >> ~/.local/share/applications/stremio.desktop
		echo "TargetEnvironment=Unity" >> ~/.local/share/applications/stremio.desktop

		# Removing Stremio3.6.5.linux.tar.gz file.
		rm -rf $HOME/Download/Stremio3.6.5.linux.tar.gz
	fi

	if [[ $selected_item =~ "32" ]]; then
		# Installing Gimp.
		sudo apt-get update && sudo apt-get -y install gimp
	fi

	if [[ $selected_item =~ "33" ]]; then
		# Installing Inkscape.
		sudo apt-get update && sudo apt-get -y install inkscape
	fi

	if [[ $selected_item =~ "34" ]]; then
		# Downloading Slack.
		wget -P $HOME/Download/ https://downloads.slack-edge.com/linux_releases/slack-desktop-2.2.1-amd64.deb
		# Installing Slack.
		sudo dkpg -i $HOME/Download/slack-desktop-2.2.1-amd64.deb && sudo apt-get -f install
		# Removing slack-desktop-2.2.1-amd64.deb file.
		rm -rf $HOME/Download/slack-desktop-2.2.1-amd64.deb
		# Updating Ubuntu softwares and dependencies.
		sudo apt-get update && sudo apt-get upgrade
	fi

	if [[ $selected_item =~ "35" ]]; then
		# Downloading Skype.
		wget -P $HOME/Download/ https://download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb
		# Installing Skype.
		sudo dpkg -i $HOME/Download/skype-ubuntu-precise_4.3.0.37-1_i386.deb && sudo apt-get -f install
		# Removing skype-ubuntu-precise_4.3.0.37-1_i386.deb file.
		rm -rf $HOME/Download/skype-ubuntu-precise_4.3.0.37-1_i386.deb
		# Updating Ubuntu softwares and dependencies.
		sudo apt-get update && sudo apt-get upgrade
	fi

	if [[ $selected_item =~ "36" ]]; then
		# Downloading Simplenote.
		wget -P $HOME/Download/ https://github-cloud.s3.amazonaws.com/releases/41199577/01797bea-955b-11e6-9af1-68f30e6a2dfb.deb?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAISTNZFOVBIJMK3TQ%2F20161101%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20161101T143306Z&X-Amz-Expires=300&X-Amz-Signature=7737a9fbdb911fc1c2c6dce6c5847f060e72ab9520b64ea88ccb3f608e8fe1ab&X-Amz-SignedHeaders=host&actor_id=5861625&response-content-disposition=attachment%3B%20filename%3Dsimplenote-1.0.5.deb&response-content-type=application%2Foctet-stream
		# Installing Simplenote.
		sudo dpkg -i $HOME/Download/simplenote-1.0.5.deb && sudo apt-get -f install
		# Removing simplenote-1.0.5.deb file.
		rm -rf $HOME/Download/simplenote-1.0.5.deb
		# Updating Ubuntu softwares and dependencies.
		sudo apt-get update && sudo apt-get upgrade
	fi

	if [[ $selected_item =~ "37" ]]; then
		# Adding Unetbootin repository.
		sudo add-apt-repository ppa:gezakovacs/ppa
		# Installing Unetbootin
		sudo apt-get update && sudo apt-get install unetbootin
	fi

	if [[ $selected_item =~ "38" ]]; then
		# Installing Unity Tweek Tool
		sudo apt-get update && sudo apt-get install unity-tweak-tool
	fi

	if [[ $selected_item =~ "39" ]]; then
		# Installing Restricted-Extras.
		sudo apt-get -y install ubuntu-restricted-extras
	fi

	if [[ $selected_item =~ "40" ]]; then
		# Adding Syspeek repository.
		sudo add-apt-repository ppa:nilarimogard/webupd8
		# Installing Syspeek.
		sudo apt-get update && sudo apt-get install syspeek
	fi

	if [[ $selected_item =~ "41" ]]; then
		# Installing Linuxbrew dependencies.
		sudo apt-get install build-essential curl git python-setuptools ruby
		# Installing Linuxbrew.
		git clone https://github.com/Linuxbrew/brew.git ~/.linuxbrew
		# Exporting environment variables of Linuxbrew.
		echo "export PATH='$HOME/.linuxbrew/bin:$PATH'" >> ~/.bashrc
		echo "export MANPATH='$HOME/.linuxbrew/share/man:$MANPATH'" >> ~/.bashrc
		echo "export INFOPATH='$HOME/.linuxbrew/share/info:$INFOPATH'" >> ~/.bashrc
	fi

	if [[ $selected_item =~ "42" ]]; then
		#Downloading Toggl.
		wget -P $HOME/Download/ https://github-cloud.s3.amazonaws.com/releases/16703726/16394e5e-9c3e-11e6-9d2f-0871f274c054.deb?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAISTNZFOVBIJMK3TQ%2F20161103%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20161103T142454Z&X-Amz-Expires=300&X-Amz-Signature=85c4ff003bd3ac7acbb7706f5c6b69d782b5d75221f8faf39bd61120c4a9cba2&X-Amz-SignedHeaders=host&actor_id=5861625&response-content-disposition=attachment%3B%20filename%3Dtoggldesktop_7.3.346_amd64.deb&response-content-type=application%2Foctet-stream
		# Installing Toggl dependencies.
		sudo apt-get install libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev
		#Installing Toggl.
		sudo dpkg -i $HOME/Download/toggldesktop_7.3.346_amd64.deb && sudo apt-get -f install
		# Removing toggldesktop_7.3.346_amd64.deb.
		rm -rf $HOME/Download/toggldesktop_7.3.346_amd64.deb
		# Updating Ubuntu dependencies.
		sudo apt-get update && sudo apt-get upgrade
	fi

	#################Uninstalling unused softwares from Ubuntu.##################
	# Removing Onboard from the system.
	sudo apt-get remove --purge onboard
	# Removing GNOME Mahjongg.
	sudo apt-get remove --purge gnome-mahjongg
	# Removing GNOME Sudoku.
	sudo apt-get remove --purge gnome-sudoku
	# Removing GNOME Orca.
	sudo apt-get remove --purge gnome-orca
	# Removing GNOME Mines.
	sudo apt-get remove --purge gnome-mines
	# Removing Rhythmbox.
	sudo apt-get remove --purge rhythmbox
	# Removing Thunderbird.
	sudo apt-get remove --purge thunderbird*
	# Removing unecessary packages.
	sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove
	
	zenity --info --title "Installation finished" --text "Installation finished with success!"
fi

