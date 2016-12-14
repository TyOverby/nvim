" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-sensible'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug '907th/vim-auto-save'
Plug 'thirtythreeforty/lessspace.vim'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'szw/vim-ctrlspace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neomake/neomake'
Plug 'Raimondi/delimitMate'
Plug 'plasticboy/vim-markdown'
Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim'
Plug 'othree/html5.vim'
Plug 'leafgarland/typescript-vim'
Plug 'itchyny/lightline.vim'
Plug 'PProvost/vim-ps1'
Plug 'stefandtw/quickfix-reflector.vim'
Plug 'racer-rust/vim-racer'
Plug 'Shougo/deoplete.nvim'
Plug 'machakann/vim-highlightedyank'
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

hi! Normal ctermbg=none
hi! link CursorLineNr LineNr
hi! VertSplit ctermbg=None
hi! FoldColumn ctermbg=None
hi! SignColumn ctermbg=None

hi! GruvboxGreenSign ctermfg=142 ctermbg=None guifg=#b8bb26 guibg=#3c3836
hi! GruvboxAquaSign ctermfg=108 ctermbg=None guifg=#8ec07c guibg=#3c3836
hi! GruvboxBlueSign ctermfg=109 ctermbg=None guifg=#83a598 guibg=#3c3836
hi! GruvboxRedSign ctermfg=167 ctermbg=None guifg=#fb4934 guibg=#3c3836


set numberwidth=4
set foldcolumn=1

let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'active': {
    \   'left': [ [],
    \             [ 'mode', 'paste' ],
    \             [ 'fugitive', 'readonly', 'filename' ] ]
    \ },
    \ 'component': {
    \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
    \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
    \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
    \ },
    \ 'component_visible_condition': {
    \   'readonly': '(&filetype!="help"&& &readonly)',
    \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
    \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
    \ },
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }
\}


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
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "@",
    \ "Renamed"   : "-",
    \ "Unmerged"  : "=",
    \ "Deleted"   : "x",
    \ "Dirty"     : "-",
    \ "Clean"     : "o",
    \ "Unknown"   : "?"
    \ }


" Auto Save
let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_in_insert_mode = 0


" Git Gutter
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:gitgutter_sign_column_always = 1


" Ctrl Space
let g:CtrlSpaceSearchTiming = 10


" Neomake
let g:neomake_echo_current_error=1
let g:neomake_verbose=0
" autocmd BufWritePost *.rs NeomakeProject cargo
" autocmd BufWritePost *.ts NeomakeProject typescript_project
autocmd BufWritePost *.ts Neomake 
autocmd BufWritePost *.ts Neomake tslint
nnoremap <Leader>c :NeomakeProject cargo<CR>

" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#auto_complete_start_length = 2
let g:deoplete#max_list = 50
" inoremap <silent><expr> <Tab> pumvisible() ? deoplete#mappings#close_popup() : "<C-x><C-o>"
" inoremap <silent><expr> <CR>  pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"
" inoremap <silent><expr> <Nul> pumvisible() ? "" : deoplete#mappings#manual_complete()
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-x><C-o>
inoremap <Nul> <C-x><C-o>
set completeopt=menu,longest,preview,noinsert


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

