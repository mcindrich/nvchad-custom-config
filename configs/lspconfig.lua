local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "rust_analyzer", "zls", "pyright" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- clangd
local clangd_capabilities = capabilities
clangd_capabilities.offsetEncoding = { "utf-16" }
lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = clangd_capabilities,
}
