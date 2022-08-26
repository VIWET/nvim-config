local api = vim.api
local map = vim.keymap

local opts = { noremap=true, silent=true } 

map.set('n', '<space>e', vim.diagnostic.open_float, opts)
map.set('n', '[d', vim.diagnostic.goto_prev, opts)
map.set('n', ']d', vim.diagnostic.goto_next, opts)
map.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
  api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local bufopts = { noremap=true, silent=true, buffer=bufnr }

  map.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  map.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  map.set('n', 'K', vim.lsp.buf.hover, bufopts)
  map.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  map.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  map.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  map.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  map.set('n', '<space>wl', 
  	function()
    	print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  	end, bufopts)
  map.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  map.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  map.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  map.set('n', 'gr', vim.lsp.buf.references, bufopts)
  map.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

return on_attach
