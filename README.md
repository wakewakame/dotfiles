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

# 手動で必要な作業 (自動化する方法がわからなかった...)

## language server のインストール

vim を起動し、以下のコマンドを実行

```
:CocInstall coc-clangd
:CocInstall coc-rust-analyzer
:CocInstall coc-go
:CocInstall coc-tsserver
:CocInstall coc-jedi
```

