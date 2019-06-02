let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

function! s:sourcelocal(path)
  execute 'source ' . s:path . '/' . a:path . '.vim'
endfunction

" Plugins
call plug#begin('~/.config/nvim/plugged')
    call s:sourcelocal('plugins')
call plug#end()

" Settings
call s:sourcelocal('settings')

" Remaps
call s:sourcelocal('remaps')

" Styles
call s:sourcelocal('styles')

" Configs
call s:sourcelocal('config/merlin')
call s:sourcelocal('config/defx')
