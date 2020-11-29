if !executable("ocamllsp") 
    echom "ocamllsp executable not found " 
endif
if !executable("ocamlformat") 
    echom "ocamllsp executable not found, make sure it's on your path!"
end

set nocompatible
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('neovim/nvim-lspconfig')
call minpac#add('nvim-lua/completion-nvim')
call minpac#add('sainnhe/sonokai')
packloadall

" misc config
let mapleader = " "
let maplocalleader = " "
set completeopt=menuone,noinsert,noselect
set shortmess+=c
colo sonokai

nnoremap <silent><leader>mt <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent><leader>md <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent><leader>mD <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent><leader>mr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent><leader>mw <cmd>lua vim.lsp.buf.workspace_symbol("")<CR>

imap <tab>   <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)
imap <expr>  <Down> pumvisible() ? "\<Tab>"   : "\<Down>"
imap <expr>  <Up>   pumvisible() ? "\<S-Tab>" : "\<Up>"
imap <expr>  <C-j>  pumvisible() ? "\<Tab>"   : "\<C-j>"
imap <expr>  <C-k>  pumvisible() ? "\<S-Tab>" : "\<C-k>"

function! FormatOcaml()
    " grab curpos because running the formatter will mess up the cursor
    " position
    let curpos = getpos('.')
    lua vim.lsp.buf.formatting_sync(nil, 100)
    call setpos ( '.', curpos )
endfunction
autocmd BufWritePre *.ml,*.mli call FormatOcaml()

" set up lsp
lua <<EOF
    local lspconfig = require'lspconfig'
    local configs = require'lspconfig/configs'
    lspconfig.ocamllsp.setup{on_attach=require'completion'.on_attach}
EOF

" override the completion to hide 'detail' and 'kind'
lua<<EOF
    local orig = vim.lsp.util.extract_completion_items 
    vim.lsp.util.extract_completion_items = function (...) 
      local modified = orig(unpack({...}))
      local out = {}
      for k, v in pairs(modified) do
          v.detail = ""
          v.kind = nil
          local l = v.label
          -- I hate it when these get put in the autocomplete for 
          if l == "~+" or l == "~+." or l == "~-" or l == "~-." then else 
              table.insert(out, v)
          end
      end
      return out
    end
EOF

