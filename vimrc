set nocompatible
filetype off
set shell=/bin/bash

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/Vundle.vim')
" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'fatih/vim-go'
call vundle#end()

" Remap pane navigation (doesn't require ctrl-w)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Set horizontal splits (sp) and vertical splits (vsp) to open below and to the right
set splitbelow
set splitright

" Themes
color gruvbox
set background=dark

" Filetypes and syntax highlights
filetype on
syntax on

" Tabs
set tabstop=4   " number of spaces per TAB 
set softtabstop=4    " number of spaces in a tab when editing 
set expandtab   " tabs are spaces 
set shiftwidth=4 smarttab

" Configure Editor UI
set number      " show line numbers
set showcmd     " show commands in bottom bar
set lazyredraw  " redraw only when necessary
set showmatch   " highlight matching parens, brackets, etc.

" Searching
set hlsearch    " highlight search matches - :nohlsearch will remove highlighting
set incsearch   " search as characters are input

" Folding
set foldenable
set foldlevelstart=10   " open most folds by default
set foldmethod=indent   " fold based on indent level

