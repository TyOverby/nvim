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
Plug 'benekastah/neomake'
Plug 'myusuf3/numbers.vim'
Plug 'Raimondi/delimitMate'
Plug 'plasticboy/vim-markdown'
Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim'
Plug 'othree/html5.vim'
Plug 'leafgarland/typescript-vim'
Plug 'PProvost/vim-ps1'
call plug#end()


" Misc
set ignorecase
set smartcase
nnoremap Y y$
set nospell
set nohlsearch
set nobackup
set noswapfile
set hidden
set nu
set rnu
set nowrap
set ttimeout
set ttimeoutlen=0
set clipboard+=unnamedplus
let loaded_matchparen=1


" Tabs
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on

" Navigation mappings
tnoremap <Esc> <C-\><C-n>


" Theme
let g:gruvbox_bold = 0
let g:gruvbox_italic = 0
let g:gruvbox_underline = 0
let g:gruvbox_undercurl = 0

colo gruvbox
set background=dark
set fillchars=

hi! link CursorLineNr LineNr
set numberwidth=4
set foldcolumn=1


" Nerdtree
map <silent> <Tab> :NERDTreeTabsToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeMapHelp='<f1>'
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
let g:neomake_echo_current_error=0
let g:neomake_verbose=0


" Delimitmate
let g:delimitMate_backspace = 2
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
au FileType rust let b:delimitMate_quotes = "\""
