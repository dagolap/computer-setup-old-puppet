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
Plugin 'tpope/vim-fugitive'        " Fugitive: Git-plugin for vim
Plugin 'kien/ctrlp.vim'            " Ctrlp: Fuzzy search plugin
Plugin 'quanganhdo/grb256'         " GRB256: Color scheme by Gary Bernhard


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

colorscheme grb256

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
