vim.g.mapleader = " "
vim.g.maplocalleader = " "

local function map(mode, keymap, command, desc)
	vim.keymap.set(mode, keymap, command, { noremap = true, silent = true, desc = desc })
end

-- Indenting
map("v", "<", "<gv", "De-Indent current line")
map("v", ">", ">gv", "Indent current line")

-- Highlighting
map("n", "<leader>nh", ":nohl<CR>", "Clear Highlighting")

-- Diagnostics
map("n", "<leader>q", vim.diagnostic.setloclist, "Open diagnostic [Q]uickfix list")

-- Window Navigation
map("n", "<C-h", "<C-w>h", "Navigate window left")
map("n", "<C-j", "<C-w>j", "Navigate window down")
map("n", "<C-k", "<C-w>k", "Navigate window up")
map("n", "<C-l", "<C-w>l", "Navigate window right")

-- File Explorer (Netrw)
map("n", "<leader>ex", ":Ex<CR>", "Open Netrw [Ex]plorer")
map("n", "<leader>el", ":Ex<CR>", "Open Netrw [E]xplorer [L]eft")
