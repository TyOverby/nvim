autocmd filetype netrw call NetrwMapping()

function! OpenTerm() abort
  let currdir = getcwd()
  let netrwdir = b:netrw_curdir
  execute 'lcd ' . netrwdir
  execute 'terminal'
  execute 'lcd ' . currdir
endfunction

function! NetrwMapping()
    nnoremap <buffer>t :call OpenTerm()<CR>

    let g:netrw_list_hide = ''
    let g:netrw_list_hide .= ',^\./$'
    let g:netrw_list_hide .= ',.*\.modules$'
    let g:netrw_list_hide .= ',.*\.stub.names$'
    let g:netrw_list_hide .= ',.merlin$'
    let g:netrw_list_hide .= ',.*\.files-to-style$'
    let g:netrw_list_hide .= ',.*\.ml-gen$'
    let g:netrw_list_hide .= ',.*\.pack-order$'
    let g:netrw_list_hide .= ',.*\.build_info\.sexp$'
    let g:netrw_list_hide .= ',.*\.libdeps$'
    let g:netrw_list_hide .= ',.*\.objdeps$'
    let g:netrw_list_hide .= ',.*\.moduledeps$'
    let g:netrw_list_hide .= ',.*\.cma$'
    let g:netrw_list_hide .= ',.*\.cmo$'
    let g:netrw_list_hide .= ',.*\.jsdeps$'
    let g:netrw_list_hide .= ',.*\.cma\.js$'
    let g:netrw_list_hide .= ',.*\.cmo\.js$'
    let g:netrw_list_hide .= ',.*\.runtime\.js$'
    let g:netrw_list_hide .= ',.*\.hg_version\.c$'
    let g:netrw_list_hide .= ',.*\.cmxa$'
    let g:netrw_list_hide .= ',.*\.deps$'
    let g:netrw_list_hide .= ',.*\.o$'
    let g:netrw_list_hide .= ',.*\.cmi$'
    let g:netrw_list_hide .= ',.*\.a$'
    let g:netrw_list_hide .= ',.*\.cmti$'
    let g:netrw_list_hide .= ',.*\.cmt$'
    let g:netrw_list_hide .= ',.*\.d$'
    let g:netrw_list_hide .= ',.*\.cmx$'
endfunction
