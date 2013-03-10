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

"vundle config
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/powerline'
Bundle 'mattn/zencoding-vim'
Bundle 'vim-scripts/vim-javascript'
Bundle 'vim-scripts/VimClojure'
Bundle 'git://git.wincent.com/command-t.git'
filetype plugin indent on

" plugin config
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
let vimclojure#ParenRainbow=1
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
