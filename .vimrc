Plug 'ARivottiC/rivotti256.vim', { 'branch': 'develop' }
Plug 'gerw/vim-HiLinkTrace'
Plug 'lzap/vim-selinux'
Plug 'ntpeters/vim-better-whitespace'
Plug 'obcat/vim-sclow'
Plug 'pangloss/vim-javascript'
Plug 'powerline/powerline'
Plug 'preservim/nerdtree'
Plug 'rubberduck203/aosp-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-apathy'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/AutoComplPop'

"
" Plugins with aditional configurations
"
Plug 'Raimondi/delimitMate'
let delimitMate_excluded_ft = "vim"

Plug 'airblade/vim-gitgutter'
let g:gitgutter_sign_added = '▶'
let g:gitgutter_sign_modified = '▮'
let g:gitgutter_sign_removed = '◀'
let g:gitgutter_sign_modified_removed = '▬'
let g:gitgutter_max_signs = 2000

Plug 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline_powerline_fonts = 1
set laststatus=2

highlight SclowSbar ctermbg=238

Plug 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_mode_map       = { 'mode': 'active', 'passive_filetypes': ['perl'] }
let g:syntastic_error_symbol   = "⛔"
let g:syntastic_warning_symbol = "⚠️"
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl', 'perlcritic', 'podchecker']
let g:syntastic_enable_javascript_checker = 1
" to install jshint: sudo npm install -g jshint
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_enable_css_checker = 1
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_enable_c_checker = 1
let g:syntastic_c_checkers = ['gcc', 'splint']
let g:syntastic_c_compiler_options = ' -Wall -g'

Plug 'whatyouhide/vim-lengthmatters', { 'branch': 'main' }
let g:lengthmatters_excluded = ['diff', 'json', 'logcat']
let g:lengthmatters_highlight_one_column = 1
