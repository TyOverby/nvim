" Plugins
call plug#begin('~/.config/nvim/plugged')
" Autocomplete
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/echodoc.vim'

" Theme
Plug 'morhetz/gruvbox'

" Git
Plug 'tpope/vim-fugitive'

" Utility
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug '907th/vim-auto-save'
Plug 'thirtythreeforty/lessspace.vim'
Plug 'tpope/vim-unimpaired'
Plug 'stefandtw/quickfix-reflector.vim'
Plug 'szw/vim-ctrlspace'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'w0rp/ale'

" Language
Plug 'plasticboy/vim-markdown'
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'othree/html5.vim'
Plug 'leafgarland/typescript-vim'
call plug#end()


" Misc Editor Preferences
set ignorecase
set smartcase
set nospell
set nohlsearch
set nobackup
set noswapfile
set hidden
set relativenumber number
set nowrap
set ttimeout
set ttimeoutlen=0
set clipboard+=unnamedplus
set shortmess=I
set nofoldenable
let loaded_matchparen=1
let mapleader=","
let g:terminal_scrollback_buffer_size=100000


" Language Server
let g:LanguageClient_serverCommands = {  
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'], 
    \ 'typescript': ['javascript-typescript-stdio']
\ }
let g:LanguageClient_autoStart = 1
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>


" Tabs
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on


" Shortcuts
tnoremap <esc> <C-\><C-n>
nnoremap <leader>t :term <up><cr>
nnoremap Y y$


" Style
let g:gruvbox_bold = 0
let g:gruvbox_italic = 0
let g:gruvbox_underline = 0
let g:gruvbox_undercurl = 0

colo gruvbox
set background=dark
set bg=dark
hi EndOfBuffer ctermfg=bg
set fillchars=

hi! link CursorLineNr LineNr
hi! VertSplit ctermbg=None
hi! FoldColumn ctermbg=None
hi! SignColumn ctermbg=None

hi! GruvboxGreenSign ctermfg=142 ctermbg=None guifg=#b8bb26 guibg=#3c3836
hi! GruvboxAquaSign ctermfg=108 ctermbg=None guifg=#8ec07c guibg=#3c3836
hi! GruvboxBlueSign ctermfg=109 ctermbg=None guifg=#83a598 guibg=#3c3836
hi! GruvboxRedSign ctermfg=167 ctermbg=None guifg=#fb4934 guibg=#3c3836

hi! link ALEErrorSign GruvboxRedSign
hi! link ALEWarningSign GruvboxRedSign
hi! ALEErrorLine ctermbg=darkred
hi! ALEWarningLine ctermbg=brown 

set noshowcmd

" No highlighting on quickfix lines
hi! link QuickFixLine Normal

set numberwidth=4
set foldcolumn=1

" Get rid of status line
autocmd BufEnter * set noru
autocmd BufEnter * set laststatus=0
autocmd BufEnter * set noshowmode


" Nerd Tree
map <silent> <Tab> :NERDTreeTabsToggle<CR>
let g:NERDTreeMinimalUI = 1
let g:NERDTreeMapHelp = '<f1>'
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinPos = "right"
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeCascadeOpenSingleChildDir = 1

" Auto Save
let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_in_insert_mode = 0


" Ctrl Space
let g:CtrlSpaceSearchTiming = 10
nnoremap <silent><C-Space> :CtrlSpace<CR>


" Ale
let g:ale_enabled = 0
let g:ale_rust_cargo_use_check = 1
let g:ale_sign_column_always = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_lint_on_save = 0
let g:ale_lint_on_enter = 0
let g:ale_open_list = 0


" Echodoc
let g:echodoc#enable_at_startup = 1


" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#auto_complete_start_length = 2
let g:deoplete#max_list = 50
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "<C-x><C-o>"
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-x><C-o>
inoremap <Nul> <C-x><C-o>
set completeopt=menu,longest,noinsert


" Racer
let $RUST_SRC_PATH="/Users/tyoverby/workspace/rust/rust/src"
let g:racer_cmd="/Users/tyoverby/.cargo/bin/racer"
let g:racer_experimental_completer = 1


" Delimitmate
let g:delimitMate_backspace = 2
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
au FileType rust let b:delimitMate_quotes = "\""


" Smart Indent
function! IndentWithI()
    if len(getline('.')) == 0
        return "\"_cc"
    else
        return "i"
    endif
endfunction
nnoremap <expr> i IndentWithI()


" Terminal
tnoremap <C-w> <C-\><C-n><C-w>
" Fix the following from stomping on non-term windows
autocmd BufEnter * stopinsert 
" Automatically enter insert-mode for terminal windows
augroup terminal_insert
    autocmd!
    autocmd BufEnter term://* startinsert
    autocmd BufLeave term://* stopinsert
augroup END
