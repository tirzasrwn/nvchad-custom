-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
vim.opt.shell = "/usr/bin/fish"
vim.wo.relativenumber = true
vim.wo.wrap = false
