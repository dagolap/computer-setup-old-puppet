"
" Vundle setup
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
if has("win32") || has("win16")
  set rtp+=~/vimfiles/bundle/Vundle.vim/ 
  let path='~/vimfiles/bundle'
  call vundle#begin(path)
else
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
endif
Plugin 'gmarik/Vundle.vim'

"" Vundle plugins
Plugin 'tpope/vim-fugitive'             " Fugitive: Git-plugin for vim
Plugin 'kien/ctrlp.vim'                 " Ctrlp: Fuzzy search plugin
Plugin 'quanganhdo/grb256'              " GRB256: Color scheme by Gary Bernhard
Plugin 'scrooloose/syntastic'           " Linting of all kinds of languages
Plugin 'scrooloose/nerdtree'            " Tree structure overview
Plugin 'fatih/vim-go'                   " Golang support
Plugin 'lukerandall/haskellmode-vim'    " Haskell support
Plugin 'mattn/emmet-vim'                " Fast HTML coding

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Custom config below

" Colors and stuff
set background=dark
colorscheme grb256

" Font settings based on OS
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 14
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" General editing
syntax on

let mapleader=","
set textwidth=0

set nu          " Line numbering
set nocp        " Remove compatibility mode, allowing proper tab completion
set sm          " Show matching brackets
set si          " Smart indentation
set nohlsearch    " Highlight all search results

set bs=2        " Allows backspacing before start of indent, back around eol etc.
set wrap
set lbr

set expandtab    " Insert spaces instead of tab
set tabstop=4    " Tabs should align at every 4 chars
set shiftwidth=4 " Number of spaces for indentation


" Python
autocmd FileType python set omnifunc=pythoncomplete#Complete

" Ruby
autocmd FileType ruby set omnifunc=rubycomplete#Complete

" Haskell
let g:haddock_browser="/usr/bin/chromium-browser"
