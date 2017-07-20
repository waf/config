" standard vim options
let $VIMHOME=expand('<sfile>:p:h:h') " set to absolute path. some plugins on windows seem to require it
syntax enable
set renderoptions=type:directx
set nocompatible
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set guifont=Powerline_Consolas:h12:cANSI " https://github.com/liangfeng/consolas-font-for-airline
set guioptions-=m
set guioptions-=T
set lines=30
set columns=100
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
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
set noeb vb t_vb=
set shell=powershell
set shellcmdflag=-command
runtime! macros/matchit.vim
" make 'K' split lines. the opposite of 'J' (join lines)
nnoremap K <Esc>i<CR><Esc>

"vundle config
filetype off
set rtp+=~/vimfiles/bundle/Vundle.vim/
call vundle#begin("~/vimfiles/bundle")
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/vim-javascript'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'PProvost/vim-ps1'
Plugin 'dracula/vim'
Plugin 'leafgarland/typescript-vim'
call vundle#end()
filetype plugin indent on

" plugin config
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
au VimEnter * RainbowParenthesesToggle
set rtp+=~/vimfiles/bundle/powerline/powerline/bindings/vim
set background=dark
colo dracula
if has("gui_running")
    let g:airline_powerline_fonts = 1
endif


map H ^
map L $

" From http://vimrcfu.com/snippet/14
vnoremap < <gv
vnoremap > >gv
