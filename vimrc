execute pathogen#infect()

let mapleader = '´'
filetype plugin indent on
syntax on

" improve navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" move through buffers
map <leader>k :bn<cr>
map <leader>j :bp<cr>
map <leader>yy "*y
map <leader>pp "*p

" NERDTree maps and opts
map <C-n> :NERDTreeToggle %<CR>
map <leader>f :NERDTreeFind<CR>

let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" CtrlP various modes mapping and opts
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

let g:ctrlp_working_path_mode = 'ra'
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" more options
set ts=2
set sw=2
set expandtab
set number
set foldmethod=indent
set foldlevel=99
set laststatus=2
set autowrite
set ttimeoutlen=50

let g:CoffeeAutoTagDisabled=0

" esquema de color
set t_Co=256
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme Tomorrow-Night-Eighties 
"colorscheme base16-twilight 

" Various vim-airline configs
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
" to only show the tail, e.g. a branch 'feature/foo' show 'foo'
let g:airline#extensions#branch#format = 1   
let g:bufferline_echo = 0
" get rid of the default mode indicator
set noshowmode 
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

" map para Ctrl-P Funky (lista de funciones)
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" show GIT status in status bar 
set statusline=%{fugitive#statusline()}
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'

" ruler at 80chars
set colorcolumn=81,161,241,321,401,481,561,641,721,801

" show NERDTree if no file is specified 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close Vim if last window is NERDTree 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" custom options for saving Vim session
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

" open jade-handlebars files as jade files
au BufRead,BufNewFile *.jhbs setfiletype jade 
