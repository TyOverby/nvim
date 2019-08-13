" enable deoplete
let g:deoplete#enable_at_startup = 1

" this is the default, make sure it is not set to "omnifunc" somewhere else in your vimrc
let g:deoplete#complete_method = "complete"

" other completion sources suggested to disable
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources.ocaml = ['buffer', 'around', 'member', 'tag']

" no delay before completion
let g:deoplete#auto_complete_delay = 100

set completeopt=menuone,longest

" <TAB> for moving through deoplete completions
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<C-x><C-o>"
" <S-TAB> for moving backwards
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"
" Enter for selecting one of them
inoremap <expr><CR> pumvisible() ? "\<C-y>" : "\<CR>"
