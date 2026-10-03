-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Indentation preferences

opt.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for
opt.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent
opt.softtabstop = 4 -- Number of spaces that a <Tab> counts for while performing editing operations
opt.expandtab = true -- Convert tabs to spaces

-- Visual preferences

opt.winborder = "rounded" -- Rounded borders
