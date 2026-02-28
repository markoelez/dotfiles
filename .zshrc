PS1=$'%n@%m%F{203}::%f%F{46}%~%f%F{27}$%f '

bindkey -v
autoload -U colors && colors
autoload -U promptinit && promptinit

export TERM=xterm-256color
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
export CLICOLOR=1

export PATH=$PATH:$HOME/bin
export PATH="/usr/local/sbin:$PATH"

rf() { exec $SHELL; }
gp() { git add . && git commit -m "$1" && git push; }

alias nw='networkquality'
alias cl='claude --dangerously-skip-permissions'
