local plugins = {

  { "pocco81/auto-save.nvim", lazy = false, enabled = true }, -- auto-save configuration

  { "rust-lang/rust.vim",     lazy = false, enabled = true }, -- rust-language support

  { "modocache/move.vim",     lazy = false, enabled = true }, -- move-language support

  -- {
  --   "Mofiqul/vscode.nvim",
  --   lazy = false,
  --   enabled = true,
  --   config = function()
  --     -- require('vscode').load('dark')
  --     vim.cmd [[colorscheme vscode]]
  --     -- vim.cmd [[
  --     --   let g:airline_theme='vscode_dark'
  --     -- ]]
  --   end,
  -- },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      vim.cmd [[ set foldmethod=expr ]]
      vim.cmd [[ set foldexpr=nvim_treesitter#foldexpr() ]]
      vim.cmd [[ set nofoldenable ]]
    end,
    -- opts = {
    --   ensure_installed = {
    --     -- defaults
    --     "vim",
    --     "vimdoc",
    --     "lua",
    --
    --     "html",
    --     "css",
    --     "json",
    --     "javascript",
    --     "typescript",
    --     "python",
    --     "go",
    --     "rust",
    --
    --     "solidity",
    --
    --     "terraform",
    --     "bash",
    --     "c",
    --     "yaml",
    --     "hcl",
    --     "markdown",
    --   },
    -- }
  },

  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    enabled = true,
    build = ":MasonUpdate",
    -- opts = {
    --   ensure_installed = {
    --     "lua_ls",
    --     "move_analyzer",
    --     "tsserver",
    --     "rust_analyzer",
    --     "dockerls",
    --     -- "html-lsp",
    --     -- "prettier",
    --     -- "stylua",
    --     -- "tfsec",
    --     -- "tflint",
    --     "terraformls",
    --     "awk_ls",
    --     "bashls",
    --     "cssls",
    --     "dockerls",
    --     "gopls",
    --     -- "golangci_lint_ls",
    --     -- "gradle_ls",
    --     "grammarly",
    --     "graphql",
    --     -- "html",
    --     "jsonls",
    --     -- "sumneko_lua",
    --     -- "marksman",
    --     -- "pyright",
    --     "pylsp",
    --     "sqlls",
    --     "tailwindcss",
    --     -- "nil_ls",
    --     "yamlls",
    --     "taplo",
    --     "svelte",
    --     "solidity",
    --   },
    -- },
  },


  {
    "neovim/nvim-lspconfig",
    lazy = false,
    enabled = true,
    -- dependencies = {
    --   "jose-elias-alvarez/null-ls.nvim",
    --   config = function()
    --     require "custom.configs.null-ls"
    --   end,
    -- },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}

return plugins
