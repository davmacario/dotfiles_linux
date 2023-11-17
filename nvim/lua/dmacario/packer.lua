-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({ 
        "ellisonleao/gruvbox.nvim",
        as = 'gruvbox',
        config = function()
            vim.cmd('colorscheme gruvbox')
        end

    })

    use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use( 'nvim-treesitter/playground' )
    use( 'theprimeagen/harpoon' )
    use( 'mbbill/undotree' )
    use( 'tpope/vim-fugitive' )
    use( 'vim-airline/vim-airline' )
    use( 'vim-airline/vim-airline-themes' )
    use( 'preservim/nerdtree' )
    use( 'ryanoasis/vim-devicons' )
    use( 'Yggdroot/indentline' )
    use( 'lewis6991/gitsigns.nvim' )
    use( 'nvim-tree/nvim-web-devicons' )
    use( 'romgrk/barbar.nvim' )
    use( 'nvim-lua/plenary.nvim' )
    use( 'dense-analysis/ale' )
    use( 'vim-syntastic/syntastic' )
    use( 'stevearc/dressing.nvim' )
    use( 'airblade/vim-gitgutter' )
    use( 'lervag/vimtex' )
    use( 'SirVer/ultisnips' )
    use( 'honza/vim-snippets' )
    use {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            signs = {
                -- icons / text used for a diagnostic
                error = "",
                warning = "",
                hint = "",
                information = "",
                other = "",
            },
        },
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    -- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

end)

