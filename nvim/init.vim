" Include in modularized commands
source $HOME/.config/nvim/modules/sets.vim
source $HOME/.config/nvim/modules/remaps.vim

" Plugins
call plug#begin('~/.vim/plugged')
  
" Color Scheme
Plug 'gruvbox-community/gruvbox'

" Git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" File Explorer
Plug 'preservim/nerdtree'

" Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'

" fzf
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

source $HOME/.config/nvim/modules/colors.vim
source $HOME/.config/nvim/modules/treesitter.vim
source $HOME/.config/nvim/modules/telescope.vim
