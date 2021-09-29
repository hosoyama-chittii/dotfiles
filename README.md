# dotfiles
.vimrcや.zshrcをgitで管理するためのリポジトリ。
## 管理方法
1. /home/${USER}/dotfilesディレクトリを作成
dotofilesをクローンする
4. /home/${USER}に移動したファイルと同じ名前でシンボリックリンクを貼る
- ln -sf ~/dotfiles/.hogerc .hogerc
## 各種設定ファイルの場所
- ~/.config/vim
- ~/.zshrc
- ~/.config/i3/config
- ~/.config/picom/picom.conf
