# Environment

# Work dev server?
if [ -d /disk2/ag ]; then
    export SB="$HOME/sandbox"
    export RB="$HOME/releasebox"
    export PYTHONPATH="$SB/src/applib"
    export BASH_ENV=$HOME/.bashrc
    export VIM=/usr/local/share/vim/vim71
    export EDITOR=/usr/local/bin/vim
    export LD_LIBRARY_PATH=$PAYMENTECH_HOME:$LD_LIBRARY_PATH
    export PATH=$HOME/git/bin:$SB/bin:/usr/java/jdk1.6.0_07/bin:$PATH

    alias activate='. $SB/bin/activate'
    alias relactivate='. $RB/bin/activate'
    alias autoprops='svn propset svn:keywords "Id Rev Date Author"'
    alias mtasc=/home/hzhong/sandbox/src/applib/mtasc/mtasc
fi

# Setting PATH (oh boy)

export PATH=/usr/local/bin:$PATH

# Adobe AIR SDK
if [ -d "/Applications/AIRDSK/bin" ]; then
    PATH="/Applications/AIRSDK/bin:${PATH}"
    export PATH
elif [ -d "/Applications/AdobeAIRSDK/bin" ]; then
    PATH="/Applications/AdobeAIRSDK/bin:${PATH}"
    export PATH
fi

# Setting PATH for MacPython 2.6
# The orginal version is saved in .bash_profile.pysave
if [ -d "/Library/Frameworks/Python.framework/Versions/2.6" ]; then
    PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"
    export PATH
fi


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
if [ -d "/Library/Frameworks/Python.framework/Versions/2.7" ]; then
    PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
    export PATH
fi

# Setting PATH for Python 3.2
# The orginal version is saved in .bash_profile.pysave
if [ -d "/Library/Frameworks/Python.framework/Versions/3.2" ]; then
    PATH="/Library/Frameworks/Python.framework/Versions/3.2/bin:${PATH}"
    export PATH
fi

if [ -d "/opt/subversion/bin" ]; then
    PATH="/opt/subversion/bin:${PATH}"
    export PATH
fi

# MacPorts Installer addition on 2011-04-11_at_16:12:01: adding an appropriate
# PATH variable for use with MacPorts.
if [ -d "/opt/local/bin" ]; then
    export PATH=/opt/local/bin:$PATH
fi
if [ -d "/opt/local/sbin" ]; then
    export PATH=/opt/local/sbin:$PATH
fi
# Finished adapting your PATH environment variable for use with MacPorts.

# ~/bin wins over all others
PATH="~/bin:${PATH}"

# Change the window title of X terminals
case $TERM in
    xterm*|rxvt|Eterm|eterm|aterm)
        PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
        ;;
    screen)                                                                             PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
        ;;
esac


