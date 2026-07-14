return {
    -- File navigator.
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    -- Git functions.
    "tpope/vim-fugitive",

    -- Powerline alternative.
    {
        "vim-airline/vim-airline",
        dependencies = { "vim-airline/vim-airline-themes", "ryanoasis/vim-devicons" },
        init = function()
            vim.g.airline_powerline_fonts = 1
            vim.g.airline_theme = "minimalist"
        end,
    },
    "vim-airline/vim-airline-themes",
    "ryanoasis/vim-devicons",

    -- Colorscheme.
    "folke/tokyonight.nvim",

    -- Telescope is a fuzzy finder.
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
    },

    -- Treesitter, highlighting based on languages.
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },

    -- Navigate the undo tree.
    "mbbill/undotree",

    -- Git info will be displayed on the gutter.
    "airblade/vim-gitgutter",
}
