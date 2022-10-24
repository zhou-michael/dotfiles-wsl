local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local default_opt = {
    capabilities = capabilities
}

lspconfig.sumneko_lua.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = {
                    'vim',
                    'use'
                }
            }
        }
    },
    capabilities = capabilities
})

lspconfig.vimls.setup(default_opt)
lspconfig.clangd.setup(default_opt)
lspconfig.pyright.setup(default_opt)
lspconfig.rust_analyzer.setup(default_opt)

