---@type MappingsTable
local M = {}

M.general = {
  -- normal mode
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>le"] = {
      function()
        vim.diagnostic.open_float()
      end,
      "open diagnostic float this line",
    },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
  },

  -- visual mode
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "}", "}zz")
vim.keymap.set("n", "]]", "]]zz")
vim.keymap.set("n", "G", "Gzz")
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })

return M
