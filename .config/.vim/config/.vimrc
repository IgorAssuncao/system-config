if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Any valid git URL is allowed

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'

"""""" Linting and Completion
Plug 'w0rp/ale'

"""""" Vim read .editorconfig file
Plug 'editorconfig/editorconfig-vim'

"""""" Allow multiple cursors on vim
Plug 'terryma/vim-multiple-cursors'

"""""" Auto insert quotes, parentheses, brackets, braces
Plug 'jiangmiao/auto-pairs'

"""""" Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"""""" Syntax highlighting js
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

"""""" Auto completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

""""" Onedark theme
Plug 'https://github.com/joshdick/onedark.vim'


"Initialize plugin system
call plug#end()

filetype plugin on
set omnifunc=syntaxcomplete#Complete
set number relativenumber
set numberwidth=2
set breakindent
set autoindent
set smartindent
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
set ruler
set cursorline
set colorcolumn=80,120
set nowritebackup
set noswapfile
set nobackup
set t_Co=256
syntax on

let mapleader = ","

" Theme
colorscheme onedark

" airline config
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" airline theme config
let g:airline_theme = 'dark'

" Panels navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Buffers config
""" Buffer navigation
nnoremap bn :bn
nnoremap bp :bp

""" Buffer deletion
nnoremap bd :bd

source ~/.vim/config/ale.vim
source ~/.vim/config/ale-mappings.vim
source ~/.vim/config/nerdtree.vim
source ~/.vim/config/coc.vim
