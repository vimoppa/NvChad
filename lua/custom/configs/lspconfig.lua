local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "tsserver",
  "rust_analyzer",
  "dockerls",
  "terraformls",
  "awk_ls",
  "bashls",
  "cssls",
  "dockerls",
  "gopls",
  "golangci_lint_ls",
  "grammarly",
  "graphql",
  "jsonls",
  "pylsp",
  "sqlls",
  "tailwindcss",
  "yamlls",
  "taplo",
  "svelte",
  "solidity",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
