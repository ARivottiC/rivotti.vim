"
" Mapping

" sudo save
cmap w!! w !sudo tee % >/dev/null

" cycle tabs with left, rigth arrow or h,l
map <C-h> gT
map <C-Left> gT
map <C-l> gt
map <C-Right> gt
" imap <C-a> <CR><Esc>O

" sort lines
vn <silent> <leader>s :sort <Enter>

au BufEnter * lcd %:p:h " Go to the directory of each file
au BufRead,BufWrite * if ! &bin && &ft != 'markdown' | silent! %s/\s\+$//ge | endif
au BufRead,BufWrite * call matchadd('ColorColumn', '\%79v', 100)

" clean Search
nm <silent> <Leader>/ :nohlsearch<CR>

" make
nn <silent> <Leader>! :make\|copen<CR><CR><CR>

" check
nn <silent> <Leader>? :SyntasticCheck<CR>
