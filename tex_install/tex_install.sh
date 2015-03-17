wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
mkdir tex_install_script && tar xf install-tl-unx.tar.gz -C tex_install_script --strip-components 1
cd tex_install_script
./install-tl << EOF
I
EOF
sudo /usr/local/texlive/2013/bin/x86_64-linux/tlmgr path add
sudo mkdir -p /usr/local/texlive/texmf-local/web2c
sudo cp ./texmf.cnf /usr/local/texlive/texmf-local/web2c/texmf.cnf
sudo mktexlsr
sudo kanji-config-updmap-sys ipaex
cp latexmkrc ~/.latexmkrc

