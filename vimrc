" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline'
Plugin 'Shutnik/jshint2.vim'
"Plugin 'tpope/vim-endwise'
"Plugin 'Raimondi/delimitMate'
"Plugin 'sjl/gundo.vim'

" Ruby/Rails
"Plugin 'tpope/vim-rails'

" Color Themes
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'tpope/vim-vividchalk'
"Plugin 'vim-scripts/ColorSchemeMenuMaker'

" Syntax Support
"Plugin 'vim-ruby/vim-ruby'
"Plugin 'tsaleh/vim-tmux'
"Plugin 'tpope/vim-haml'
"Plugin 'tpope/vim-markdown'
Plugin 'kchmck/vim-coffee-script'
"Plugin 'vim-scripts/jade.vim'
"Plugin 'wavded/vim-stylus'
"Plugin 'pangloss/vim-javascript'
"Plugin 'vitaly/vim-gitignore'
Plugin 'groenewege/vim-less'

"Plugin 'vim-scripts/ZoomWin'
"Plugin 'godlygeek/csapprox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set grepprg=git\ grep
let g:grep_cmd_opts = '--line-number'

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

set autoread    "automatically reload files once changed on disk

" Simplified git commands
map gs :Gstatus<CR>
map gc :Gcommit<CR>
map gb :Gblame<CR>

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$']
map <C-n> :NERDTreeToggle<CR>

map cn :cn<CR>

" CtrlP configuration
map <C-p> :CtrlP<CR>
map <C-b> :CtrlPBuffer<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)|node_modules$'


" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {'level': 'warnings'}

" Use modeline overrides
set modeline
set modelines=10

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" Set encoding
set encoding=utf-8

" Recalculate the trailing whitespace warning when idle, and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning

" Recalculate the tab warning flag when idle and after writing
autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning

" recalculate the long line warning when idle and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_long_line_warning

"indent settings
set shiftwidth=2
set tabstop=2
set expandtab
set autoindent

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=4       "deepest fold is 3 levels
set foldlevel=2
set nofoldenable        "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

"display tabs and trailing spaces
"set list
"set listchars=tab:▷⋅,trail:⋅,nbsp:

set formatoptions-=o "dont continue comments when pushing o/O

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"load ftplugins and indent files
filetype plugin on
filetype indent on

"turn on syntax highlighting
syntax on

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

"hide buffers when not displayed
set hidden

"dont load csapprox if we no gui support - silences an annoying warning
if !has("gui")
    let g:CSApprox_loaded = 1
endif

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

"make Y consistent with C and D
nnoremap Y y$

"mark syntax errors with :signs
let g:syntastic_enable_signs=1

"visual search mappings
function! s:VSetSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>

"jump to last cursor position when opening a file
"dont do it when writing a commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
    if &filetype !~ 'svn\|commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    end
endfunction

" Get rid of the toolbar
set go-=T

" Show line numbers
set number

" VimRc auto reload
autocmd bufwritepost .vimrc source $MYVIMRC

" Repam gp to shortly pasted text
nnoremap gp `[v`]

" Syntax coloring lines that are too long just slows down the world
" set synmaxcol=128
set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems

set bomb

filetype plugin indent on

" Disable the annoying .swp files
set noswapfile


