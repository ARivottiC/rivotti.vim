"
" Syntastic Configuration

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_mode_map       = { 'mode': 'active', 'passive_filetypes': ['perl'] }
let g:syntastic_error_symbol   = "⚑"
let g:syntastic_warning_symbol = "⚑"

let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl', 'perlcritic', 'podchecker']

let g:syntastic_enable_javascript_checker = 1
let g:syntastic_javascript_checkers = ['jshint']

let g:syntastic_enable_css_checker = 1
let g:syntastic_css_checkers = ['csslint']
