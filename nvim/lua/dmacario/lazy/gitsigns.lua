return{
    'lewis6991/gitsigns.nvim',
    dependencies = {
        'tpope/vim-fugitive',
    },
    config = function()
        require('gitsigns').setup({
            signs = {
                add          = { text = '│' },
                change       = { text = '│' },
                delete       = { text = '_' },
                topdelete    = { text = '‾' },
                changedelete = { text = '~' },
                untracked    = { text = '┆' },
            },
        })
    end
}
