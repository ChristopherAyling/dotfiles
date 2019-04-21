set nocompatible

set shell=bash
set updatetime=1000
set ttyfast
set timeout timeoutlen=1000 ttimeoutlen=50
set autoread
set hidden

" turn off arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

set nowrap

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells
set scrolloff=4
set pastetoggle=<F2>

nmap <silent> ,/ :nohlsearch<CR>

set nobackup
set noswapfile

set number
noremap ; :
syntax enable

set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set copyindent
set shiftround
filetype indent on

set showcmd
set cursorline

set wildmenu
set wildmode=list:full

set lazyredraw
set showmatch

nnoremap j gj
nnoremap k gk

set smartcase
set hlsearch
set incsearch
