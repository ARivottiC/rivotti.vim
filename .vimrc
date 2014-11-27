"
" Global Configuration

set nocompatible

set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set tenc=utf-8

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set autoindent          " always set autoindenting on
set copyindent          " copy the previous indentation on autoindenting

set expandtab           " convert all tabs to space
set shiftround          " indent/outdent to nearest tabstops
set shiftwidth=4        " indent/outdent by four columns
set smartindent
set softtabstop=4
set tabstop=4           " indentation levels every four columns

set hlsearch            " highlight search
set incsearch           " incremental search
set ignorecase          " ignore case when searching
set smartcase           " ignore case if search pattern is all lowercase,
                        "    case-sensitive otherwise

set visualbell          " use visual bell instead of beeping
set noerrorbells        " no bells

set history=1000        " remember more commands and search history
set undolevels=1000     " use many muchos levels of undo

set wildignore=*.swp,*.bak,*.pyc,*.class
set title               " change the terminal's title"

set nobackup            " use version control FFS!
set noswapfile          " use version control FFS!

set nopaste             " use Ctrl + Shift + V FFS!
"set mouse=a            " Mouse available in all operations
set scrolloff=2         " lines of context visible around the cursor at all times
set showmatch           " show matching brackets
set tabpagemax=30       " Max tabs with -p option
set cursorline          " active cursor line highlight
set number
set clipboard=unnamedplus
set modeline            " allow vim modes with comments
set hidden
set omnifunc=syntaxcomplete#Complete

let mapleader=","

call pathogen#infect()

filetype plugin on
filetype indent on

syntax on               " syntax hilighting in vim
set bg=light
colorscheme rivotti256
