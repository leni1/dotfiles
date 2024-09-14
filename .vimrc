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
" This is for gruvbox to look pretty (to me ;))
" by default it is a light mode which I don't enjoy
" remember to comment out when trying out other colors
set bg=dark

colorscheme apprentice
" Comment the line above
" and uncomment the line below
" to change color scheme
" for whatever reason, apprentice no longer looks good
" in classic Ubuntu/Debian/Fedora terminals
" colorscheme gruvbox

let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

call plug#begin('~/.vim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'vimwiki/vimwiki'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tonekk/vim-ruby-capybara'
Plug 'tpope/vim-bundler'
Plug 'flazz/vim-colorschemes'
Plug 'FooSoft/vim-argwrap'
call plug#end()
