set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Syntax Plugins ----------------------------------- {{{

Plugin 'ekalinin/Dockerfile.vim'

" }}}

" Make Vim Pretty ---------------------------------- {{{

" Color schemes
Bundle "nanotech/jellybeans.vim"
" Add relative line numbers
Bundle 'godlygeek/csapprox'
Bundle 'myusuf3/numbers.vim'
" Syntax
Bundle 'tpope/vim-markdown'
" Better pasting
Bundle 'sickill/vim-pasta'
" Status line
Plugin 'bling/vim-airline'

" }}}

" Version control ---------------------------------- {{{

" Git plugins
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'

aug ft_git
    au!
    au FileType git* setlocal
       \ noexpandtab
       \ tabstop=4
       \ shiftwidth=4
       \ nofoldenable
       \ textwidth=72

" }}}

call vundle#end()

" General settings ---------------------------------- {{{
set undolevels=1000
set history=50
set encoding=utf8
set backup
set backupskip=/tmp/*
set backupdir^=$HOME/.vim/backup//
set dir^=$HOME/.vim/swap//
set undodir^=$HOME/.vim/undo//
set viewdir^=$HOME/.vim/view//
set undofile
set undoreload=1000
set autoread
set autowrite
set spell
set nofsync
set laststatus=2

" }}}

syntax enable
set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme jellybeans

filetype plugin indent on
