" Download vim plug:
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

" For MacOS use ~/.config/nvim/init.vim
" rustup component add rls rust-analysis rust-src
" :CocInstall coc-rls

set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'voldikss/vim-floaterm'
Plug 'ryanoasis/vim-devicons'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

filetype plugin indent on    " required
syntax on
set colorcolumn=80
set background=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey
set number
set nowrap
set smartcase
set hlsearch
set noerrorbells
set tabstop=4 softtabstop=4
set expandtab
set smartindent
colorscheme gruvbox

map <silent> <C-n> :NERDTreeFocus<CR>
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

map <C-P> :FloatermNew fzf<CR>
map <LEADER>t :FloatermToggle<CR>
command! -nargs=0 Prettier :CocCommand prettier.formatFile

