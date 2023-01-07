local ensure_packer = function()
    local packer_path = "/site/pack/packer/start/packer.nvim"
    local install_path = vim.fn.stdpath("data") .. packer_path

    -- Install packer if necessary.
    if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
        vim.fn.system({
            "git",
            "clone",
            "--depth",
            "1",
            "https://github.com/wbthomason/packer.nvim",
            install_path,
        })

        vim.cmd([[packadd packer.nvim]])
        return true
    end

    return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup({
    function(use)
        -- File navigator.
        use({
            "nvim-tree/nvim-tree.lua",
            requires = {
                "nvim-tree/nvim-web-devicons", -- optional, for file icons
            },
            tag = "nightly", -- optional, updated every week. (see issue #1193)
        })

        -- Git functions.
        use("tpope/vim-fugitive")

        -- Powerline alternative.
        use("vim-airline/vim-airline")
        use("vim-airline/vim-airline-themes")

        -- Display buffer tabs.
        use({
            "akinsho/bufferline.nvim",
            tag = "v3.*",
            requires = "nvim-tree/nvim-web-devicons",
        })

        -- Packer should manage itself.
        use("wbthomason/packer.nvim")

        -- Colorscheme
        use("folke/tokyonight.nvim")

        -- Configurations for nvim
        -- Language Service Protocol.
        use({
            "VonHeikemen/lsp-zero.nvim",
            requires = {
                -- LSP Support
                { "neovim/nvim-lspconfig" },
                { "williamboman/mason.nvim" },
                { "williamboman/mason-lspconfig.nvim" },
                -- Autocompletion
                { "hrsh7th/nvim-cmp" },
                { "hrsh7th/cmp-buffer" },
                { "hrsh7th/cmp-path" },
                { "saadparwaiz1/cmp_luasnip" },
                { "hrsh7th/cmp-nvim-lsp" },
                { "hrsh7th/cmp-nvim-lua" },
                -- Snippets
                { "L3MON4D3/LuaSnip" },
                { "rafamadriz/friendly-snippets" },
            },
        })

        -- Icon set for neovim plugins and settings.
        use({
            "yamatsum/nvim-nonicons",
            requires = { "kyazdani42/nvim-web-devicons" },
        })

        -- Code formatter.
        use("sbdchd/neoformat")

        -- LSP diagnostics on a small popup window.
        use("kaputi/e-kaput")

        -- Telescope is a fuzzy finder, much like FZF.
        use({
            "nvim-telescope/telescope.nvim",
            tag = "0.1.0",
            requires = { { "nvim-lua/plenary.nvim" } },
        })

        -- Treesitter, highlighting based on languages.
        use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
        use("nvim-treesitter/playground")

        -- treesitter does not support coffee script.
        use("kchmck/vim-coffee-script")

        -- Navigate the undo tree.
        use("mbbill/undotree")

        -- Git info will be displayed on the gutter.
        use("airblade/vim-gitgutter")

        -- Automatically set up your configuration
        -- after cloning packer.nvim, put this at
        -- the end after all plugins.
        if packer_bootstrap then
            require("packer").sync()
        end
    end,
    config = {
        display = { open_fn = require("packer.util").float },
        profile = {
            enable = false,
            -- Amount of ms that the plugin's loading
            -- time must be over for it to be included
            -- in the profile.
            threshold = 0,
        },
    },
})
