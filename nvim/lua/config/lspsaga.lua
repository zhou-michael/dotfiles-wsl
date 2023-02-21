local saga = require("lspsaga")
saga.setup({
    border_style = 'rounded',
    custom_kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
})

