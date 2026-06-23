-- lua/mappings.lua

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local function map(mode, keymap, command, desc)
	vim.keymap.set(mode, keymap, command, { noremap = true, silent = true, desc = desc })
end

map("v", "<", "<gv", "De-Indent current line")
map("v", ">", ">gv", "Indent current line")

map("n", "<leader>nh", ":nohl<CR>", "Clear Highlighting")

map("n", "<leader>q", vim.diagnostic.setloclist, "Open diagnostic [Q]uickfix list")

map("n", "<C-h", "<C-w>h", "Navigate window left")
map("n", "<C-j", "<C-w>j", "Navigate window down")
map("n", "<C-k", "<C-w>k", "Navigate window up")
map("n", "<C-l", "<C-w>l", "Navigate window right")
