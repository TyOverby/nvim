" Get my escape key back
tnoremap <esc> <C-\><C-n>      
" Y is vimy
nnoremap Y y$ 
 " <C-w> is normal too
tnoremap <C-w> <C-\><C-n><C-w>
" Easy tab navigation
nnoremap <silent><C-l> :tabnext<CR>
nnoremap <silent><C-h> :tabprev<CR>

 " Delete buffers without killing window
nnoremap <silent><leader>q :Bdelete!<cr>

" Indent (like 'o') but with 'i'
function! IndentWithI()
    if len(getline('.')) == 0
        return "\"_cc"
    else
        return "i"
    endif
endfunction
nnoremap <expr> i IndentWithI()


" Instead of using '<c-w>' for window management, use 's'
" Bindings for netrw are also necessary because of course it is
" accidentally using 'c-w' results in a warning message and nothing else
nnoremap s <C-W>
nnoremap <C-W> :echo "USE S"<CR>
autocmd filetype netrw nnoremap <buffer> s <C-W>
autocmd filetype netrw nnoremap <buffer> <C-W> :echo "USE S"<CR>


nnoremap <silent><leader>t :MerlinTypeOf<CR>
vnoremap <silent><leader>t :MerlinTypeOfSel<CR>
nnoremap <silent><leader>d :MerlinLocate<CR>
nnoremap <silent><leader>i :MerlinILocate<CR>

" Fzf
nnoremap <silent><C-p> :FzfFiles<CR>
nnoremap <silent><C-f> :FzfAg<cr>
