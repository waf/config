" standard vim options
let $VIMHOME=expand('<sfile>:p:h:h') " set to absolute path. some plugins on windows seem to require it
syntax enable
set renderoptions=type:directx
set nocompatible
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set guifont=Cascadia\ Mono\ PL:h14:cANSI " https://github.com/liangfeng/consolas-font-for-airline
set guioptions-=m
set guioptions-=T
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
set undodir=~/vimfiles/temp
set backspace=indent,eol,start
let mapleader=","
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set formatoptions+=j " Delete comment character when joining commented lines
set noeb vb t_vb=
set shell=C:\Windows\System32\wsl.exe
set shellpipe=|
set shellredir=>
set shellcmdflag=
runtime! macros/matchit.vim
" make 'K' split lines. the opposite of 'J' (join lines)
nnoremap K <Esc>i<CR><Esc>

"vim-plug config
call plug#begin()
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/vim-javascript'
Plug 'kien/rainbow_parentheses.vim'
Plug 'PProvost/vim-ps1'
Plug 'dracula/vim'
Plug 'leafgarland/typescript-vim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'
call plug#end()

" plugin config
let g:OmniSharp_server_stdio = 1
let g:airline#extensions#ale#enabled = 1
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

" fold configuration
set foldcolumn=1
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax
au FileType html setlocal foldmethod=indent
autocmd FileType html,xml :%foldopen!

map H ^
map L $

" From http://vimrcfu.com/snippet/14
vnoremap < <gv
vnoremap > >gv

com! FormatXML :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"
com! FormatJSON :%!python3 -m json.tool
