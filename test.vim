let s:current_path = fnamemodify(resolve(expand('<sfile>')), ':h') 

function! TysOmniFunc(findstart, base)
    if a:findstart 
        echo a:base
        return -1
    endif
    
    let positions = getpos(".")
    let positions_str = join(positions, " ")
    let buff=getline(1, '$')
    return split(system(s:current_path . "/testprog.sh " . positions_str, buff))
endfunction

set omnifunc=TysOmniFunc
