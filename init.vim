" # Sugar neovim configuration
"
" File: init.vim
" Author: Dawid Żółnowski
" Date: Sun, 01 Oct 2017 20:13:30
"
" This is file is part of the personal Windows neovim configuration
"

" ## Generic Settings
"
" Set vim directory path
let $VIMPATH='C:\Users\sugar\AppData\Local\nvim'

" ## Key Mappings
"
source $VIMPATH\mappings.vim

" ## Plugins
"
source $VIMPATH\plugins.vim


"*****************************************************************************
" Basic Setup
"*****************************************************************************

set ttimeout
set ttimeoutlen=10

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Tabs. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

" Directories for swp files
set nobackup
set noswapfile

" Set some search options
set hlsearch
set noincsearch
set ignorecase
set smartcase

set textwidth=90

" Automatic Indentation
set smartindent

" Set folding method and leave all folds open
set fdm=indent
set foldlevel=99

" File Types
"
" enable filetype detection:
filetype on
filetype plugin on
filetype indent on 

"*****************************************************************************
" Visual Settings
"*****************************************************************************
syntax on
set ruler
set number

" Minimal number of screen lines/column to keep
if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

" Background
set background=dark

" Color Scheme
colorscheme dracula



