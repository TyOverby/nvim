tnoremap <esc> <C-\><C-n>      " Get my escape key back
nnoremap Y y$                  " Y is vimy
tnoremap <C-w> <C-\><C-n><C-w> " <C-w> is normal too
nnoremap s <C-w>

" # Smart indent
function! IndentWithI()
    if len(getline('.')) == 0
        return "\"_cc"
    else
        return "i"
    endif
endfunction
nnoremap <expr> i IndentWithI()
