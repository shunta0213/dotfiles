# Created by newuser for 5.9

autoload -Uz compinit promptinit

# completion
compinit
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

promptinit

PROMPT="%F{2}%d %#%f" 
RPROMPT="%F{3}%n[%T]%f"

# aliases
[ -f "${HOME}/.aliases" ] && source "${HOME}/.aliases"
