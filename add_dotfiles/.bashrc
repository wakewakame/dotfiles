PS1='\W[\$?=\[\e[0;32m\]$?\[\e[m\]] \$ '

alias man='LANG=ja_JP.UTF-8 man'
alias today='mkdir -p "${HOME}/Documents/work/$(date "+%Y%m%d")" && cd "$_"'
export LESSCHARSET='utf-8'  # たまに git log の日本語が文字化けする環境が存在する
export PATH="$PATH:${HOME}/.local/bin"
