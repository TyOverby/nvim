let g:bundles_loaded = 1

" Theme
Plug 'morhetz/gruvbox'
Plug 'flrnprz/plastic.vim'
Plug 'gcmt/taboo.vim'
Plug 'rakr/vim-two-firewatch'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }

" tpope
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-sleuth' 
Plug 'tpope/vim-markdown', { 'for': 'markdown' }

" Utility
Plug 'junegunn/fzf', { 'dir': '/usr/local/home/$USER/fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'blueyed/vim-qf_resize'
Plug 'w0rp/ale'
Plug 'TyOverby/vim-entangle'
Plug 'machakann/vim-highlightedyank'
Plug 'moll/vim-bbye'
Plug 'liuchengxu/vim-which-key'

" Language
Plug 'rgrinberg/vim-ocaml', { 'for': ['ocaml', 'dune'] }
Plug 'w0rp/ale', { 'for': ['ocaml'] }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'copy/deoplete-ocaml' 
Plug 'jceb/vim-orgmode'

if (isdirectory(expand("./_opam")))
    exe 'set rtp+=' . expand("./_opam/share/merlin/vim/")
endif
