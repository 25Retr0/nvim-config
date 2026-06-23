-- lua/autocmds.lua

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-----------------------------------------------------------------------------------------------------------------------
-- Highlight when yanking (copying) text
-----------------------------------------------------------------------------------------------------------------------

local yank_group = augroup("highlight-yank", { clear = true })

autocmd('TextYankPost', {
  group = yank_group,
  desc = 'Highlight when yanking (copying) text',
  callback = function()
    vim.hl.on_yank()
  end,
})

-----------------------------------------------------------------------------------------------------------------------
