" Vim syntax file
" Language:         logcat
" Maintainer:       André Casimiro <andre.r.casimiro@gmail.com>
" Latest Revision:  2023-10-13

if exists("b:current_syntax")
    finish
endif

syn match LogCatDebug   '^\([-a-z0-9\[\. :]\+\)\?D[(/ ].*'
syn match LogCatError   '^\([-a-z0-9\[\. :]\+\)\?E[(/ ].*'
syn match LogCatFatal   '^\([-a-z0-9\[\. :]\+\)\?F[(/ ].*'
syn match LogCatInfo    '^\([-a-z0-9\[\. :]\+\)\?I[(/ ].*'
syn match LogCatVerbose '^\([-a-z0-9\[\. :]\+\)\?V[(/ ].*'
syn match LogCatWarn    '^\([-a-z0-9\[\. :]\+\)\?W[(/ ].*'

hi def LogCatDebug   ctermfg=39
hi def LogCatError   ctermfg=red
hi def LogCatFatal   ctermfg=white ctermbg=red
hi def LogCatInfo    ctermfg=40
hi def LogCatVerbose ctermfg=white
hi def LogCatWarn    ctermfg=166
