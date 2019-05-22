" https://thoughtbot.com/blog/vim-splits-move-faster-and-more-naturally
" https://nvie.com/posts/how-i-boosted-my-vim/

execute pathogen#infect()
filetype plugin on
set nocompatible

set title
set shell=bash
set updatetime=1000
set ttyfast
set timeout timeoutlen=1000 ttimeoutlen=50
set autoread
set hidden

colorscheme monokai_pro

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
set listchars=extends:#

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

""" vim tabs and status and splits
set showtabline=2
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
map W <C-W>w
set splitright
set splitbelow

""" -------------------- NERDTree CONFIG -------------------------
" nerd tree opens files in different tabs
" let g:NERDTreeMapOpenInTab='<ENTER>'

" start NERDTree automatically on startup
" autocmd vimenter * NERDTree

let g:NERDTreeWinSize=50
let NERDTreeShowHidden=1

" if NERDTreeTab is open --> NERDTreeToggle, else NERDTreeFind
function! OpenNERDTree()
    if exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
        NERDTreeToggle
    else
        " finds currently open file in NERDTree
        NERDTreeFind
    endif
endfunction

" map toggling nerd tree
nnoremap <C-p> :call OpenNERDTree()<CR>

" Status Line Settings
function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
    let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction


set laststatus=2

let g:airline_powerline_fonts = 1

augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=1

