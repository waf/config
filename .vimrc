" standard vim options
set nocompatible
syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set smartcase
set smartindent
set nowrap
set t_Co=256
set visualbell t_vb=
set encoding=utf-8
set clipboard=unnamed
set relativenumber
set ofu=syntaxcomplete#Complete
set laststatus=2
let mapleader=","

"vundle config
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'ervandew/supertab'
Plugin 'Lokaltog/powerline'
Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/vim-javascript'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'tomasr/molokai'
call vundle#end()
filetype plugin indent on

" plugin config
let g:SuperTabDefaultCompletionType = "context"
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
au VimEnter * RainbowParenthesesToggle
colorscheme molokai
