"
" Mapping

" sudo save
cmap w!! w !sudo tee % >/dev/null

" cycle tabs with tab and shift tab
nn <Tab>   :bnext<CR>
nn <S-Tab> :bprevious<CR>

" sort lines
vn <silent> <leader>s :sort <Enter>

"au BufEnter * silent! lcd %:p:h " Go to the directory of each file
"au BufRead,BufWrite * if ! &bin && &ft != 'markdown' | silent! %s/\s\+$//ge | endif

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

" remove lead / from files while using gf(goto file)
nnoremap <silent> gf :let @/ = substitute(expand('<cfile>'), '^/', '', '')
                   \  <bar>normal gngf<cr>

" au QuickFixCmdPre *grep* wincmd k | wincmd l
" au QuickFixCmdPost *grep* botright cwindow | wincmd j
