if did_filetype()
    finish
endif

au BufNewFile,BufRead * if &ft =~ '^\(text\|\)$' | call s:FTlogcat() | endif

func! s:FTlogcat()
    let s:n = 1
    while s:n < line("$")
        " 05-14 15:46:28.110  1000  1083  1083 D TAG: MESSAGE
        if getline(s:n) =~ '^\d\{2\}-\d\{2\}\s\(\d\{2\}[:\.]\)\{3\}\d\{3\}\(\s\+[0-9a-z]\+\)\{3\}\s[DEFIVW]\s[^:]\+:.*$'
            set filetype=logcat
            return
        endif
        let s:n = s:n + 1
    endwhile

    unlet s:n
endfunc
