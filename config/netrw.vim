autocmd filetype netrw call NetrwMapping()

map! <unique> <c-r> <Plug>NetrwRefresh

function! OpenTerm() abort
  let currdir = getcwd()
  let netrwdir = b:netrw_curdir
  execute 'lcd ' . netrwdir
  execute 'terminal'
  execute 'lcd ' . currdir
endfunction

function! NetrwMapping()
    nnoremap <buffer>t :call OpenTerm()<CR>

    nunmap <C-l>
    nnoremap <silent> <C-l> :tabnext<CR>

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
    let g:netrw_list_hide .= ',.*\.docpub_html$'
    let g:netrw_list_hide .= ',.*\.confluence_metadata$'
    let g:netrw_list_hide .= ',.*\.confluence_xml$'
    let g:netrw_list_hide .= ',.*\.cmi$'
    let g:netrw_list_hide .= ',.*\.a$'
    let g:netrw_list_hide .= ',.*\.cmti$'
    let g:netrw_list_hide .= ',.*\.cmt$'
    let g:netrw_list_hide .= ',.*\.d$'
    let g:netrw_list_hide .= ',.*\.cmx$'
    let g:netrw_list_hide .= ',fgrep_expect_tests.out$'
    let g:netrw_list_hide .= ',fgrep_inline_tests.out$'
    let g:netrw_list_hide .= ',fgrep_bench.out$'
    let g:netrw_list_hide .= ',inline_tests_runner'
    let g:netrw_list_hide .= ',ocaml-mdx.toplevel.info.c$'
    let g:netrw_list_hide .= ',ocaml-mdx'
    let g:netrw_list_hide .= ',inline_tests_runner.exe'
endfunction
