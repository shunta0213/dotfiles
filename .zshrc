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
[ -e "${HOME}/.aliases" ] && source "${HOME}/.aliases"

# nvm
[ -f "/usr/share/nvm/init-nvm.sh" ] && source /usr/share/nvm/init-nvm.sh

# Go bin
export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"

# prompt

source ~/.config/prompt/git-prompt.sh

fpath=(~/.config/prompt $fpath)
zstyle ':completion:*:*:git:*' script ~/.config/prompt/git-completion.bash
autoload -Uz compinit && compinit

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f
\$ '
