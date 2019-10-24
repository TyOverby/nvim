let g:bundles_loaded = 1

" Theme
Plug 'morhetz/gruvbox'
Plug 'flrnprz/plastic.vim'
Plug 'gcmt/taboo.vim'
Plug 'rakr/vim-two-firewatch'
Plug 'sainnhe/vim-color-desert-night'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }

" tpope
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-sleuth' 
Plug 'tpope/vim-markdown', { 'for': 'markdown' }

" Utility
Plug 'junegunn/fzf', { 'dir': '/usr/local/home/toverby/fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'blueyed/vim-qf_resize'
Plug 'w0rp/ale'
Plug 'TyOverby/vim-entangle'
Plug 'machakann/vim-highlightedyank'
Plug 'moll/vim-bbye'
Plug 'liuchengxu/vim-which-key'

" Language
Plug 'rgrinberg/vim-ocaml', { 'for': ['ocaml', 'dune'] }
" Plug '~/.opam/4.07.0/share/merlin/vim/', {'for': ['ocaml']}
Plug 'w0rp/ale', { 'for': ['ocaml'] }
Plug 'Shougo/deoplete.nvim', { 'for': 'ocaml', 'do': ':UpdateRemotePlugins' }
Plug 'copy/deoplete-ocaml', { 'for': 'ocaml' }
