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
set foldmethod=indent

colorscheme apprentice

let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

call plug#begin('~/.vim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'moby/moby' , {'rtp': '/contrib/syntax/vim/'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'vimwiki/vimwiki'
call plug#end()
