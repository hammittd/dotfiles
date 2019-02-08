#!/usr/bin/env bash
BASEDIR=$(dirname $0)
cd $BASEDIR

ln -s ${PWD}/bashrc ~/.bashrc
ln -s ${PWD}/zshrc ~/.zshrc
ln -s ${PWD}/tmux.conf ~/.tmux.conf
