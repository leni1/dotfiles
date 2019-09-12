syntax on
filetype plugin on
filetype plugin indent on

set number
set autochdir
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set laststatus=2
set splitbelow
set splitright
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set foldlevel=99
set showcmd
set nowrap
set hlsearch
set incsearch
set ignorecase
set smartcase
set wildmenu
set termguicolors
set conceallevel=0
set clipboard^=unnamedplus 

colorscheme apprentice

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
let g:markdown_syntax_conceal = 0
let g:markdown_minlines = 100

call plug#begin('~/.vim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'moby/moby' , {'rtp': '/contrib/syntax/vim/'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
call plug#end()

