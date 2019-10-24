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

function! BetterSplit ()
  split
  execute "normal zb"
  wincmd j
  execute "normal zb"
  wincmd k
endfunction

nnoremap <C-W>s :call BetterSplit()<CR>
nnoremap s <C-W>
nnoremap ss :call BetterSplit()<CR>
autocmd filetype netrw nmap <buffer> s <C-W>

nnoremap <silent><leader>t :MerlinTypeOf<CR>
vnoremap <silent><leader>t :MerlinTypeOfSel<CR>
nnoremap <silent><leader>d :MerlinLocate<CR>
nnoremap <silent><leader>i :MerlinILocate<CR>

" Fzf
nnoremap <silent><C-p> :FzfFiles<CR>
nnoremap <silent><C-f> :FzfAg<cr>
