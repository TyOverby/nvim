# A minimal ocaml-oriented neovim config 

This config takes advantage of 
- [ocaml-lsp](https://github.com/ocaml/ocaml-lsp)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [completion-nvim](https://github.com/nvim-lua/completion-nvim)

in order to provide a small, reasonable, out-of-the-box 
experience for neovim users.

## Installation

**Install `ocamllsp`**

```bash
opam install ocaml-lsp-server
```

**Install plugins**

```bash
nvim +"call minpac#update()"
```
