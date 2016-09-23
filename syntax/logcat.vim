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

hi def LogCatDebug   ctermfg=39   guifg=39
hi def LogCatError   ctermfg=red    guifg=red
hi def LogCatFatal   ctermfg=white  guifg=white ctermbg=red guibg=red
hi def LogCatInfo    ctermfg=40  guifg=40
hi def LogCatVerbose ctermfg=white   guifg=white
hi def LogCatWarn    ctermfg=166  guifg=166
