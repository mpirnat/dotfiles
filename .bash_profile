#alias activate=". ~/Documents/code/python/sandbox/bin/activate"
if [ -d /disk2/ag ]; then
    alias ls="ls --color"
else
    alias ls="ls -G"
fi

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Source .bashrc for PATH setting
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Source .bash_prompt to make prompt pretty
if [ -a ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
