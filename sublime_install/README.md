#Sublime Text 2のインストールと設定
##インストール
[http://ry0.github.io/blog/2015/02/15/install-sublimetext2/](http://ry0.github.io/blog/2015/02/15/install-sublimetext2/)

##メニューの日本語化と日本語入力
###メニューの日本語化
ここからSublime Text 2の日本語化を行います。メニューバーの項目や、右クリックメニューの日本語化が可能です。英語のままでいい人は下の日本語入力の設定にスキップしてください。
日本語化ファイルを提供してくれているサイトがあるのでここからファイルをもらってきます。Main.sublime-menuとContext.sublime-menuを下のリンクからダウンロードします。

>【Windowsアプリケーション】Sublime Text 2 メニュー日本語化  
>[http://blog.huwy.org/article/292827228.html](http://blog.huwy.org/article/292827228.html)

そしてこのファイルを該当の場所に移動させます。
起動先にもすでにこのファイルと同名のファイルが存在しますから、大丈夫だとは思いますがファイル先の元ファイルのバックアップをしておくと安全でしょう。
下のコマンドを実行すると該当フォルダに移動されます。（ダウンロードしたディレクトリで実行してください）

```bash
mv Main.sublime-menu ~/.config/sublime-text-2/Packages/Default
mv Context.sublime-menu ~/.config/sublime-text-2/Packages/Default
```

これでSublime Text 2を再起動されたら日本語化されたはずです。

###日本語入力
次にSublime Text 2で日本語を入力できるようにします。というのもSublime Text 2は標準で日本語入力をサポートしていません。これについては次のサイトを参考にします。

>Ubuntu12.04にSublimeText2のインストールと日本語入力設定  
>[http://qiita.com/kanpou_/items/bc739c1215fc222f17c8](http://qiita.com/kanpou_/items/bc739c1215fc222f17c8)


"SublimeText2の日本語化力化"のセクションから書かれている手順にしたがいます。
参考サイトの”キーバインドの設定”のセクションで日本語と英語を切り替えるショートカット設定が書かれていますが、私は`Shift+Space`で切り替えたかったので、以下のようにしています。

```
[
{ "keys": ["shift+space"], "command": "toggle_mozc" }
]
```

サイトの手順を確実にこなせば日本語入力できるようになっているはずです。

##TeXをつかう
[http://ry0.github.io/blog/2015/01/17/sublime-tex/](http://ry0.github.io/blog/2015/01/17/sublime-tex/)

##その他プラグイン
その他プラグインについては
[http://ry0.github.io/blog/2015/02/15/install-sublimetext2/](http://ry0.github.io/blog/2015/02/15/install-sublimetext2/)
の最後に書いたのでそこをご覧ください。