source ~/.zsh/git-prompt.sh
setopt PROMPT_SUBST
PROMPT='%F{cyan}%1d%f \$ '
RPROMPT='%F{red}$(__git_ps1 "(%s)")%f \$?=$?'

alias man='LANG=ja_JP.UTF-8 man'
alias today='mkdir -p "${HOME}/Documents/work/$(date "+%Y%m%d")" && cd "$_"'
export PATH="$PATH:${HOME}/.local/bin"
