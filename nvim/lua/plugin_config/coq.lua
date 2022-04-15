-------------------------
--- Treesitter config ---
-------------------------
local configs = require('nvim-treesitter.configs')
configs.setup {
    ensure_installed = "all",
    highlight = {
        enable = true,
        disable = {"latex"}
    },
    indent = {
        enable = true,
        disable = {"python"}
    }
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

