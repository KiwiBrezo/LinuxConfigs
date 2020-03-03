"Genarl VIM config
"---------------------------------------------------------
set tabstop=4
set shiftwidth=4
set expandtab

set relativenumber

colorscheme xcodedark

let mapleader = ","

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
"---------------------------------------------------------

"Pathogene config
"---------------------------------------------------------
execute pathogen#infect()
"---------------------------------------------------------

"Plugins
"---------------------------------------------------------
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'

call plug#end()
"---------------------------------------------------------

"Lightline.vim config
"---------------------------------------------------------
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
"---------------------------------------------------------

"NERDTree config
"---------------------------------------------------------
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-b> :NERDTreeToggle<CR>
"---------------------------------------------------------

"Autocomplation of brackets,...
"---------------------------------------------------------
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
"---------------------------------------------------------
