"
" Mapping

" sudo save
cmap w!! w !sudo tee % >/dev/null

" cycle tabs with ctrl + h or l
map <C-h> gT
map <C-l> gt
" imap <C-a> <CR><Esc>O

" sort lines
vn <silent> <leader>s :sort <Enter>

au BufEnter * lcd %:p:h " Go to the directory of each file
"au BufRead,BufWrite * if ! &bin && &ft != 'markdown' | silent! %s/\s\+$//ge | endif
au BufRead,BufWrite * call matchadd('ColorColumn', '\%100v', 50)

" Yank 'to end of line' like C and D
nn Y y$

" grep
nm <Leader>g :Ggrep<SPACE>

" clean Search
nm <silent> <Leader>/ :nohlsearch<CR>

" make
nn <Leader>m :make<CR>

" check
nn <silent> <Leader>s :SyntasticCheck<CR>

" buffer to hex and buffer do bin
nn <Leader>x :%!xxd<CR>
nn <Leader>X :%!xxd -r<CR>

au QuickFixCmdPost * cwindow
