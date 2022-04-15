require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    --use 'bluz71/vim-moonfly-colors'
    --use 'mhartington/oceanic-next'
    use {
        "catppuccin/nvim",
        as = "catppuccin"
    }
    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'folke/lsp-colors.nvim'
    use 'windwp/nvim-autopairs'
    use 'ms-jpq/coq.nvim'
    use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
    use 'nvim-lua/lsp-status.nvim'
    use 'datwaft/bubbly.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'lewis6991/spellsitter.nvim'
    use "ellisonleao/glow.nvim"
    use 'glepnir/lspsaga.nvim'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        }
    }
end)
