set smartcase  " Switches between case-sensitive and insensitive search
set smarttab   " Tab insert is determined by syntax
set nohlsearch " Turn off obnoxious highlighting on previous search
set completeopt-=preview " Dunno

set nobackup      " Turn off unsaved file backups
set nowritebackup " Same as above?
set noswapfile    " Don't produce .swp files
set scrolloff=0   " Keep the cursor from getting pushed by the window
set sessionoptions=buffers,curdir,globals,localoptions,options,winsize,tabpages

set nofixendofline " Don't add \n to the end of a file automatically
set hidden         " Allow you to leave files without having to save
set nowrap         " Disable text line wrapping
set timeoutlen=100 " Mainly for which_key
set nottimeout     " Don't wait for sequences (terminal)
set clipboard+=unnamedplus " Use system clipboard
set cmdheight=2
set signcolumn=yes

set shortmess=aWIqFc
" See following
" a: Lots of shortened abbreviations, read the docs ':h shortmess'
" W: No echo when writing a file
" I: No intro message when opening vim
" q: Use "recording" instead of "recording @a"
" F: No file info
" c: Hide completion messages

set nofoldenable " All folds start enabled
let g:terminal_scrollback_buffer_size=100000 " What it says on the tin
set inccommand=split " See find-replace live

" HEAR YE HEAR YE, THE INCANTATION TO GET TAB TO DO SOMETHING REASONABLE
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on

let g:netrw_home=$XDG_CACHE_HOME.'/vim' " Netrw history files go here

let g:fzf_command_prefix="Fzf"
let mapleader=","
set diffopt=internal,iwhiteall,algorithm:patience,context:10,filler
