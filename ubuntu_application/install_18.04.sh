#レポジトリの追加
sudo apt-get -yV install curl
#nemo
yes | sudo add-apt-repository ppa:embrosyn/cinnamon
#sublie text 2
yes | wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
yes | echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
#gimp
yes | sudo add-apt-repository ppa:otto-kesselgulasch/gimp
#indicator-sound-switcher
yes | sudo apt-add-repository ppa:yktooo/ppa
#google chrome
yes | curl https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
#vscode
yes | curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
yes | sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
yes | sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
#timeshift
yes | sudo add-apt-repository ppa:teejee2008/timeshift
#grub-customizer
yes | sudo add-apt-repository ppa:danielrichter2007/grub-customizer
# remmina
yes | sudo add-apt-repository ppa:remmina-ppa-team/remmina-next
# Lollypop
yes | sudo add-apt-repository ppa:gnumdk/lollypop
#SimpleScreenRecorder
yes | sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder

#Update
sudo apt-get update

#必須のアプリインストール
sudo apt-get -yV install git 
sudo apt-get -yV install nemo nemo-image-converter
sudo apt-get -yV install apt-transport-https
sudo apt-get -yV install sublime-text
sudo apt-get -yV install meld
sudo apt-get -yV install terminator
sudo apt-get -yV install gnome-tweak-tool
sudo apt-get -yV install ubuntu-tweak
sudo apt-get -yV install compizconfig-settings-manager
sudo apt-get -yV install unity-tweak-tool
sudo apt-get -yV install nkf
sudo apt-get -yV install gimp
sudo apt-get -yV install inkscape
sudo apt-get -yV install gnuplot-x11
sudo apt-get -yV install vlc
sudo apt-get -yV install exfat-fuse exfat-utils
sudo apt-get -yV install unrar rar
sudo apt-get -yV install gparted
sudo apt-get -yV install fontforge
sudo apt-get -yV install solaar
sudo apt-get -yV install indicator-multiload
sudo apt-get -yV install indicator-sound-switcher
sudo apt-get -yV install wine
sudo apt-get -yV install gprename
sudo apt-get -yV install google-chrome-stable
sudo apt-get -yV install apt-transport-https
sudo apt-get -yV install code
sudo apt-get -yV install timeshift
sudo apt-get -yV install grub-customizer
sudo apt-get -yV install remmina remmina-plugin- * libfreerdp-plugins-standard
sudo apt-get -yV install ssh openssh-server openssh-client
sudo apt-get -yV install xbindkeys
sudo apt-get -yV install lollypop
sudo apt-get -yV install simplescreenrecorder
sudo apt-get -yV install notify-osd
sudo apt-get -yV install dconf-editor
sudo apt-get -yV install remmina

#nemoの設定
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true

#terminator設定
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"
sudo update-alternatives --config x-terminal-emulator
gsettings set org.gnome.desktop.default-applications.terminal exec terminator
gsettings set org.cinnamon.desktop.default-applications.terminal exec terminator

