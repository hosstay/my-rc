" General Settings
set relativenumber
set nohlsearch
set hidden
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set noswapfile
" set nobackup
" set undodir=~/.vim/undodir
" set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set isfname+=@-@
set cmdheight=1
set updatetime=50
set shortmess+=c
" set colorcolumn=80
set splitbelow
set splitright

" Auto-magically installs vim-plug for following plugins
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

" Color Scheme
Plug 'gruvbox-community/gruvbox'

" File Explorer
Plug 'preservim/nerdtree'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
" run commands like: 'Git status'

call plug#end()

let mapleader = " "

" colors
set background=dark
colorscheme gruvbox

" File Explorer
nnoremap <leader>f :NERDTree<CR>

" fzf
"set rtp+=~/.fzf
nnoremap <leader>t :Files<CR>
" <c-v> to open vert split

" Split Navigation
nmap <c-j> <c-w><up>
nmap <c-k> <c-w><down>
nmap <c-h> <c-w><left>
nmap <c-l> <c-w><right>
