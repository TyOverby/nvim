" enable deoplete
let g:deoplete#enable_at_startup = 1

" other completion sources suggested to disable
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources.ocaml = ['buffer', 'around', 'member', 'tag']

" Pass a dictionary to set multiple options
call deoplete#custom#option({
\ 'complete_method': "complete",
\ 'auto_complete_delay': 100,
\ 'smart_case': v:true,
\ })
set completeopt=menuone,longest

" <TAB> for moving through deoplete completions
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<C-x><C-o>"
" <S-TAB> for moving backwards
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"
" Enter for selecting one of them
inoremap <expr><CR> pumvisible() ? "\<C-y>" : "\<CR>"
