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

" Helpers ------------------------------------------- {{{

Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'git@github.com:sjbach/lusty.git'
Bundle 'git@github.com:fholgado/minibufexpl.vim.git'

" }}}

call vundle#end()
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
set hidden
set clipboard=unnamedplus
set linebreak
set wrap
" }}}
"
" Buffer settings ------------------------------------ {{{

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc

nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" }}}

syntax enable
set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme jellybeans

filetype plugin indent on
syn on se title
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set noexpandtab
