#!/usr/bin/env bash
BASEDIR=$(dirname $0)
cd $BASEDIR

if [[ -e ~/.aliases ]];
    then
        rm ~/.aliases && ln -s ${PWD}/aliases ~/.aliases
    else
        ln -s ${PWD}/aliases ~/.aliases
fi

if [[ -e ~/.bashrc ]];
    then
        rm ~/.bashrc && ln -s ${PWD}/bashrc ~/.bashrc
    else
	ln -s ${PWD}/bashrc ~/.bashrc
fi

if [[ -e ~/.tmux.conf ]];
    then
        rm ~/.tmux.conf && ln -s ${PWD}/tmux.conf ~/.tmux.conf
    else
	ln -s ${PWD}/tmux.conf ~/.tmux.conf
fi

if [[ -d ~/.vim ]];
    then
        rm -R ~/.vim && ln -s ${PWD}/vim/ ~/.vim
    else
        ln -s ${PWD}/vim/ ~/.vim
fi

if [[ -e ~/.vimrc  ]];
    then
        rm ~/.vimrc && ln -s ${PWD}/vimrc ~/.vimrc
    else
        ln -s ${PWD}/vimrc ~/.vimrc
fi

if [[ -e ~/.zshrc.local  ]];
    then
        rm ~/.zshrc.local && ln -s ${PWD}/zshrc.local ~/.zshrc.local
    else
        ln -s ${PWD}/zshrc.local ~/.zshrc.local
fi
