" Plugin management
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'
    " go
    Plugin 'fatih/vim-go'
    " autocomplete
    Plugin 'Valloric/YouCompleteMe'
    " folding I HATE THIS THING
    "Plugin 'tmhedberg/SimpylFold'
    " python
    Plugin 'vim-scripts/indentpython.vim'
    " syntax checking/highlighting
    Plugin 'vim-syntastic/syntastic'
    " PEP 8 checking
    Plugin 'nvie/vim-flake8'
    " powerline
    Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
    " elixir
    Plugin 'elixir-editors/vim-elixir'
    " markdown
    Plugin 'JamshedVesuna/vim-markdown-preview'
    " status line airline
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    " git wrapper
    Plugin 'fugitive.vim'

    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
    syntax on

" General
set number	        " Show line numbers
set linebreak	        " Break lines at word (requires Wrap lines)
set showbreak=>>  	" Wrap-broken line prefix
"set textwidth=80	" Line wrap (number of cols)
set showmatch	        " Highlight matching brace
set visualbell	        " Use visual bell (no beeping)
 
set hlsearch	        " Highlight all search results
set smartcase	        " Enable smart-case search
set ignorecase	        " Always case-insensitive
set incsearch	        " Searches for strings incrementally
 
set autoindent	        " Auto-indent new lines
set cindent	        " Use 'C' style program indenting
set expandtab	        " Use spaces instead of tabs
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	        " Enable smart-indent
set smarttab	        " Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
set mouse=r             " Use left clic to navigate
set colorcolumn=80
" Advanced
set ruler	                " Show row and column ruler information
 
set undolevels=1000	        " Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
let python_highlight_all=1
syntax on
" encoding
set fileencoding=utf-8  " file encofing
set encoding=utf-8      " Display in term
set fileformat=unix     " Reduce conversion error in file format
" colors
colorscheme elflord
set t_Co=256

" Flag unnecessary whitespaces in red
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Valoric YCM customization
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" simpylfold customization
let g:SimpylFold_docstring_preview = 0
let g:SimpylFold_fold_docstring = 0
let b:SimpylFold_fold_docstring = 0

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"airline config
let g:airline#extension#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:bufferline_echo = 0
set ambiwidth=double
let g:airline_poewrline_fonts = 1
