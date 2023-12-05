ZSH_THEME="robbyrussell"

PS1='%n %{%F{203}%}::%{%f%} %{%F{46}%}%~ %F{21}% '$'\U1692'' %{%f%}'

bindkey -v

autoload -U colors && colors
autoload -U promptinit && promptinit

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

export PATH=$PATH:$HOME/bin

export PATH="/usr/local/sbin:$PATH"

export TERM=xterm-256color
