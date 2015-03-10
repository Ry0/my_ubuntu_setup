#日本語のディレクトリを英語に

```
env LANGUAGE=C LC_MESSAGES=C xdg-user-dirs-gtk-update
```

#レポジトリの追加

```
sudo add-apt-repository ppa:webupd8team/nemo
sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo add-apt-repository ppa:tualatrix/ppa
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo add-apt-repository ppa:noobslab/pcsx2
sudo add-apt-repository ppa:indicator-multiload/stable-daily
sudo apt-get update
```

#インストール

##nemoの設定

```
sudo apt-get install nemo nemo-dropbox nemo-emblems nemo-image-converter
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true
```

## その他アプリケーション

```
sudo apt-get install sublime-text
sudo apt-get install emacs24
sudo apt-get install terminator
sudo apt-get install ubuntu-tweak
sudo apt-get install compizconfig-settings-manager
sudo apt-get install unity-tweak-tool
sudo apt-get install synaptic
sudo apt-get install gnome-tweak-tool
sudo apt-get install wine
sudo apt-get install fontforge
sudo apt-get install gimp
sudo apt-get install inkscape
sudo apt-get install easystroke
sudo apt-get install skype
sudo apt-get install kazam
sudo apt-get install audacious
sudo apt-get install vlc
sudo apt-get install pcsx2
sudo apt-get install indicator-multiload
```

## Adobe Reader

```
wget http://ardownload.adobe.coSm/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i386linux_enu.deb
sudo dpkg -i AdbeRdr9.5.5-1_i386linux_enu.deb
sudo apt-get -f install
sudo apt-get install libxml2:i386 libstdc++6:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386
sudo dpkg -i AdbeRdr9.5.5-1_i386linux_enu.deb
wget http://ardownload.adobe.com/pub/adobe/reader/unix/9.x/9.1/misc/FontPack910_jpn_i486-linux.tar.bz2
tar xavf FontPack910_jpn_i486-linux.tar.bz2
sudo sh JPNKIT/INSTALL
```

## git

```
sudo apt-get install git
git config --global user.name "Arita Yuta"
git config --global user.email k104009y@mail.kyutech.jp 
```

## CapsLockキーを追加のCtrlキーとして使う

```
dconf write /org/gnome/desktop/input-sources/xkb-options "['ctrl:nocaps']"
```

## ssh-keyの設定

```
ssh-keygen -t rsa -C "k104009y@mail.kyutech.jp"
[Press enter] # about key directry
[Press enter] # about passphrase
[Press enter] # passphrase confirm
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
```

[続き]->https://help.github.com/articles/generating-ssh-keys/#step-4-add-your-ssh-key-to-your-account

## terminatorをCtrl+Alt+Tとかでrootで開かないようにする

```
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"
sudo update-alternatives --config x-terminal-emulator
```

## マウスポインタの速度を抑制

```
xinput --list --short
```

マウスの項目を探す`Logitech Unifying Device. Wireless PID:101b	id=11	[slave  pointer  (2)]`
自動起動するアプリケーションに以下を登録する

```
xinput --set-prop "id" "Device Accel Constant Deceleration" 3
```

idのところにidを指定する。
