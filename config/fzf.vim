" Reverse the layout to make the FZF list top-down
let $FZF_DEFAULT_OPTS=' --color=dark --layout=reverse --margin=0,0 --tiebreak=begin,length,end --preview "bat {} --color always --style plain --line-range :'.&lines.'"'

" Using the custom window creation function
let g:fzf_layout = { 'window': 'call FloatingFZF()' }

let g:fzf_colors =
\ { 'fg':      ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg':      ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'CursorLine', 'CursorColumn'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Function to create the custom floating window
function! FloatingFZF()
  " creates a scratch, unlisted, new, empty, unnamed buffer
  " to be used in the floating window
  let buf = nvim_create_buf(v:false, v:true)

  " 66% of the height
  let height = float2nr(&lines * 0.66)
  " 66% of the height
  let width = float2nr(&columns * 0.66)
  " horizontal position (centralized)
  let horizontal = float2nr((&columns - width) / 2)
  " vertical position (one line down of the top)
  let vertical = float2nr(&lines * 0.15)

  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height
        \ }

  " open the new window, floating, and enter to it
  call nvim_open_win(buf, v:true, opts)
endfunction

command! FzfChanged : call fzf#run(fzf#wrap({'source': "$HOME/.vim/bin/changed_files.sh", 'sink':'e'}))

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
