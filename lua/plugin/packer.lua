-- packer.lua
return require('packer').startup(function()
    use {"wbthomason/packer.nvim"}
    use {"williamboman/mason.nvim"}
    use {
       'nvim-telescope/telescope.nvim', tag = '0.1.6',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        "simrat39/rust-tools.nvim",
        requires = { "neovim/nvim-lspconfig" }
    }
    use {
        'lewis6991/gitsigns.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }
    use {
        'hrsh7th/nvim-cmp',
         requires = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        }
    }

    use {'vim-utils/vim-man'}
end)

