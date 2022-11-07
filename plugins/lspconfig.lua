local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "jsonls",
  "sumneko_lua",
  -- "rust_analyzer",
}

for _, lsp in ipairs(servers) do
  local server_opts = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
  --
  -- if lsp == "rust_analyzer" then
  --     local ok_rt, rust_tools = pcall(require, "rust-tools")
  --     if not ok_rt then
  --         print("Failed to load rust-tools; setting up `rust_analyzer` without `rust-tools`")
  --     else
  --         rust_tools.setup({
  --             server = server_opts,
  --         })
  --         goto continue
  --     end
  -- end

  lspconfig[lsp].setup(server_opts)
  -- ::continue::
end
