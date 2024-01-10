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

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "}", "}zz")
vim.keymap.set("n", "]]", "]]zz")

return M
