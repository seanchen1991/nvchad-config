local overrides = require "custom.plugins.overrides"

return {
    ["neovim/nvim-lspconfig"] = {
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
        end,
    },

    -- Override plugin configs
    ["nvim-treesitter/nvim-treesitter"] = {
        override_options = overrides.treesitter,
    },

    ["kyazdani42/nvim-tree.lua"] = {
        override_options = overrides.nvimtree,
    },

    -- Code formatting, linting etc
    ["jose-elias-alvarez/null-ls.nvim"] = {
        after = "nvim-lspconfig",
        config = function()
            require "custom.plugins.null-ls"
        end,
    },

    -- Disabled plugins
    ["lewis6991/gitsigns.nvim"] = false,

    ["rafamadriz/friendly-snippets"] = false,

    ["L3MON4D3/LuaSnip"] = false,

    ["goolord/alpha-nvim"] = false,
}
