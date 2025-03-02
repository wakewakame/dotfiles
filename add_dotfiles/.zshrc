setopt PROMPT_SUBST
PROMPT='%F{cyan}%1d%f \$ '

alias today='mkdir -p "${HOME}/Documents/work/$(date "+%Y%m%d")" && cd "$_"'
