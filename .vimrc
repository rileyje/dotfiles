call pathogen#infect()
call pathogen#helptags()

colorscheme solarized
filetype plugin indent on
syntax enable
syntax on


let g:pymode_rope = 0
let g:pymode_folding = 0
let g:pymode_lint_ignore = "E203,W0611,E265,W0401,C901"

let mapleader = '\'
nmap <Leader>u	:noh<CR>
nmap <Leader>p	:set paste!<CR>:set paste?<CR>

set background=dark
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set nocompatible
set ruler
set shiftwidth=4
set showmatch
set showmode
set tabstop=4
set vb
