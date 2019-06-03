" Theme
Plug 'morhetz/gruvbox'
Plug 'flrnprz/plastic.vim'

" tpope
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'

" Utility
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'szw/vim-ctrlspace'
Plug 'w0rp/ale'
Plug 'TyOverby/vim-entangle'
Plug 'machakann/vim-highlightedyank'

" Language
Plug 'gabrielelana/vim-markdown', { 'for': 'markdown' }
Plug 'rgrinberg/vim-ocaml', { 'for': ['ocaml', 'dune'] }
Plug '~/.opam/4.07.0/share/merlin/vim/', {'for': ['ocaml']}
Plug 'w0rp/ale', { 'for': ['ocaml'] }
Plug 'Shougo/deoplete.nvim', { 'for': 'ocaml' , 'do': ':UpdateRemotePlugins' }
Plug 'copy/deoplete-ocaml', { 'for': 'ocaml' }
