call plug#begin()
Plug 'brooth/far.vim'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()


call neomake#configure#automake('nw', 750)

map <C-E> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', 'node_modules']
