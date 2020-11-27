set nocompatible

" Initialize minpac
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('neovim/nvim-lspconfig')
call minpac#add('nvim-lua/completion-nvim')
packloadall

if (isdirectory(expand("./_opam")))
lua <<EOF

local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'

local on_attach = function()
  require'completion'.on_attach()
end

lspconfig.ocamllsp.setup{on_attach=on_attach}

EOF
endif

nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>

nnoremap <silent><leader>mt <cmd>lua vim.lsp.buf.hover()<CR>
" <cmd>lua vim.lsp.buf.hover()<CR>
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

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" " Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
" " Avoid showing message extra message when using completion
set shortmess+=c
imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)

