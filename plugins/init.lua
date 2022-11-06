local overrides = require "custom.plugins.overrides"

return {
  -- LSP plugins
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["williamboman/mason-lspconfig.nvim"] = {},

  -- Rust-specific plugins
  ["simrat39/rust-tools.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.rust-tools"
    end,
  },

  -- Code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- Hop for faster navigation
  ["phaazon/hop.nvim"] = {
    branch = "v2",
  },

  -- Make cursor more visible
  ["DanilaMihailov/beacon.nvim"] = {},

  -- Override NvChad default plugin options
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },
  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },
  ["hrsh7th/nvim-cmp"] = {
    override_options = overrides.cmp,
  },

  -- Disabled plugins
  ["goolord/alpha-nvim"] = false,
}
