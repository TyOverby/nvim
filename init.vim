let g:vimrc_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

function! s:sourcelocal(path)
  execute 'source ' . g:vimrc_path . '/' . a:path . '.vim'
endfunction

" Settings
call s:sourcelocal('settings')

" Plugins
if exists("g:bundles_loaded")
    " do nothing 
else
    call plug#begin(g:vimrc_path . '/plugged')
        call s:sourcelocal('plugins')
    call plug#end()
endif

" Remaps
call s:sourcelocal('remaps')

" Styles
call s:sourcelocal('styles')

" Configs
call s:sourcelocal('config/merlin')
call s:sourcelocal('config/deoplete')
call s:sourcelocal('config/taboo')
call s:sourcelocal('config/fzf')
call s:sourcelocal('config/which_key')
call s:sourcelocal('config/netrw')
call s:sourcelocal('config/ale')
call s:sourcelocal('config/vim-markdown')

" Don't put this in settings because someone overrides it in 
" a plugin :(
set scrolloff=0

" TODO: https://github.com/ncm2/float-preview.nvim
" TODO: https://github.com/junegunn/fzf.vim/issues/664 
