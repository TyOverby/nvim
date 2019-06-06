tnoremap <esc> <C-\><C-n>      " Get my escape key back
nnoremap Y y$                  " Y is vimy
tnoremap <C-w> <C-\><C-n><C-w> " <C-w> is normal too
nnoremap <silent><C-l> :tabnext<CR>    " Easy tab navigation
nnoremap <silent><C-h> :tabprev<CR>    " Same ya'know

nnoremap <silent><leader>q :Bdelete!<cr> " Delete buffers without killing window

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

" Ctrl Space
let g:CtrlSpaceSearchTiming = 10
nnoremap <silent><C-Space> :CtrlSpace<CR>
nnoremap <silent><Enter> :CtrlSpace<CR>

nnoremap <silent><leader>t :MerlinTypeOf<cr>

" Fzf
nnoremap <silent><C-p> :FzfFiles<CR>
nnoremap <silent><C-f> :FzfAg<cr>
