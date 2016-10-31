#!/bin/bash

# Esse é um scrip inspirado no fedy(http://folkswithhats.org/)
# O foco desse scrip é facilitar a instalação de softwares para
# desenvolvedores Android com um pézinho em Ruby on Rails utilizando o Ubuntu.
#
# Esse script utiliza o zenity para a construção da interface gráfica.

resposta=$(zenity --list --text "Este é um script malaco criado para economizar o seu tempo, escolha a baixo os software que você deseja instalar." --checklist  --column "Instalar" --column "Softwares"\
		TRUE "1 - Git"\
		TRUE "2 - Git-flow"\
		TRUE "3 - Htop"\
		TRUE "4 - Tmux"\
		TRUE "5 - Zsh"\
		TRUE "6 - Zsh Syntax Highlighting"\
		TRUE "7 - Java 8"\
		TRUE "8 - Python"\
		TRUE "9 - Node Js"\
		TRUE "10 - Ruby, RVM, Rails"\
		TRUE "11 - MySQL"\
		FALSE "12 - MySQL Workbench"
		TRUE "13 - PostgreSQL"\
		TRUE "14 - PgAdmin3"\
		TRUE "15 - Vim"\
		TRUE "16 - Sublime Text 3"\
		TRUE "17 - Android Studio"\
		FALSE "18 - Eclipse"
		TRUE "19 - Google Chrome"\
		TRUE "20 - Opera"\
		TRUE "21 - Dropbox"\
		TRUE "22 - pCloud"\
		TRUE "23 - qBittorrent"\
		TRUE "24 - Google Play Music"\
		FALSE "25 - Spotfy"\
		TRUE "26 - Clementine"\
		TRUE "27 - Vocal"\
		TRUE "28 - VLC"\
		TRUE "29 - Stremio"\
		TRUE "30 - Gimp"\
		TRUE "31 - Inkscape"\
		TRUE "32 - Slack"\
		TRUE "33 - Skype"\
		TRUE "34 - Simplenote"\
		TRUE "35 - Unetbootin"\
		TRUE "36 - Unity Tweek Tool"\
		TRUE "37 - Get repositories from Github and Bitbucket"\
    TRUE "38 - Restricted-Extras (Codecs de áudio e vídeo, plugin flash, java entre outros)"\
		TRUE "39 - 7zip, Rar, Unrar"/
		TRUE "40 - Syspeek"/
		TRUE "41 - Linuxbrew"
    --separator=":" --width=750 --height=700
)

if [[ $resposta =~ "1" ]]; then
	# Installing git.
	sudo apt-get update && sudo apt-get install -y git

	# Configuring git.
	git config --global color.ui true
	git config --global user.name "Jackson Miras"
	git config --global user.email "jackmiras@gmail.com"

	# Generating ssh key.
	ssh-keygen -t rsa -b 4096
fi

if [[ $resposta =~ "2" ]]; then
	# Installing Git-flow.
	sudo apt-get update && sudo apt-get install -y git-flow
fi

if [[ $resposta =~ "3" ]]; then
	# Installing Htop.
  sudo apt-get update && sudo apt-get install -y htop
fi

if [[ $resposta =~ "4" ]]; then
	# Installing Tmux.
	sudo apt-get update
	sudo apt-get install -y tmux
fi

if [[ $resposta =~ "5" ]]; then
	# Installing Zsh.
	sudo apt-get update
	sudo apt-get install -y zsh
	chsh -s $(which zsh)

	# Getting and setting up Zsh configs from github.
	cd &HOME/Projects && git clone git@github.com:jackmiras/zshrc-config.git && cd $HOME/
	ln -s $HOME/Projects/zshrc-config/.zshrc $HOME/.zshrc
fi

if [[ $resposta =~ "6" ]]; then
	# Installing Zsh Syntax Highlighting.
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

if [[ $resposta =~ "7" ]]; then
	# Installing Oracle Java 8.
  sudo add-apt-repository -y ppa:webupd8team/java
  sudo apt-get update
  sudo apt-get -y install oracle-java8-installer
  sudo update-java-alternatives -s java-8-oracle
  sudo apt-get -y install oracle-java8-set-default

  # Remove openjdk.
  sudo apt-get -y purge openjdk-7-jre openjdk-7-jre-lib openjdk-7-jre-headless
fi

if [[ $resposta =~ "8" ]]; then
	# Installing Python.
  sudo apt-get install -y python-software-properties python g++ make && sudo apt-get install idle-python3.4
fi

if [[ $resposta =~ "9" ]]; then
  # Installing Node.
  sudo add-apt-repository -y ppa:chris-lea/node.js
  sudo apt-get update
  sudo apt-get install -y nodejs

	# Setting up to not need sudo permission.
  echo prefix = ~/.node >> ~/.npmrc
  echo 'export PATH=$HOME/.node/bin:$PATH' >> ~/.bashrc
  echo 'export PATH=$HOME/.node/bin:$PATH' >> ~/.zshrc
fi

if [[ $resposta =~ "10" ]]; then
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

if [[ $resposta =~ "11" ]]; then
	# Installing MySQL.
	sudo apt-get update && sudo apt-get install mysql-server mysql-client libmysqlclient-dev
fi

if [[ $resposta =~ "12" ]]; then
	# Installugin Mysql Workbench
	wget -P $HOME/Download http://cdn.mysql.com//Downloads/MySQLGUITools/mysql-workbench-community-6.3.8-1ubu1604-amd64.deb
	cd $HOME/Download && sudo dpkg -i mysql-workbench-community-6.3.8-1ubu1604-amd64.deb && sudo apt-get install -f
	sudo apt-get update && sudo apt-get upgrade
fi

if [[ $resposta =~ "13" ]]; then
	# Installing PostgreSQL.
	sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
	wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
	sudo apt-get update && sudo apt-get install postgresql-common && sudo apt-get install postgresql-9.5 libpq-dev
fi

if [[ $resposta =~ "14" ]]; then
	# Installing PgAdmin3.
	sudo apt-get update && sudo apt-get install pgadmin3
fi

if [[ $resposta =~ "15" ]]; then
	# Installing Vim.
	sudo apt-get update && sudo apt-get install vim

	# Getting and setting up vim configs from github.
	cd $HOME/Projects && git clone git@github.com:jackmiras/vim.git && cd $HOME
	ln -s $HOME/Projects/vim/.vimrc $HOME/.vimrc
fi

if [[ $resposta =~ "16" ]]; then
  # Installing Sublime Text 3.
  sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
  sudo apt-get update
  sudo apt-get -y install sublime-text-installer

	# Getting and setting up Sublime Text 3 configs from github.
	cd $HOME/.config && git clone git@github.com:jackmiras/sublime-text-3.git && cd $HOME
fi

if [[ $resposta =~ "17" ]]; then
	# Installing Android Studio.
	sudo apt-get update && sudo apt-get upgrade
	wget -P $HOME/Download https://dl.google.com/dl/android/studio/ide-zips/2.2.2.0/android-studio-ide-145.3360264-linux.zip
	unzip $HOME/Download/android-studio-ide-145.3360264-linux.zip -d $HOME/Download
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

	# Executing Android Studio
	sh /opt/android-studio/bin/studio.sh

	# Getting and setting up Android Studio configs from github.
	cd $HOME/Projects && git clone git@github.com:jackmiras/android-studio-config.git && cd $HOME
	rm -rf $HOME/.AndroidStudio2.2/config && ln -s $HOME/Projects/android-studio-config $HOME/.AndroidStudio2.2/config

	# Removing Android Studio zip file from Download folder.
	rm -rf $HOME/Download/android-studio-ide-145.3360264-linux.zip
fi

if [[ $resposta =~ "18" ]];then
	#Installing Eclipse.
	wget -P $HOME/Download http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/neon/1a/eclipse-jee-neon-1a-linux-gtk-x86_64.tar.gz
	tar -vzxf $HOME/Download/eclipse-jee-neon-1a-linux-gtk-x86_64.tar.gz -C $HOME/Download
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

if [[ $resposta =~ "19" ]]; then
	# Downloading Chrome key to add as key of system repositories.
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

	# Adding Chrome to the source list.
  sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
  sudo apt-get update
  sudo apt-get install -y google-chrome-stable
fi

if [[ $resposta =~ "20" ]]; then
	# Installing Opera.
	wget -P $HOME/Download http://download4.operacdn.com/pub/opera/desktop/41.0.2353.46/linux/opera-stable_41.0.2353.46_amd64.deb
	sudo dpkg -i $HOME/Download/opera-stable_41.0.2353.46_amd64.deb && sudo apt-get install -f
	sudo ap-get update && sudo apt-get upgrade
fi

if [[ $resposta =~ "21" ]]; then
	# Installing Dropbox.
	wget -P $HOME/Download https://linux.dropbox.com/packages/ubuntu/dropbox_2015.10.28_amd64.deb
	sudo dpkg -i $HOME/Download/dropbox_2015.10.28_amd64.deb && sudo apt-get install -f
	sudo apt-get update && sudo apt-get upgrade
	rm -rf $HOME/Download/dropbox_2015.10.28_amd64.deb
fi

if [[ $resposta =~ "22" ]]; then
	# Downloading pCloud to the Download folder.
	wget -P $HOME/Download https://c75.pcloud.com/dHZ8IsmSZJvU4uZZZmMutt7ZHkZZGNRZkZ5LUXZssw368uiJLjYQDTAP0KEsS2b0egy/pCloud_Linux_amd64_3.1.1.deb
	# Installing pCloud.
	sudo dpkg -i $HOME/Download/pCloud_Linux_amd64_3.1.1.deb && sudo apt-get install -f
	# Updating Ubuntu dependencies and softwares.
	sudo apt-get update && sudo apt-get upgrade
	# Removing pCloud_Linux_amd64_3.1.1.deb file from Download folder.
	rm -rf $HOME/Download/pCloud_Linux_amd64_3.1.1.deb
fi

if [[ $resposta =~ "23" ]]; then
	# Installing qBittorrent.
	sudo apt-get update
fi

if [[ $resposta =~ "24" ]]; then
	# Downloading Google Play Music to the download folder.
	wget -P $HOME/Download https://github-cloud.s3.amazonaws.com/releases/40008106/42e05a06-9491-11e6-885c-b9b3588ff9a0.deb?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAISTNZFOVBIJMK3TQ%2F20161031%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20161031T184825Z&X-Amz-Expires=300&X-Amz-Signature=0d1c4b89a84149d1e40dd61045ffec11e8e52ea531f8c94809e5c02f25a15c63&X-Amz-SignedHeaders=host&actor_id=5861625&response-content-disposition=attachment%3B%20filename%3Dgoogle-play-music-desktop-player_4.0.1_amd64.deb&response-content-type=application%2Foctet-stream
	# Installing Google Play Music.
	sudo dpkg -i $HOME/Download/google-play-music-desktop-player_4.0.1_amd64.deb && sudo apt-get install -f
	# Updating Ubuntu dependencies and softwares.
	sudo apt-get update && sudo apt-get upgrade
	# Removing google-play-music-desktop-player_4.0.1_amd64.deb file.
	rm -rf $HOME/Download/google-play-music-desktop-player_4.0.1_amd64.deb
fi

if [[ $resposta =~ "25" ]]; then
	# Installing Spotify.
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886
  echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
  sudo apt-get update
  sudo apt-get install -y spotify-client
fi

if [[ $resposta =~ "26" ]]; then
	# Installing Clementine.
	sudo apt-get update
fi

if [[ $resposta =~ "27" ]]; then
	# Intalling Vocal.
	sudo apt-get update
fi

if [[ $resposta =~ "28" ]]; then
	# Installing VLC.
	sudo apt-get update
fi

if [[ $resposta =~ "29" ]]; then
	# Installing Stremio.
	sudo apt-get update
fi

if [[ $resposta =~ "30" ]]; then
	# Installing Gimp.
	sudo apt-get update
  sudo apt-get -y install gimp
fi

if [[ $resposta =~ "31" ]]; then
	# Installing Inkscape.
	sudo apt-get update
  sudo apt-get -y install inkscape
fi

if [[ $resposta =~ "32" ]]; then
	# Installing Slack.
	sudo apt-get update
fi

if [[ $resposta =~ "33" ]]; then
	# Installing Skype.
  sudo sh -c 'echo "deb http://archive.canonical.com/ubuntu trusty partner" >> /etc/apt/sources.list.d/canonical_partner.list'
  sudo apt-get update
  sudo apt-get install -y skype
fi

if [[ $resposta =~ "34" ]]; then
	# Installing Simplenote.
	sudo apt-get update
fi

if [[ $resposta =~ "35" ]]; then
	# Installing Unetbootin
	sudo apt-get update
fi

if [[ $resposta =~ "36" ]]; then
	# Installing Unity Tweek Tool
	sudo apt-get update
fi

# This need to be executed after git-flow installation.
if [[ $resposta =~ "37" ]]; then
	# Getting repositories from Github and Bitbucket.
	mkdir ~/Projects
	cd ~/Projects
fi

if [[ $resposta =~ "38" ]]; then
	# Installing Restricted-Extras.
	sudo apt-get -y install ubuntu-restricted-extras
fi

# This need to be installed before Android Studio.
if [[ $resposta =~ "39" ]]; then
	# Instalar compactadores de arquivos.
  sudo apt-get -y install p7zip p7zip-full p7zip-rar unrar rar unace-nonfree
fi

# Desinstalando aplicativos padrões do Ubuntu.
# Códigos de desinstalação a partir desta linha!!!

# Removendo os pacotes não necessários.
sudo apt-get autoremove

zenity --info --title "Instalação Finalizada" --text "Instalação Finalizada com sucesso!"
