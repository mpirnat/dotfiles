#!/bin/sh

cd $HOME

if [ ! -f $HOME/.bash_profile ]; then
    ln -s $HOME/Code/dotfiles/.bash_profile ./
fi

if [ ! -f $HOME/.bash_prompt ]; then
    ln -s $HOME/Code/dotfiles/.bash_prompt ./
fi

if [ ! -f $HOME/.bashrc ]; then
    ln -s $HOME/Code/dotfiles/.bashrc ./
fi

if [ ! -f $HOME/.git-completion.bash ]; then
    ln -s $HOME/Code/dotfiles/.git-completion.bash ./
fi

if [ ! -f $HOME/.gitconfig ]; then
    ln -s $HOME/Code/dotfiles/.gitconfig ./
fi

if [ ! -f $HOME/.gitignore ]; then
    ln -s $HOME/Code/dotfiles/.gitignore ./
fi

if [ ! -d $HOME/.vim ]; then
    ln -s $HOME/Code/dotfiles/.vim ./
fi

if [ ! -f $HOME/.vimrc ]; then
    ln -s $HOME/Code/dotfiles/.vimrc ./
fi

if [ ! -d $HOME/bin ]; then
    mkdir $HOME/bin
fi

if [ ! -f $HOME/bin/ack ]; then
    curl https://beyondgrep.com/ack-2.18-single-file > ~/bin/ack && chmod 0755 $HOME/bin/ack
fi
