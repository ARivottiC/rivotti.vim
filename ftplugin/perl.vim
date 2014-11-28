"
" Perl Specific

" check perl code with :make
compiler perl
setl autowrite

setl keywordprg=perldoc\ -T\ -f

" prove
nn <silent> <leader>pr :!prove -v %<cr>

let perl_include_pod = 1 " hi pod
let perl_sync_dist   = 400

"let perl_fold = 1        " Fold automatically
"let perl_fold_blocks = 1 " Fold blocks (if, foreach, etc)

" Tidy selected lines (or entire file) with _t:
nn <silent> <leader>pt :%!perltidy -q<Enter>
vn <silent> <leader>pt :!perltidy -q<Enter>
