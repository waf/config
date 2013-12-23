" standard vim options
colo molokai
syntax enable
set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set smartcase
set nowrap
set visualbell t_vb=
set encoding=utf-8
set clipboard=unnamed
set relativenumber
set ofu=syntaxcomplete#Complete
set laststatus=2
set smartindent
let mapleader=","

"vundle config
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle 'Lokaltog/powerline'
Bundle 'mattn/zencoding-vim'
Bundle 'vim-scripts/vim-javascript'
Bundle 'gerw/vim-latex-suite'
Bundle 'guns/vim-clojure-static'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'tpope/vim-fireplace'
filetype plugin indent on

" plugin config
let g:SuperTabDefaultCompletionType = "context"
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
au VimEnter * RainbowParenthesesToggle
set background=dark
