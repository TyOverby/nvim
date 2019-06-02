let g:merlin_initialized = 0

function! InitializeMerlin()
    if g:merlin_initialized
      return
    endif
    let g:merlin_initialized = 1
    let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
    execute "set rtp+=" . g:opamshare . "/merlin/vim"
endfunction

autocmd FileType ocaml :call InitializeMerlin()
