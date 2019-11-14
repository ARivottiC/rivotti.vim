"
" Global Configuration

set nocompatible

set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set tenc=utf-8

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"" Indent
set autoindent          " always set autoindenting on
set copyindent          " copy the previous indentation on autoindenting
set expandtab           " convert all tabs to space
set shiftround          " indent/outdent to nearest tabstops
set shiftwidth=4        " indent/outdent by four columns
set smartindent
set softtabstop=4
set tabstop=4           " indentation levels every four columns

" Search settings
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
set nowritebackup
set noswapfile          " use version control FFS!

" Scrolling, nicer scrolling when wrapping
set sidescroll=1
set sidescrolloff=10
set scrolloff=2         " lines of context visible around the cursor at all times

" A more sensible file tab completion
set wildmode=longest,list,full
set wildmenu

set lazyredraw          " do not redraw while running macros (much faster) (LazyRedraw)"
set nopaste             " use Ctrl + Shift + V FFS!
"set mouse=a            " Mouse available in all operations
set showmatch           " show matching brackets
set tabpagemax=30       " Max tabs with -p option
set cursorline          " active cursor line highlight
set number relativenumber
set clipboard=unnamed
set modeline            " allow vim modes with comments
set hidden
set omnifunc=syntaxcomplete#Complete
set switchbuf+=useopen

" paths used with gf
set path=.,,$ANDROID_BUILD_TOP,$ANDROID_BUILD_TOP/$QCPATH,$ANDROID_PRODUCT_OUT 

" search for tags file in the current dir and every parent until it finds one
set tags=./.tags;

call pathogen#infect()

filetype plugin on
filetype indent on

syntax on               " syntax hilighting in vim
set bg=light
colorscheme rivotti256

" overrides
let mapleader=","
let &titleold=$TITLE

