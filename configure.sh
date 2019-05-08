#!/bin/bash

if test ! $(which brew)
then
    echo 'Installing Homebrew...'

    if test "$(uname)" = "Darwin"
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    elif test "$(expr substr $(uname -s) 1 5)" = "Linux" 
    then
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
    fi
fi

echo 'Updating package lists...'
brew update

if test $(which zsh)
    echo "Zsh already installed"
else 
    echo "Zsh not found. Installing zsh..."
    echo ''
    brew install zsh zsh-completions
fi

if [ -d ~/.oh-my-zsh ]; then
    echo ''
    echo 'Oh My Zsh already installed'
else
    echo 'Oh My Zsh not found. Installing Oh My Zsh...'
    echo ''
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# vimrc vundle install
echo ''
echo "Now installing vundle..."
echo ''
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Nerdtree for vim install
echo ''
echo "Now installing Nerdtree for Vim..."
echo ''
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

