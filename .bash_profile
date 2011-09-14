alias activate=". ~/Documents/code/python/sandbox/bin/activate"
alias ls="ls -G"

export LSCOLORS=dxfxcxdxbxegedabagacad

export PATH=/usr/local/bin:/Applications/AIRSDK/bin:$PATH

# Setting PATH for MacPython 2.6
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.2
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.2/bin:${PATH}"
export PATH



# Source my prompt-fu
if [ -a ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi
