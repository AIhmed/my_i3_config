set number
set relativenumber
set noerrorbells
set smartindent
set incsearch
set scrolloff=10
set nohlsearch
source $HOME/.config/nvim/plugins/plugins.vim

let mapleader= " "
lua << EOF
require("lspconfig").pylsp.setup{}
EOF

set completeopt-=preview

" use omni completion provided by lsp
autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc

nnoremap <silent>gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent><C-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent>K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent>gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent><c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent>1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent>gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent>g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent>gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>

nnoremap <leader>n :NERDTree<CR> 
