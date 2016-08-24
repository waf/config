" standard vim options
set nocompatible
syntax enable
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
set backupdir=~/.vim/temp
set directory=~/.vim/temp
set backspace=indent,eol,start
let mapleader=","
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set formatoptions+=j " Delete comment character when joining commented lines
runtime! macros/matchit.vim

"vundle config
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/vim-javascript'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tomasr/molokai'
call vundle#end()
filetype plugin indent on
" plugin config
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:airline_theme = "powerlineish"
au VimEnter * RainbowParenthesesToggle
colorscheme molokai
