local present, rust_tools = pcall(require, "rust-tools")

if not present then
  return
end

local function on_attach(client, buffer)
  local keymap_opts = { buffer = buffer }

  -- Code actions
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, keymap_opts)

  -- Goto next/previous diagnostic warning/error
  vim.keymap.set("n", "<leader>[", vim.diagnostic.goto_prev, keymap_opts)
  vim.keymap.set("n", "<leader>]", vim.diagnostic.goto_prev, keymap_opts)
end

local opts = {
  tools = {
    runnables = {
      use_telescope = true,
    },
    inlay_hints = {
      auto = true,
      show_parameter_hints = true,
      parameter_hints_prefix = "",
      other_hints_prefix = "",
    },
  },

  server = {
    on_attach = on_attach,
    settings = {
      ["rust-analyzer"] = {
        checkOnSave = {
          command = "clippy",
        },
      },
    },
  },
}

rust_tools.setup(opts)
