#レポジトリの追加
#nemo
yes | sudo add-apt-repository ppa:webupd8team/nemo
#sublie text 2
yes | sudo add-apt-repository ppa:webupd8team/sublime-text-2
#gnome-tweak-tool, ubuntu-tweak
yes | sudo add-apt-repository ppa:tualatrix/ppa
#Audacious
yes | sudo add-apt-repository ppa:nilarimogard/webupd8
#gimp
yes | sudo add-apt-repository ppa:otto-kesselgulasch/gimp
#pcsx2
yes | sudo apt-add-repository ppa:gregory-hainaut/pcsx2.official.ppa
#indicator-multiload
yes | sudo add-apt-repository ppa:indicator-multiload/stable-daily
# Indicator-Sensor
yes | sudo apt-add-repository ppa:alexmurray/indicator-sensors
#smartgit
yes | sudo add-apt-repository ppa:eugenesan/ppa
#Oracle Java 8
yes | sudo add-apt-repository ppa:webupd8team/java
#skype
sudo sh -c "echo 'deb http://archive.canonical.com/ubuntu/ trusty partner' >> /etc/apt/sources.list.d/canonical_partner.list"
#google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

#Update
sudo apt-get update

#インストール
sudo apt-get -yV install nemo nemo-dropbox nemo-emblems nemo-image-converter
sudo apt-get -yV install sublime-text
sudo apt-get -yV install emacs24
sudo apt-get -yV install terminator
sudo apt-get -yV install ubuntu-tweak
sudo apt-get -yV install compizconfig-settings-manager
sudo apt-get -yV install unity-tweak-tool
sudo apt-get -yV install synaptic
sudo apt-get -yV install gnome-tweak-tool
sudo apt-get -yV install fontforge
sudo apt-get -yV install gimp
sudo apt-get -yV install inkscape
sudo apt-get -yV install gnuplot-x11
sudo apt-get -yV install easystroke
sudo apt-get -yV install skype
sudo apt-get -yV install google-chrome-stable
sudo apt-get -yV install kazam
sudo apt-get -yV install audacious
sudo apt-get -yV install vlc
sudo apt-get -yV install smplayer
sudo apt-get -yV install pcsx2
sudo apt-get -yV install indicator-multiload
sudo apt-get -yV install indicator-sensors
sudo apt-get -yV install exfat-fuse exfat-utils
sudo apt-get -yV install smartgit
sudo apt-get -yV install unrar rar
sudo apt-get -yV install gparted
sudo apt-get -yV install wine
sudo apt-get -yV install oracle-java8-installer

#nemoの設定
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true

#terminator設定
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"
sudo update-alternatives --config x-terminal-emulator