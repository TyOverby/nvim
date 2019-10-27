let g:jsocaml_disable_style=v:true

function! s:write_ml(buf, file) 
  let l:changedtick = nvim_buf_get_changedtick(a:buf) 
  let l:info = {'buf' : a:buf, 'changedtick' : l:changedtick , 'file' : a:file}

  function info.on_exit(a, b, c) dict 
    if self.changedtick == nvim_buf_get_changedtick(self.buf)
      call nvim_buf_set_lines(self.buf, 0, -1, 1, readfile(self.file))
      call nvim_buf_set_option(self.buf, "modified", v:false)
    endif
  endfunction

  call jobstart(['/j/office/app/dev-tools/prod/apply-style/latest/apply-style', 'format', '-in-place',  '-directory-config',  'jbuild', l:info.file], l:info)
endfunction 

augroup AsyncFormat
  autocmd BufWritePost *.ml call s:write_ml(str2nr('<abuf>'), expand('<afile>'))
augroup END
