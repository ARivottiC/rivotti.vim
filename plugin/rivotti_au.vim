" Depend on tpope/vim-apathy and tpope/vim-fugitive internals
if !(exists('g:loaded_apathy') || exists('g:loaded_fugitive'))
    finish
endif

function! RivottiUpdatePath() abort
    " prepend $GIT_DIR to vim path
    let git_dir = FugitiveWorkTree()
    if !empty(git_dir)
        call apathy#Prepend('path', git_dir)
    endif

    " prepend $ANDROID_PRODUCT_OUT to vim path(requires lunch)
    if !empty($ANDROID_PRODUCT_OUT)
        call apathy#Prepend('path', $ANDROID_PRODUCT_OUT)
    endif

    " prepend $QCPATH to vim path(requires lunch)
    if !empty($QCPATH)
        call apathy#Prepend('path', $QCPATH)
    endif

    " prepend $REPO_DIR to vim path
    let repo_dir = trim(system('repo --show-toplevel'))
    if !empty(repo_dir)
        call apathy#Prepend('path', repo_dir)
    endif
endfunction

augroup rivotti
  autocmd!
  autocmd BufEnter * call RivottiUpdatePath()
augroup END
