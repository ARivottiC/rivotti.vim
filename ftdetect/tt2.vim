au BufNewFile,BufRead *.tt,*.tt2 call s:FTtt2()

func! s:FTtt2()
    let s:n = 1
    while s:n < line("$")
        if getline(s:n) =~ '\<\w\+'
            set filetype=tt2html
            return
        endif
        let s:n = s:n + 1
    endwhile
    set filetype=tt2

    unlet s:n
endfunc
