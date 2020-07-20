let g:bundles_loaded = 1

" Theme
Plug 'morhetz/gruvbox'
Plug 'flrnprz/plastic.vim'
Plug 'gcmt/taboo.vim'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'gcavallanti/vim-noscrollbar'
<<<<<<< HEAD
Plug 'nathanaelkane/vim-indent-guides'
Plug 'sainnhe/sonokai'
=======
>>>>>>> update-branch-ddb11804f7401a0724e58eaaa60afd7ae4de69b6-20e03e01ea85580d84cb06fff886c8786148de49

" tpope
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-sleuth' 
Plug 'tpope/vim-markdown', { 'for': 'markdown' }

" Utility
Plug 'junegunn/fzf', { 'dir': '$HOME/.config/fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'nvim-treesitter/nvim-treesitter'

Plug 'blueyed/vim-qf_resize'
Plug 'TyOverby/vim-entangle'
Plug 'machakann/vim-highlightedyank'
Plug 'moll/vim-bbye'
Plug 'liuchengxu/vim-which-key'

" Language
Plug 'rgrinberg/vim-ocaml', { 'for': ['ocaml', 'dune'] }
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'copy/deoplete-ocaml' 
Plug 'jceb/vim-orgmode'

if (isdirectory(expand("./_opam")))
    exe 'set rtp+=' . expand("./_opam/share/merlin/vim/")
endif
