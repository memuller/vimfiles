let $VTE_VERSION="100"

set encoding=utf-8
set ignorecase
set number

""set termguicolors
set background=dark

call plug#begin()
Plug 'brooth/far.vim'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()


call neomake#configure#automake('nw', 750)

map <C-E> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', 'node_modules']

let g:deoplete#enable_at_startup = 1
