#
# ~/.bashrc
#

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

. "$HOME/.cargo/env"
source /home/shuntaide/extra/completions/alacritty.bash
