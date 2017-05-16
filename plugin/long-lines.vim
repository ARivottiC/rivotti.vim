fun! MarkLongLines()
    let s:longLineSize = get(b:, 'longLineSize', 100)
    if s:longLineSize > 0
        exe 'match ColorColumn /\%' . s:longLineSize . 'v.*/'
    endif
endfun

au BufRead,BufWrite,BufEnter * call MarkLongLines()
au BufRead,BufWrite,BufEnter * call matchadd('ColorColumn', '\s\+\n')
au BufLeave * match
