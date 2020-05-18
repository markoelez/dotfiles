ZSH_THEME="robbyrussell"

PS1="%n %{%F{red}%}::%{%f%} %{%F{green}%}%~ %{%F{magenta}%}>%{%f%} "

bindkey -v

autoload -U colors && colors
autoload -U promptinit && promptinit


export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/marko/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/marko/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/marko/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/marko/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda activate dl
