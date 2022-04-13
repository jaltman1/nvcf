"syntax enable
set autoindent
set expandtab
set tabstop=4
set smarttab
set wrap
set linebreak
set encoding=utf-8
set ruler
set cursorline
set number relativenumber
set mouse=a
set scrolloff=5

" Key remaps
:nnoremap ,p :FZF<Enter>
:inoremap jj <Esc>

call plug#begin()

" General
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Languages
" Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()
