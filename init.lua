local opt = vim.opt
local autocmd = vim.api.nvim_create_autocmd

-- Auto-resize panes when resizing nvim window
autocmd("VimResized", {
    pattern = "*",
    command = "tabdo wincmd =",
})

-- Indenting
opt.tabstop = 4
opt.softtabstop = 4