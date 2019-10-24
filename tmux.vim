function UpdateDisplayVariable() 
  let $DISPLAY=system("tmux show-env DISPLAY | cut -d '=' -f 2")
endfunction
