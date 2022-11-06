local M = {}

M.general = {
    n = {
        [";"] = { ":" , "command mode", opts = { nowait = true } },
        ["<leader>sl"] = { "<C-w><C-v>", "Split window to the right" },
        ["<leader>qq"] = { "<cmd>qall<cr>", "Quit all loaded and open buffers, splits, and tabs" },
    },
}

M.tabufline = {
    plugin = true,

    n = {
        ["<S-l>"] = {
            function()
                require("nvchad_ui.tabufline").tabuflineNext()
            end,
            "Go to next buffer",
        },

        ["<S-h>"] = {
            function()
                require("nvchad_ui.tabufline").tabuflinePrev()
            end,
            "Go to previous buffer",
        },
    }
}

M.hop = {
    plugin = true,

    n = {
        ["<leader>1"] = { "<cmd>HopChar1<cr>", "Hop to a single char sequence" },
        ["<leader>2"] = { "<cmd>HopChar2<cr>", "Hop to a two-char sequence" },
        ["<leader>3"] = { "<cmd>HopWord<cr>", "Hop to a word" },
    }
}

M.nvimtree = {
    plugin = true,

    n = {
        ["<leader>n"] = { "<cmd>NvimTreeToggle<cr>", "Toggle NvimTree" },
        ["<leader>e"] = { "<cmd>NvimTreeFocus<cr>", "Focus NvimTree" },
    }
}

M.telescope = {
    plugin = true,

    n = {
        ["<leader>pf"] = { "<cmd>Telescope find_files<cr>", "Telescope find file" },
        ["<leader>pw"] = { "<cmd>Telescope live_grep<cr>", "Telescope find word" },
        ["<leader>gd"] = { "<cmd>Telescope lsp_definitions<cr>", "Telescope goto definition" },
        ["<leader>gr"] = { "<cmd>Telescope lsp_references<cr>", "Telescope references" },
        ["<leader>pp"] = { "<cmd>Telescope projects<cr>", "Telescope projects" },
        ["<leader>tv"] = { "<cmd>Telescope themes<cr>", "NvChad themes" },
    }
}

M.nvterm = {
    plugin = true,

    n = {
        -- Toggle in normal mode
        ["<leader>tt"] = {
            function()
                require("nvterm.terminal").toggle "float"
            end,
            "Toggle floating terminal",
        },

        ["<leader>th"] = {
            function()
                require("nvterm.terminal").toggle "horizontal"
            end,
            "Toggle horizontal terminal",
        },
    },

    t = {
        -- Toggle in terminal mode
        ["<leader>tt"] = {
            function()
                require("nvterm.terminal").toggle "float"
            end,
            "Toggle floating terminal",
        },

        ["<leader>th"] = {
            function()
                require("nvterm.terminal").toggle "horizontal"
            end,
            "Toggle horizontal terminal",
        },
    },
}

M.whichkey = {
    plugin = true,

    n = {
        ["<leader>wk"] = {
            function()
                vim.cmd "WhichKey"
            end,
            "which-key all keymaps",
        },
    }
}

return M
