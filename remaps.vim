" Get my escape key back
tnoremap <esc> <C-\><C-n>      
" Y is vimy
nnoremap Y y$ 
 " <C-w> is normal too
tnoremap <C-w> <C-\><C-n><C-w>
" Easy tab navigation
nnoremap <silent><C-l> :tabnext<CR>
nnoremap <silent><C-h> :tabprev<CR>

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

nnoremap s <C-W>
nnoremap ss :call BetterSplit()<CR>
autocmd filetype netrw nmap <buffer> s <C-W>

" Fzf
nnoremap <silent><C-p> :FzfFiles<CR>
nnoremap <silent><C-Space> :FzfChanged<CR>
nnoremap <silent><C-f> :FzfAg<cr>
