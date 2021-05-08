# dotfiles
.vimrcや.zshrcをgitで管理するためのリポジトリ。
## 管理方法
1. /home/${USER}/dotfilesディレクトリを作成
- ```mkdir dotfiles```
2. 管理したい設定ファイルをdotfilesに移動
- ```mv .hogerc dotfiles/
4. /home/${USER}に移動したファイルと同じ名前でシンボリックリンクを貼る
- ln -sf ~/dotfiles/.hogerc .hogerc
