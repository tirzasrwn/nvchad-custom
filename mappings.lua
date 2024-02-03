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
    ["<leader>f"] = {
      function()
        require("conform").format()
      end,
      "lsp/conform formatting",
    },
  },

  -- visual mode
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!
--
-- keep center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "}", "}zz")
vim.keymap.set("n", "]]", "]]zz")
vim.keymap.set("n", "G", "Gzz")
-- lsp hover
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
-- move selected up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- delete into blackhole buffer and paste
vim.keymap.set("x", "<leader>p", [["_dP]])
-- yank into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "v", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- delete into blackhole
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
-- open tmux-sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- next and previous search result, compiler errors, or other commands that generate a list of locations
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

return M
