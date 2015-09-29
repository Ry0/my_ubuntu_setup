#!/bin/bash

#レポジトリの追加
#nemo
yes | sudo add-apt-repository ppa:webupd8team/nemo
#sublie text 2
yes | sudo add-apt-repository ppa:webupd8team/sublime-text-2
#gnome-tweak-tool, ubuntu-tweak
yes | sudo add-apt-repository ppa:tualatrix/ppa

#Update
sudo apt-get update

#必須のアプリインストール
sudo apt-get -yV install nemo nemo-dropbox
sudo apt-get -yV install sublime-text
sudo apt-get -yV install terminator
sudo apt-get -yV install ubuntu-tweak
sudo apt-get -yV install compizconfig-settings-manager
sudo apt-get -yV install unity-tweak-tool
sudo apt-get -yV install gnome-tweak-tool
sudo apt-get -yV install gnuplot-x11
sudo apt-get -yV install kazam
sudo apt-get -yV install exfat-fuse exfat-utils
sudo apt-get -yV install unrar rar
sudo apt-get -yV install gparted

#nemoの設定
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true

#terminator設定
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"
sudo update-alternatives --config x-terminal-emulator