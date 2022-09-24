------------------------
--- Autopairs config ---
------------------------
local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')
local cond = require('nvim-autopairs.conds')
local utils = require('nvim-autopairs.utils')
--local ts_conds = require('nvim-autopairs.ts-conds')
local remap = vim.api.nvim_set_keymap

remap('i', '<esc>', [[pumvisible() ? "<c-e><esc>" : "<esc>"]], { expr = true, noremap = true })
remap('i', '<c-c>', [[pumvisible() ? "<c-e><c-c>" : "<c-c>"]], { expr = true, noremap = true })
remap('i', '<tab>', [[pumvisible() ? "<c-n>" : "<tab>"]], { expr = true, noremap = true })
remap('i', '<s-tab>', [[pumvisible() ? "<c-p>" : "<bs>"]], { expr = true, noremap = true })

npairs.setup({ check_ts = true, map_bs = true, map_cr = true })

vim.g.coq_settings = { keymap = { recommended = false } }

-- skip it, if you use another global object
_G.MUtils= {}

MUtils.CR = function()
    if vim.fn.pumvisible() ~= 0 then
        if vim.fn.complete_info({ 'selected' }).selected ~= -1 then
            return npairs.esc('<c-y>')
        else
            return npairs.esc('<c-e>') .. npairs.autopairs_cr()
        end
    else
        return npairs.autopairs_cr()
    end
end
remap('i', '<cr>', 'v:lua.MUtils.CR()', { expr = true, noremap = true })

MUtils.BS = function()
    if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info({ 'mode' }).mode == 'eval' then
        return npairs.esc('<c-e>') .. npairs.autopairs_bs()
    else
        return npairs.autopairs_bs()
    end
end
remap('i', '<bs>', 'v:lua.MUtils.BS()', { expr = true, noremap = true })

local move_func_same = function()
    return function(opts)
        if opts.next_char == opts.char then
            if opts.col == string.len(opts.line) then
                return
            end
            -- ("|")  => (""|)
            --  ""       |"      "  => ""       "|      "
            if utils.is_in_quotes(opts.line, opts.col - 1, opts.char) then
                return
            end
        end
        return false
    end
end

local count_paired = function()
    return function(opts)
        local line = opts.line
        local count = 0
        local idx = 1
        while idx <= string.len(line) do
            if line:sub(idx, idx) == '$' and (idx == 0 or line:sub(idx-1, idx-1) ~= '\\') then
                print(idx)
                count = count + 1
            end
            idx = idx + 1
        end

        if count % 2 == 1 then
            return false
        end
    end
end

npairs.add_rules({
    Rule("\\[", "\\]", {"tex", "latex"}),
    Rule("$", "$", {"tex", "latex"})
        :with_pair(cond.not_before_regex("\\", 1))
        :with_pair(cond.not_inside_quote())
        :with_pair(cond.not_after_regex(npairs.config.ignored_next_char))
        --:with_pair(ts_conds.is_not_ts_node_comment)
        --:with_pair(ts_conds.is_not_ts_node({'string','comment'}))
        :with_pair(count_paired())
        :with_move(move_func_same())
        :use_undo(true)
})

