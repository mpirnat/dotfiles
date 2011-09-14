#alias activate=". ~/Documents/code/python/sandbox/bin/activate"
alias ls="ls -G"

export LSCOLORS=dxfxcxdxbxegedabagacad

# Source .bashrc for PATH setting
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Source .bash_prompt to make prompt pretty
if [ -a ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi
