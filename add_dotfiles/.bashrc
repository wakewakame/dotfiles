PS1='\W[\$?=\[\e[0;32m\]$?\[\e[m\]] \$ '

alias today='mkdir -p "${HOME}/Documents/work/$(date "+%Y%m%d")" && cd "$_"'
export PATH="$PATH:${HOME}/.local/bin"
