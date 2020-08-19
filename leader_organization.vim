let g:which_key_map = {}

 " Delete buffers without killing window
nnoremap <silent><leader>q :Bdelete!<cr>
let g:which_key_map.q = "kill"
nnoremap <leader>s :call BetterSplit()<CR>
let g:which_key_map.s = "split"

" MERLIN

let g:which_key_map.m = {}
let g:which_key_map.m.name = "Merlin"

nnoremap <silent><leader>mt :MerlinTypeOf<CR>
let g:which_key_map.m.t = "Type Of"

nnoremap <silent><leader>my :MerlinYankLatestType<CR>
let g:which_key_map.m.t = "Yank Type"

vnoremap <silent><leader>mt :MerlinTypeOfSel<CR>
nnoremap <silent><leader>md :MerlinLocate<CR>
let g:which_key_map.m.d = "Find (def)"

nnoremap <silent><leader>mi :MerlinILocate<CR>
let g:which_key_map.m.i = "Find (intf)"

" FZF

let g:which_key_map.f = {}
let g:which_key_map.f.name = "FZF"

nnoremap <silent><leader>ff :FzfFiles<CR>
let g:which_key_map.f.f = "Files"

nnoremap <silent><leader>fb :FzfBuffers<CR>
let g:which_key_map.f.b = "Buffers"

nnoremap <silent><leader>fc :FzfChanged<CR>
let g:which_key_map.f.c = "Changed"

nnoremap <silent><leader>fr :RG<CR>
let g:which_key_map.f.r = "Ripgrep"
