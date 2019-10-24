let g:vimrc_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

function! s:sourcelocal(path)
  execute 'source ' . g:vimrc_path . '/' . a:path . '.vim'
endfunction

" Plugins
if g:bundles_loaded
    " do nothing 
else
    call plug#begin('~/.config/nvim/plugged')
        call s:sourcelocal('plugins')
    call plug#end()
endif

" Settings
call s:sourcelocal('settings')

" Remaps
call s:sourcelocal('remaps')

" Styles
call s:sourcelocal('styles')

" Configs
call s:sourcelocal('config/merlin')
call s:sourcelocal('config/deoplete')
call s:sourcelocal('config/taboo')
call s:sourcelocal('config/which_key')
call s:sourcelocal('config/netrw')
call s:sourcelocal('config/vim-markdown')

" TODO: https://github.com/ncm2/float-preview.nvim
" TODO: https://github.com/junegunn/fzf.vim/issues/664 
