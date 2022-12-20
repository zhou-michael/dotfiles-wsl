local saga = require("lspsaga")
saga.init_lsp_saga({
    border_style = 'rounded',
    custom_kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
})

