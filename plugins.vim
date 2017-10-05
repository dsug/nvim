" # Sugar neovim configuration
"
" File: plugins.vim
" Author: DŻ
" Date: Sun, 01 Oct 2017 22:13:44
"
" This is file is part of the personal Windows neovim configuration
"

" ##  Plugins
"
" Plugins are managed by vim-plug.

call plug#begin('~/home/dsug/nvim-pluggins/')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'
Plug 'gregsexton/MatchTag'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
"Plug 'ervandew/supertab'

call plug#end()

" NERDTree: directory tree viewer
"
"
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '__pycache__']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=0
let NERDTreeCaseSensitiveSort = 1
"
map <F9> :NERDTreeToggle <CR>

" Deoplete
"
"
call deoplete#enable()

" UltiSnips: snippets engine
"
"
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
nnoremap <Leader>se :UltiSnipsEdit<cr>

" Airline
"
"
let g:airline_theme='dracula'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*



let g:syntastic_python_checkers = ['flake8']
let g:syntastic_cpp_checkers = ['clang_check']
