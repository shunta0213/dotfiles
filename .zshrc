# completion
autoload -Uz compinit promptinit

compinit
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

# pnpm
export PNPM_HOME="/Users/shuntaide/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# flutter
export PATH="$PATH:/Users/shuntaide/Documents/flutter/bin"
export PATH="$PATH:/Users/shuntaide/Library/Python/3.9/bin"

# go
export PATH="$PATH:/Users/shuntaide/go/bin"

# local host ip
export LOCAL_HOST_IP=`ifconfig en0 | grep inet | grep -v inet6 | sed -E "s/inet ([0-9]{1,3}.[0-9]{1,3}.[0-9].{1,3}.[0-9]{1,3}) .*$/\1/" | tr -d "\t"`

# nvm
[ -f "/usr/share/nvm/init-nvm.sh" ] && source /usr/share/nvm/init-nvm.sh

# aliases
[ -e "${HOME}/.aliases" ] && source "${HOME}/.aliases"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shuntaide/Documents/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/shuntaide/Documents/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/shuntaide/Documents/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/shuntaide/Documents/google-cloud-sdk/completion.zsh.inc'; fi


# fuzzy find
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# prompt
promptinit
source ~/.config/prompt/git-prompt.sh

fpath=(~/.config/prompt $fpath)
zstyle ':completion:*:*:git:*' script ~/.config/prompt/git-completion.bash

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f
\$ '

# anyenv
eval "$(anyenv init -)"

# poetry
export PATH="${HOME}/.local/bin:$PATH"
