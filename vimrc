set nocompatible
filetype off
set shell=/bin/bash

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
set rtp+=~/.vim/bundle
call vundle#begin()
" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'fatih/vim-go'
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'valloric/youcompleteme'
Plugin 'majutsushi/tagbar'
call vundle#end()

let mapleader=";"
" Remap window navigation (doesn't require ctrl-w)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Switching buffers
map <Leader>n :bnext<Return>
map <Leader>b :bprev<Return>
map <Leader>f :ls<CR> :b<Space>
set hidden " don't require a save when switching buffers

" Toggle filetree, nerdtree settings
map <C-n> :NERDTreeToggle<CR>
set mouse=a

" TagBar Toggle
nmap <C-t> :TagbarToggle<CR>

" FZF Search
map <C-f> :Files<CR>
" Set horizontal splits (sp) and vertical splits (vsp) to open below and to the right
set splitbelow
set splitright

" Themes
color gruvbox
set background=dark

" Filetypes and syntax highlights
filetype plugin indent on
syntax on

"Auto-indenting
set autoindent
set smartindent

" Tabs
set tabstop=4   " number of spaces per TAB 
set softtabstop=4    " number of spaces in a tab when editing 
set expandtab   " tabs are spaces 
set shiftwidth=4 smarttab

" Backspace
set backspace=indent,eol,start

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

