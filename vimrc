" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-scripts/ColorSchemeMenuMaker'
Bundle 'kien/ctrlp.vim'
Bundle 'godlygeek/csapprox'
Bundle 'vim-scripts/endwise.vim'
Bundle 'tpope/vim-fugitive'


" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Store lots of :cmdline history
set history=1000

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

set nowrap      "dont wrap lines
set linebreak   "wrap lines at convenient points

filetype plugin indent on


