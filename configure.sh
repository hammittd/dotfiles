#!/usr/bin/env bash
BASEDIR=$(dirname $0)
cd $BASEDIR

if [[ -L ~/.aliases ]]; then
    rm ~/.aliases && ln -s ${PWD}/aliases ~/.aliases
else
    ln -s ${PWD}/aliases ~/.aliases
fi

if [[ -L ~/.bashrc ]]; then
    rm ~/.bashrc && ln -s ${PWD}/bashrc ~/.bashrc
else
	ln -s ${PWD}/bashrc ~/.bashrc
fi

if [[ -L ~/.tmux.conf ]]; then
    rm ~/.tmux.conf && ln -s ${PWD}/tmux/tmux.conf ~/.tmux.conf
else
	ln -s ${PWD}/tmux/tmux.conf ~/.tmux.conf
fi

if [[ -L ~/.vim ]]; then
    rm -R ~/.vim && ln -s ${PWD}/vim/ ~/.vim
else
    ln -s ${PWD}/vim/ ~/.vim
fi

if [[ -L ~/.vimrc  ]]; then
    rm ~/.vimrc && ln -s ${PWD}/vimrc ~/.vimrc
else
    ln -s ${PWD}/vimrc ~/.vimrc
fi

if [[ -L ~/.zshrc.local  ]]; then
    rm ~/.zshrc.local && ln -s ${PWD}/zshrc.local ~/.zshrc.local
else
    ln -s ${PWD}/zshrc.local ~/.zshrc.local
fi

if [[ -L ~/.profile ]]; then
    rm ~/.profile && ln -s ${PWD}/profile.symlink ~/.profile
else
    ln -s ${PWD}/profile.symlink ~/.profile
fi
