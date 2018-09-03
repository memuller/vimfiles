let $VTE_VERSION="100"

set encoding=utf-8
set ignorecase
set number

""set termguicolors
set background=dark

set expandtab
set autoindent
set softtabstop=2
set shiftwidth=2
set tabstop=2

filetype plugin indent on

call plug#begin()
Plug 'brooth/far.vim'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'

Plug 'w0rp/ale'

""Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'editorconfig/editorconfig-vim'

Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'leafgarland/typescript-vim'
Plug 'junegunn/goyo.vim'

call plug#end()


call neomake#configure#automake('nw', 750)

map <C-E> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', 'node_modules']

set noshowmode
let g:lightline = { 'colorscheme': 'solarized' }

"fzf
map ; :FZF<CR>

let g:deoplete#enable_at_startup = 1

let g:javascript_plugin_jsdoc = 1

