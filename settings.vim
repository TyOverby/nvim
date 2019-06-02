set smartcase  " Switches between case-sensitive and insensitive search
set smarttab   " Tab insert is determined by syntax
set nohlsearch " Turn off obnoxious highlighting on previous search

set nobackup   " Turn off unsaved file backups
set noswapfile " Turn off swap files

set nofixendofline " Don't add \n to the end of a file automatically
set hidden         " Allow you to leave files without having to save
set nowrap         " Disable text line wrapping
set notimeout      " Don't wait for sequences
set nottimeout     " Don't wait for sequences (terminal)
set clipboard+=unnamedplus " Use system clipboard

set shortmess="aWIqF" " See following
" a: Lots of shortened abbreviations, read the docs ':h shortmess'
" W: No echo when writing a file
" I: No intro message when opening vim
" q: Use "recording" instead of "recording @a"
" F: No file info

set nofoldenable " All folds start enabled
let g:terminal_scrollback_buffer_size=100000 " What it says on the tin
set inccommand=split " See find-replace live

" HEAR YE HEAR YE, THE INCANTATION TO GET TAB TO DO SOMETHING REASONABLE
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on
