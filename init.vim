

set encoding=utf-8
set number relativenumber
set numberwidth=2
set clipboard=unnamed
syntax enable
set noswapfile
set scrolloff=7
set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set showmatch

let mapleader = ' '

call plug#begin('~/.vim/plugged')
"theme
Plug 'morhetz/gruvbox'

Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'

Plug 'christoomey/vim-tmux-navigator' "moverse entre archivos
"se usa h y l para moverse funciona en paneles

call plug#end()

colorscheme gruvbox

let g:airline_theme='gruvbox'
"====================Colorizer=========================
if(has("termguicolors"))
    set termguicolors
endif

lua require 'colorizer'.setup()
"=====================NERDCommenter====================
nmap <C-_> <Plug>NERDCommenterToggle
"nmap <C-_> <Plug>NERDCommenterToggle<CR>gv

"====================NERDTree==========================
let NERDTreeQuitOnOpen=1
nmap <F2> :NERDTreeToggle<CR>

"===================Easymotion========================
nmap <leader>s <plug>(easymotion-s2)



"===================shorcutsvim======================
nmap <leader>w :w<CR> 
"lo mismo que hacer :w o :q
nmap <leader>q :q<CR>

"actualizar cambios nvim
nmap <leader>u :so %<CR>
