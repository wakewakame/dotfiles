setopt PROMPT_SUBST
PROMPT='%F{cyan}%1d%f \$ '

alias today='mkdir -p "${HOME}/Documents/work/$(date "+%Y%m%d")" && cd "$_"'
export PATH="$PATH:${HOME}/.local/bin"
