# Environment

# Work dev server?
if [ -d /disk2/ag ]; then
    export SB="$HOME/sandbox"
    export APPLIB="$SB/src/applib"
    export CONFIG="$SB/src/config"
    export IMG="$SB/src/htdocs/websitesimg/american/html"
    export PYTHONPATH="$SB/src/applib"
    export BASH_ENV=$HOME/.bashrc
    export VIM=/usr/local/share/vim/vim71
    export EDITOR=/usr/local/bin/vim
    export LD_LIBRARY_PATH=$PAYMENTECH_HOME:$LD_LIBRARY_PATH
    export PATH=$HOME/git/bin:$SB/bin:/usr/java/jdk1.6.0_07/bin:$PATH
    #export GIT_SSH=`which sshdo`

    alias activate='. $SB/bin/activate'
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

# Basic TeX
if [ -d "/usr/local/texlive/2012basic/bin/universal-darwin" ]; then
    export PATH=$PATH:/usr/local/texlive/2012basic/bin/universal-darwin
fi

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

# SVN bash completion
if [ -f ~/.svn-completion.bash ]; then
     . ~/.svn-completion.bash
fi

# Git bash completion
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

#
# Bash completion for fabric
#
function _fab_complete() {
    local cur
    if [ -f "fabfile.py" ]; then
        cur="${COMP_WORDS[COMP_CWORD]}"
        COMPREPLY=( $(compgen -W "$(fab -F short -l)" -- ${cur}) )
        return 0
    else
        # no fabfile.py found. Don't do anything.
        return 1
    fi
}

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
    complete -o nospace -F _fab_complete fab
fi

# virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export VIRTUALENV_USE_DISTRIBUTE=1
    export VIRTUAL_ENV_DISABLE_PROMPT=1
    export WORKON_HOME=$HOME/.virtualenvs/envs
    export PROJECT_HOME=$HOME/code
    export VIRTUALENVWRAPPER_HOOK_DIR=$HOME/.virtualenvs/hooks
    export VIRTUALENVWRAPPER_LOG_DIR=$HOME/.virtualenvs/logs
    source /usr/local/bin/virtualenvwrapper.sh
    export PIP_VIRTUALENV_BASE=$WORKON_HOME
    export PIP_RESPECT_VIRTUALENV=true
fi

# pip cache - reduce duplicate downloads
export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache
