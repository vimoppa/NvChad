---@type ChadrcConfig
local M = {}

M.plugins = "custom.plugins"
M.ui = {
  theme = "vscode_dark",
  statusline = {
    theme = "vscode_colored",
  },
}

M.options = {
  -- ruler = false,
  hidden = true,
}

return M
