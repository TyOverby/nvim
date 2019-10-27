" Theme
Plug 'morhetz/gruvbox'
Plug 'flrnprz/plastic.vim'
Plug 'gcmt/taboo.vim'
Plug 'rakr/vim-two-firewatch'

" tpope
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'

" Utility
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'blueyed/vim-qf_resize'
Plug 'w0rp/ale'
Plug 'TyOverby/vim-entangle'
Plug 'machakann/vim-highlightedyank'
Plug 'moll/vim-bbye'
Plug 'liuchengxu/vim-which-key'

" Language
Plug 'gabrielelana/vim-markdown', { 'for': 'markdown' }
Plug 'rgrinberg/vim-ocaml', { 'for': ['ocaml', 'dune'] }
Plug 'w0rp/ale', { 'for': ['ocaml'] }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'copy/deoplete-ocaml'

if (isdirectory(expand("./_opam")))
    echom "loading merlin"
    exe 'set rtp+=' . expand("./_opam/share/merlin/vim/")
else 
    echom "not loading merlin"
endif 
