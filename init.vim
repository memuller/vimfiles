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
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'editorconfig/editorconfig-vim'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}


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


