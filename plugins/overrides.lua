local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "rust",
    "toml",
  },
  auto_install = true,
  highlight = {
    enable = false,
    additional_vim_regex_highlighting = false,
  },
  ident = { enable = true },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },
}

M.nvimtree = {
  open_on_setup = true,
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true,
  },
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
