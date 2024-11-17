#!/bin/bash
set -eu

# 必要なプログラムが既にインストールされていることを確認
RequiredApps=(
	'curl'
	'vim'
	'tmux'
	'node'
)
for RequiredApp in "${RequiredApps[@]}"; do
	if ! command -v ${RequiredApp} &> /dev/null; then
		echo "${RequiredApp} not found"
		exit 1
	fi
done

# このスクリプトのある絶対パスを取得
SCRIPT_DIR="$(cd $(dirname $0); pwd)"

# vim-plug のインストール
# https://github.com/junegunn/vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# dotfiles の配置
cp -r "${SCRIPT_DIR}/dotfiles/." "${HOME}"

# add_dotfiles の配置
for i in $(find "${SCRIPT_DIR}/add_dotfiles" -type f); do
	cat "${i}" >> "${HOME}/$(basename ${i})"
done

# .vimrc に書かれているプラグインのインストール
vim +'PlugInstall --sync' +qa

