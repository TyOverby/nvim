set notermguicolors

hi! link EnclosingExpr Search

function! g:LightTheme() 
    set background=light
    colorscheme two-firewatch 

    hi! TabLineFill cterm=None ctermbg=188
    hi! TabLine cterm=None ctermbg=188
    hi! TabLineSel cterm=None ctermbg=188

    hi! StatusLine cterm=None ctermbg=188
    hi! StatusLineNC cterm=None ctermbg=188 
    hi! VertSplit ctermbg=188 ctermfg=188
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
    colorscheme gruvbox

    hi! TabLineFill cterm=None ctermbg=234
    hi! TabLine cterm=None ctermbg=234
    hi! TabLineSel cterm=None ctermbg=234

    hi! StatusLineNC ctermbg=None
    hi! SignColumn ctermbg=None
    hi! VertSplit ctermbg=234 ctermfg=234
    hi! link ALEErrorSign GruvboxRed
    hi! link ALEWarningSign GruvboxOrange
    hi! ALEErrorLine ctermbg=52
    hi! ALEWarningLine ctermbg=236
    hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
endfunction

call g:DarkTheme()

command! DarkTheme :call g:DarkTheme()
command! LightTheme :call g:LightTheme()
