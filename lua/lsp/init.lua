require('lsp/autocmd')
local lsp_flags = require('lsp/flags')
local on_attach = require('lsp/on_attach')
local api = vim.api

require('lspconfig')['gopls'].setup{
	on_attach = on_attach,
	flags = lsp_flags,
    settings = {
        gopls = {
            analyses = {
                nilness = true,
                unusedparams = true,
                unusedwrite = true,
                useany = true,
          },
          gofumpt = true,
          staticcheck = true,
          usePlaceholders = true,
        },
    },
}
