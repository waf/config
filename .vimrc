set nu
colo molokai
set clipboard=unnamed
syntax enable
filetype on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set smartcase
set nowrap
set visualbell t_vb=
set encoding=utf-8
set relativenumber

"let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
set ofu=syntaxcomplete#Complete
let g:pep8_map='<leader>8'
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
call pathogen#infect() 

let vimclojure#ParenRainbow=1
