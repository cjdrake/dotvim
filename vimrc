" Filename: vimrc

" This must be first, because it changes other options
set nocompatible

call pathogen#infect()

"==============================================================================
" Editing behavior
"==============================================================================

filetype plugin indent on

set autochdir

set termencoding=utf-8
set encoding=utf-8

set guifont=Monospace\ 14

" Miscellaneous
set nowrap
set ww=<,>
set backspace=indent,eol,start

set tabstop=4

set number " Precede each line with its line number
if has("gui_running")
    set cursorline " Highlight the screen line of the cursor
endif
set ruler       " Show the line and column number of the cursor position, separated by a comma
set showmatch   " When a bracket is inserted, briefly jump to the matching one
set scrolloff=4 " Minimal number of screen lines to keep above and below the cursor

" Indentation
set autoindent   " Copy indent from current line when starting a new line.
set copyindent   " Copy the strucure of the existing lines indent when autoindenting a new line.
set shiftwidth=4 " Number of spaces to use for each step of (auto)indent.
set shiftround   " Round indent to multiple of 'shiftwidth'.
set smarttab     " A <Tab> in front of a line inserts blanks according to 'shiftwidth'.

" Search
set hlsearch   " When there is a previous search pattern, highlight all its matches.
set incsearch  " While typing a search command, show where the pattern, as it was typed so far, matches.
set ignorecase " Ignore case in a search command.
set smartcase  " Ignore case if search pattern is all lowercase.

" Invisible characters
if has("gui_running")
    set list
    set listchars=tab:»·,trail:·
endif

"==============================================================================
"= Vim behavior
"==============================================================================

set nobackup   " Do not make a backup before overwriting a file.
set noswapfile " Do not use a swapfile for the buffer.
set backupcopy=yes

"==============================================================================
"= Highlighting
"==============================================================================

colorscheme desert
syntax on

"==============================================================================
"= GUI Settings
"==============================================================================

map <MiddleMouse> <Nop>
map <F5> :NERDTree<cr>
