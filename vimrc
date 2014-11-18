set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Syntax Plugins ----------------------------------- {{{

Plugin 'scrooloose/syntastic'
Plugin 'ekalinin/Dockerfile.vim'
Bundle 'chase/vim-ansible-yaml'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'git@github.com:Glench/Vim-Jinja2-Syntax.git'

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

" Helpers ------------------------------------------- {{{

Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

" }}}
"
" Mappings ------------------------------------------- {{{

" Big W to little W
:command WQ wq
:command Wq wq
:command W w
:command Q q

" Pasing
set pastetoggle=<F2>

" }}}

" General settings ---------------------------------- {{{
set undolevels=1000
set history=50
set encoding=utf8
set backup
set backupskip=/tmp/*
set backupdir=~/.vim/backup//
set dir=~/.vim/swap//
set undodir=~/.vim/undo//
set viewdir=~/.vim/view//
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
