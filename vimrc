execute pathogen#infect()

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l
map <C-n> :NERDTreeToggle %<CR>
map <leader>f :NERDTreeFind<CR>

set ts=2
set sw=2
set expandtab
set number
set foldmethod=indent
set foldlevel=99
set laststatus=2
let g:CoffeeAutoTagDisabled=0

let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" esquema de color
set t_Co=256
set background=dark
filetype plugin indent on
syntax on
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme Tomorrow-Night-Eighties 
"colorscheme base16-twilight 
let mapleader = ','
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
" to only show the tail, e.g. a branch 'feature/foo' show 'foo'
let g:airline#extensions#branch#format = 1   
let g:bufferline_echo = 0
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'


" config CtrlP
let g:ctrlp_working_path_mode = 'ra'
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" mostrar estado Git en status bar
set statusline=%{fugitive#statusline()}
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'

" ruler para 80chars
set colorcolumn=81,161,241,321,401,481,561,641,721,801

" arrancar nerdtree auto si no especifico fichero
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" cerrar vim si la ultima ventana es nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ajustar para sesiones VIM
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

" para syntax jade-handlebars
au BufRead,BufNewFile *.jhbs setfiletype jade 
