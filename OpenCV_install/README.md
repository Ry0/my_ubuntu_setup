# OpenCV install

## Env
- Ubuntu 14.04 64bit  

## How to install

`opencv_install.sh`の最初のインストールバージョンを確認する。

```
$ git clone https://github.com/AriYu/my_ubuntu_setup.git
$ cd my_ubuntu_setupd/OpenCV_install
$ sudo opencv_install.sh
```

時間かかる.

サンプルを動かしてみる。

```
$ cd ~/Downloads/opencv-xxx/samples/c
$ sudo chmod 666 build_all.sh
$ sh build_all.sh
$ ./facedetect --cascade="/usr/local/share/OpenCV/haarcascades/haarcascade_frontalface_alt.xml" --scale=1.5 lena.jpg
```

レナさんの顔が検出できれば多分インストールに成功してると思います。
インストール後はダウンロードしたソースコードなどは削除して構いません。

---
respect for Ryodo Tanaka.
