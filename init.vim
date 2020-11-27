set nocompatible

packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('neovim/nvim-lspconfig')
call minpac#add('nvim-lua/completion-nvim')
packloadall

if !executable("ocamllsp") 
    echom "ocamllsp executable not found, make sure it's on your path!"
    finish
end

lua <<EOF
local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'

local on_attach = function()
  require'completion'.on_attach()
end

lspconfig.ocamllsp.setup{on_attach=on_attach}
EOF

nnoremap <silent><leader>mt <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent><leader>md <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent><leader>mD <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent><leader>mr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent><leader>mw <cmd>lua vim.lsp.buf.workspace_symbol("")<CR>

set omnifunc=v:lua.vim.lsp.omnifunc

function! FormatOcaml()
    let curpos = getpos('.')
    lua vim.lsp.buf.formatting_sync(nil, 1000)
    call setpos ( '.', curpos )
endfunction

autocmd BufWritePre *.ml,*.mli call FormatOcaml()

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
set completeopt=menuone,noinsert,noselect
set shortmess+=c
imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)

