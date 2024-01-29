---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "chadracula",
  theme_toggle = { "chadracula", "catppuccin" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal

    -- default/round/block/arrow (separators work only for "default" statusline theme;
    -- round and block will work for the minimal theme only)
    separator_style = "block",
    overriden_modules = nil,
  },
  transparency = true,
  changed_themes = {
    chadracula = {
      -- base 16 from dracula official
      base_16 = {
        base00 = "#282936",
        base01 = "#3a3c4e",
        base02 = "#4d4f68",
        base03 = "#626483",
        base04 = "#F1FA8C",
        base05 = "#e9e9f4",
        base06 = "#f1f2f8",
        base07 = "#f7f7fb",
        base08 = "#FF5555",
        base09 = "#FFB86C",
        base0A = "#F1FA8C",
        base0B = "#50fa7b",
        base0C = "#8BE9FD",
        base0D = "#BD93F9",
        base0E = "#ff86d3",
        base0F = "#F8F8F2",
      },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
