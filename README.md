# dotfiles

Linux環境で使用する自分用の設定ファイル群です。
以下のプログラムの設定ファイルが含まれます。

- `vim`
	- `.vimrc`
- `tmux`
	- `.tmux.conf`
- `git`
	- `.gitconfig`
	- `.config/git/ignore`

# セットアップ

必要なプログラムのインストールと dotfiles の配置を行います。

## debian系

```bash
git clone https://github.com/wakewakame/dotfiles.git
cd dotfiles
sudo ./install-programs.sh
./install-dotfiles.sh
```
