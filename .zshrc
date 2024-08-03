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
export PATH="$PATH:$HOME/Documents/flutter/bin"

# go
export PATH="$PATH:$HOME/go/bin"

# nvm
[ -f "/usr/share/nvm/init-nvm.sh" ] && source /usr/share/nvm/init-nvm.sh

# aliases
[ -e "${HOME}/.aliases" ] && source "${HOME}/.aliases"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/Documents/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/Documents/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/Documents/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/Documents/google-cloud-sdk/completion.zsh.inc"; fi


# fuzzy find
if [[ $(uname) == "Linux" ]]; then
  # maybe for ubuntu
  source /usr/share/doc/fzf/examples/key-bindings.zsh
elif [[ $(uname) == "darwin" ]]; then
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fi

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
if [[ $(uname) == "Linux" ]]; then
  export PATH="$HOME/.anyenv/bin:$PATH"
fi
eval "$(anyenv init -)"

# poetry
export PATH="${HOME}/.local/bin:$PATH"

# local host ip
if [[ $(uname) == "darwin" ]]; then
  export LOCAL_HOST_IP=`ifconfig en0 | grep inet | grep -v inet6 | sed -E "s/inet ([0-9]{1,3}.[0-9]{1,3}.[0-9].{1,3}.[0-9]{1,3}) .*$/\1/" | tr -d "\t"`
fi

# homebrew
export PATH=/opt/homebrew/bin:$PATH

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/shuntaide/.dart-cli-completion/zsh-config.zsh ]] && . /Users/shuntaide/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

# dart
export PATH="$PATH":"$HOME/.pub-cache/bin"
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
