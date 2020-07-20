set termguicolors

hi! link EnclosingExpr Search

set fillchars+=vert:\ 

function! g:LightTheme() 
    set background=light
    colorscheme two-firewatch 

    hi! TabLineFill cterm=None ctermbg=188
    hi! TabLine cterm=None ctermbg=188
    hi! TabLineSel cterm=None ctermbg=188

    hi! StatusLine cterm=None ctermbg=188
    hi! StatusLineNC cterm=None ctermbg=188 
    hi! VertSplit ctermbg=None ctermfg=188
    hi! StatusLineNC ctermbg=None
    hi! SignColumn ctermbg=None
    hi! link ALEErrorSign GruvboxRed
    hi! link ALEWarningSign GruvboxOrange
    hi! ALEErrorLine ctermbg=bg
    hi! ALEWarningLine ctermbg=bg
    hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
endfunction


function! g:DarkTheme() 
    set background=dark
    let g:gruvbox_contrast_dark="hard"
    let g:sonokai_style = 'atlantis'
    colorscheme sonokai

    hi! SignColumn     ctermbg=None guibg=None
    hi! link VertSplit TabLineFill
    hi! link TabLine TabLineFill
    hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
endfunction

call g:DarkTheme()

set statusline=%f:%l:%c%=\%{noscrollbar#statusline(20,'\|','█',['▐'],['▌'])}

command! DarkTheme :call g:DarkTheme()
command! LightTheme :call g:LightTheme()
