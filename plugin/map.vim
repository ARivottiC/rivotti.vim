"
" Mapping

" sudo save
cmap w!! w !sudo tee % >/dev/null

" cycle tabs with tab and shift tab
nn <Tab>   :bnext<CR>
nn <S-Tab> :bprevious<CR>

" sort lines
vn <silent> <leader>s :sort <Enter>

au BufEnter * lcd %:p:h " Go to the directory of each file
"au BufRead,BufWrite * if ! &bin && &ft != 'markdown' | silent! %s/\s\+$//ge | endif

" mark trailing spaces and lines with more ten 100 columns
au BufRead,BufWrite * call matchadd('ColorColumn', '\%100v.*', 50)
au BufRead,BufWrite * call matchadd('ColorColumn', '\s\+\n')

" paste whatever in the corresponding window
nn <Leader>< <C-W>h p <C-W>l
nn <Leader>> <C-W>l p <C-W>h

" Yank 'to end of line' like C and D
nn Y y$

" grep
nm <Leader>g :grep<SPACE>

" search also works for visual selected blocks
vn # y/<C-R>"<CR>

" clean Search
nm <silent> <Leader>/ :nohlsearch<CR>

" make
nn <Leader>m :make<CR>

" check
nn <silent> <Leader>s :SyntasticCheck<CR>

" buffer to hex and buffer do bin
nn <Leader>x :%!xxd<CR>
nn <Leader>X :%!xxd -r<CR>

au QuickFixCmdPre *grep* wincmd k | wincmd l
au QuickFixCmdPost *grep* botright cwindow | wincmd j

