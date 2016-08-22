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
set backupdir=/users/will/vimfiles/temp
set directory=/users/will/vimfiles/temp
set backspace=indent,eol,start
let mapleader=","
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set formatoptions+=j " Delete comment character when joining commented lines
runtime! macros/matchit.vim

"vundle config
filetype off
set rtp+=/users/will/vimfiles/bundle/Vundle.vim/
call vundle#begin("/users/will/vimfiles/bundle")
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/vim-javascript'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tomasr/molokai'
Plugin 'PProvost/vim-ps1'
call vundle#end()
filetype plugin indent on

" plugin config
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
set rtp+=/users/will/vimfiles/bundle/powerline/powerline/bindings/vim
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
au VimEnter * RainbowParenthesesToggle
set background=dark
let g:molokai_original = 1
colo molokai
