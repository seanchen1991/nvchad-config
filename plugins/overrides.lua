local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "rust",
    "toml",
  },
}

-- git support in nvimtree
M.nvimtree = {
  open_on_setup = true,
  git = {
    enable = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
