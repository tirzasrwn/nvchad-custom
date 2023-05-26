---@type MappingsTable
local M = {}

-- M.general = {
--   n = {
--     [";"] = { ":", "enter command mode", opts = { nowait = true } },
--   },
-- }

-- more keybinds!

-- M.dap = {
--   n = {
--     ["<leader>rb"] = {
--       "<cmd> DapToggleBreakpoint <CR>",
--       "Toggle breakpoint",
--     },
--   }
-- }

-- Bind for lsp tool
M.lsp = {
  n = {
    -- ["<leader>lf"] = {
    --   function ()
    --     local lspbuf = require('vim.lsp.buf');
    --     lspbuf.format();
    --   end,
    --   "format using lsp",
    -- }
    ["<leader>le"] = {
      function()
        vim.diagnostic.open_float()
      end,
      "open diagnostic float this line",
    },
  },
}

return M
