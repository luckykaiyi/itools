syntax on
set tabstop=4
"set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set history=4000
set mouse=v
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
set number
set smarttab
set expandtab
set backspace=indent,eol,start
set mouse=a

command Q : q
command W : w
command Wq : wq
command WQ : wq


" show the percentage of the content 
set ru

" keep matching while you enter any character of searching keywords 
"set is

"set whichwrap=b,s,<,>,[,]

if &term=="xterm"
set t_Co=8
set t_Sb=^[[4%dm
set t_Sf=^[[3%dm
endif

filetype off
filetype plugin on
filetype indent on
set enc=utf8
set fencs=utf8,gbk

" highlight search
set hlsearch
" open file and go to the line last time you out
au BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \     exe "normal! g'\"" |
    \ endif





" bundle



set nocompatible              " be iMproved
filetype off                  " required!

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#rc()
call vundle#begin()
Plugin 'honza/vim-snippets'

" let Vundle manage Vundle
" required! 
Bundle 'kien/ctrlp.vim'
Bundle 'fatih/vim-go'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'scrooloose/nerdcommenter'
Bundle 'pangloss/vim-javascript'
Bundle 'ervandew/supertab'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/a.vim'
Bundle 'kchmck/vim-coffee-script'

call vundle#end()

filetype plugin indent on     " required!
