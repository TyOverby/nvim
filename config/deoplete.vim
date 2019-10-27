" enable deoplete
let g:deoplete#enable_at_startup = 1

" other completion sources suggested to disable
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources.ocaml = ['buffer', 'around', 'member', 'tag']

" Pass a dictionary to set multiple options
call deoplete#custom#option({
\ 'complete_method': "complete",
\ 'auto_complete_delay': 1000,
\ 'smart_case': v:true,
\ })

