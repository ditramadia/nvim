-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Idententation preferences
autocmd("FileType", {
  pattern = { "dart", "lua", "yaml", "json" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})

-- Disable spell check where it's just noise (PRDs, ADRs, WebSocket, etc.)
augroup("UserSpellOff", { clear = true })
autocmd("FileType", {
  group = "UserSpellOff",
  pattern = { "markdown", "markdown%.mdx" },
  callback = function()
    vim.opt_local.spell = false
  end,
})
