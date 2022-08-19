require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    ----------
    --- UI ---
    ----------
    use { 'catppuccin/nvim', as = 'catppuccin' }
    use { 'nvim-treesitter/nvim-treesitter' }
    use 'datwaft/bubbly.nvim'
    use 'kyazdani42/nvim-web-devicons'

    -----------
    --- LSP ---
    -----------
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'folke/lsp-colors.nvim'
    use 'nvim-lua/lsp-status.nvim'


    use 'windwp/nvim-autopairs'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'lewis6991/spellsitter.nvim'
    use 'ellisonleao/glow.nvim'
    use 'kyazdani42/nvim-tree.lua'

    ----------------------
    --- Unused plugins ---
    ----------------------

    --use 'glepnir/lspsaga.nvim'
    --use 'bluz71/vim-moonfly-colors'
    --use 'mhartington/oceanic-next'
    --use 'ms-jpq/coq.nvim'
    --use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
end)

require('config')

--require('plugin_config.colorscheme')
--require('plugin_config.treesitter')
--require('plugin_config.nvim_lsp_installer')
--require('plugin_config.coq')
--require('plugin_config.bubbly')
--require('plugin_config.nvim_autopairs')
--require('plugin_config.glow')
--require('plugin_config.nvim_tree')
--require('plugin_config.spellsitter')

--local saga = require 'lspsaga'
--saga.init_lsp_saga()

