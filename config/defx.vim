autocmd FileType defx call s:defx_my_settings()

let s:ignored = ".*,_build"

nnoremap <silent> - :Defx `expand('%:p:h')`
  \ -search=`expand('%:p:h')`
  \ -ignored-files=".*,_build"
  \ <cr>

function! Defx_open_terminal_here()
  let path = b:defx['paths'][0]
  execute 'edit term://' . path . '/bash'
endfunction

" Define mappings
function! s:defx_my_settings() abort
    " Open file or directory under cursor
    nnoremap <silent><buffer> t
    \ :call Defx_open_terminal_here() <CR>

    " Open file or directory under cursor
    nnoremap <silent><buffer><expr> <CR>
    \ defx#do_action('open')

    " Expand directory under cursor
    nnoremap <silent><buffer><expr> <Shift-CR>
    \ defx#do_action('open_tree')

    " Go up one directory
    nnoremap <silent><buffer><expr> -
    \ defx#do_action('cd', ['..'])

    " Select
    nnoremap <silent><buffer><expr> <Space>
    \ defx#do_action('toggle_select')

    " Select many
    vnoremap <silent><buffer><expr> <Space>
    \ defx#do_action('toggle_select_visual') . 'j'

    " New directory
    nnoremap <silent><buffer><expr> D
    \ defx#do_action('new_directory')

    " Remove file / folder
    nnoremap <silent><buffer><expr> d
    \ defx#do_action('remove')

    " Make new file
    nnoremap <silent><buffer><expr> %
    \ defx#do_action('new_file')

    " Open or close folder tree
    nnoremap <silent><buffer><expr> <tab>
    \ defx#do_action('open_or_close_tree')

    " Copy path into clipboard
    nnoremap <silent><buffer><expr> yy
    \ defx#do_action('yank_path')

    " Copy selected files
    nnoremap <silent><buffer><expr> c
    \ defx#do_action('copy')

    " Move selected files
    nnoremap <silent><buffer><expr> m
    \ defx#do_action('move')

    " Paste selected files
    nnoremap <silent><buffer><expr> p
    \ defx#do_action('paste')

    " Paste selected files
    nnoremap <silent><buffer><expr> !
    \ defx#do_action('execute_command')
endfunction
