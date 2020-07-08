" vimrc by rthedin

" General settings
syntax on
color default
set showcmd
set nobackup
set ruler
set ignorecase
set smartcase
set number relativenumber
filetype on

" set leader
let mapleader = " "

" Put filename on window title
set title

" Assigning capital Q to also quit
command! -bar -bang Q quit<bang>

" Indentation
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent

" undo dir
set undodir=~/.vim/undodir
set undofile

" incremental search 
set incsearch

" Plug-ins
" When done adding new plug-ins, run :PlugInstall
" To delete/update, run :PlugClean
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

let g:gruvbox_invert_selection='0'
colorscheme gruvbox 
set background=dark


" ----- REMAPS ------
" --- Remaps - insert non-recursive map
inoremap jj <Esc>

" --- Remaps - normal non-recursive map
" Allow backspace to delete chars in normal mode
nnoremap <BS> X
" from normal mode, insert single charactor
nnoremap <C-i> i <Esc>r
" insert new lines without leaving normal mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" For toggleing nerdtree
map <F1> :NERDTreeToggle<CR>
" toggle wrap
map <F2> :set wrap!<CR>

" window management
nnoremap <leader><space> :wincmd w<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>+ <C-w>3+<CR>
nnoremap <leader>- <C-w>3-<CR>
nnoremap <leader>> <C-w>3><CR>
nnoremap <leader>< <C-w>3<<CR>
nnoremap <leader>= <C-w>=<CR>
