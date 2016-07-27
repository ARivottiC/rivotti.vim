if did_filetype()
    finish
endif

au BufNewFile,BufRead * if &ft == '' | call s:FTlogcat() | endif

func! s:FTlogcat()
    let s:n = 1
    while s:n < line("$")
        if getline(s:n) =~ '^\(\[\s\)\?\(\d\{2\}-\d\{2\}\s\d\{2\}\(:\d\{2\}\)\{2\}\.\d\{3,\}\(\(:\?\s\+\d\+\)\{2\}\)\?\s\)\?[DEFIVW][\/(\ ]\([^:]\+:\|[^)]\+)\|[^ ]\+\s\)'
            set filetype=logcat
            return
        endif
        let s:n = s:n + 1
    endwhile

    unlet s:n
endfunc
