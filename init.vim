set nocompatible
set number
set ruler
set clipboard+=unnamedplus
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set nobackup
set undodir="~\AppData\Local\nvim\undodir"
set undofile
set hidden
set path+=**
set wildmenu

let g:python_host_prog = 'C:\Python27\python.exe'
let g:python3_host_prog = 'C:\Python38\python.exe'

call plug#begin('~\AppData\Local\nvim\plugged')
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'challenger-deep-theme/vim', {'as' : 'challenger-deep'}
call plug#end()

if has('nvim') || has('termguicolors')
	set termguicolors
endif

colorscheme challenger_deep
let g:lightline = { 'colorscheme': 'challenger_deep' }

