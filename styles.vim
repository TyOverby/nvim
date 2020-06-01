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
    colorscheme gruvbox

    hi! TabLineFill    ctermbg=234  ctermfg=223 cterm=None
    hi! TabLine        ctermbg=234  ctermfg=223 cterm=None
    hi! TabLineSel     ctermbg=234  cterm=None

    hi! StatusLineNC   ctermbg=223 ctermfg=234
    hi! StatusLine     ctermbg=223 ctermfg=234
    hi! SignColumn     ctermbg=None
    hi! VertSplit      ctermbg=234 ctermfg=234
    hi! ALEErrorLine   ctermbg=52
    hi! ALEWarningLine ctermbg=236
    hi! link ALEErrorSign GruvboxRed
    hi! link ALEWarningSign GruvboxOrange
    hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
endfunction

call g:DarkTheme()

set statusline=%f:%l:%c
command! DarkTheme :call g:DarkTheme()
command! LightTheme :call g:LightTheme()
