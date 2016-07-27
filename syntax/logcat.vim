" Vim syntax file
" Language:         logcat
" Maintainer:       André Casimiro <andre.r.casimiro@gmail.com>
" Latest Revision:  2016-07-27

if exists("b:current_syntax")
    finish
endif

syn match LogCatDebug   '^\([-0-9\[\. :]\+\)\?D[(/ ].*'
syn match LogCatError   '^\([-0-9\[\. :]\+\)\?E[(/ ].*'
syn match LogCatFatal   '^\([-0-9\[\. :]\+\)\?F[(/ ].*'
syn match LogCatInfo    '^\([-0-9\[\. :]\+\)\?I[(/ ].*'
syn match LogCatVerbose '^\([-0-9\[\. :]\+\)\?V[(/ ].*'
syn match LogCatWarn    '^\([-0-9\[\. :]\+\)\?W[(/ ].*'

hi def LogCatDebug   ctermfg=darkgreen guifg=darkgreen
hi def LogCatError   ctermfg=red       guifg=red
hi def LogCatFatal   ctermfg=white     guifg=white ctermbg=red guibg=red
hi def LogCatInfo    ctermfg=blue      guifg=blue
hi def LogCatVerbose ctermfg=gray      guifg=gray
hi def LogCatWarn    ctermfg=brown     guifg=brown
