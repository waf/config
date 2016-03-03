" standard vim options
syntax enable
set nocompatible
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set guifont=Consolas:h12:cANSI
set guioptions-=T
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set noeb vb t_vb=
set encoding=utf-8
set clipboard=unnamed
set ruler
set number
set relativenumber
set ofu=syntaxcomplete#Complete
set laststatus=2
set ignorecase
set smartcase
set smartindent
set smarttab
set wildmenu
set incsearch
set lazyredraw
set ttyfast
set backupdir=~/vimfiles/temp
set directory=~/vimfiles/temp
set backspace=indent,eol,start
let mapleader=","
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set formatoptions+=j " Delete comment character when joining commented lines
runtime! macros/matchit.vim

"vundle config
filetype off
set rtp+=~/vimfiles/bundle/vundle/
call vundle#rc("~/vimfiles/bundle")
Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle 'Lokaltog/powerline'
Bundle 'mattn/emmet-vim'
Bundle 'vim-scripts/vim-javascript'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'tomasr/molokai'
filetype plugin indent on

" plugin config
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
au VimEnter * RainbowParenthesesToggle
set background=dark
let g:molokai_original = 1
colo molokai
