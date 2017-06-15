# Make ls suck less
alias ls="ls -G"
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export PATH=~/bin:/usr/local/bin:$PATH

# Source .bashrc for PATH setting
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Source .bash_prompt to make prompt pretty
if [ -a ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi

# MacPorts Installer addition on 2014-02-18_at_09:27:54: adding an appropriate PATH variable for use with MacPorts.
if [ -d /opt/local/bin ]; then
    export PATH=/opt/local/bin:/opt/local/sbin:$PATH
fi
# Finished adapting your PATH environment variable for use with MacPorts.

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
