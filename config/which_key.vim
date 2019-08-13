let g:which_key_map = {}
let g:which_key_map.q = 'Kill Buffer'
let g:which_key_map.t = 'Type Of'
let g:which_key_use_floating_win = 1

set timeoutlen=50
call which_key#register(',', "g:which_key_map")
nnoremap <silent> <leader> :WhichKey ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual ','<CR>
