#!/bin/bash
set -eu

# dotfiles が依存しているプログラムをインストールする

# sudo で実行されていることを確認
if [[ $(id -u) != 0 ]]; then
	echo "please run this script with sudo"
	exit 1
fi

# apt コマンドがあることを確認
if ! command -v apt &> /dev/null; then
	echo "apt command not found"
	exit 1
fi

apt update -y
apt upgrade -y

# install-dotfiles.sh の実行に必要
apt install -y \
	git \
	curl \
	vim \
	tmux \
	nodejs \
	npm \
	manpages-ja \    # man を日本語化する用
	manpages-ja-dev  # man を日本語化する用

# coc.nvim に必要
# https://github.com/neoclide/coc.nvim
npm install -g n
n stable

