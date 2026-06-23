vim.g.editorconfig = false
vim.opt.number = true -- Show standard line numbers
vim.opt.relativenumber = true -- Show relative distance numbers
vim.opt.mouse = "a" -- Enable mouse mode
vim.opt.tabstop = 4 -- Force 4 visual spaces per tab
vim.opt.shiftwidth = 4 -- Force 4 indentation spaces
vim.opt.expandtab = true -- Change raw tabs directly into spaces
vim.opt.termguicolors = true -- Force modern high-fidelity color support
vim.opt.breakindent = true -- Any wrap around text is indented when wrapped
vim.opt.wrap = false -- Text wrapping
vim.opt.undofile = true -- Saves undo history
vim.opt.ignorecase = true -- Case insensitive search
vim.opt.smartcase = true -- Case sensitive is captial letters in search
vim.opt.colorcolumn = "120" -- Set vertical rule line
vim.opt.signcolumn = "yes" -- Keep sign column on
vim.opt.cursorline = true -- Highlight line of cursour
vim.opt.scrolloff = 8 -- Min number of screen lines above and below cursor
vim.opt.confirm = true -- Check before i do something dumb
vim.opt.autoindent = true -- Copy indent from previous line when starting new one
vim.opt.updatetime = 250 -- Decrease update time (default: 4000)
vim.opt.timeoutlen = 300 -- Time to wait for a mapped sequence to complete
vim.opt.clipboard = "unnamedplus" -- Set system clipboard
vim.opt.completeopt = { 'menu', 'menuone', 'noselect', 'popup' }
vim.o.autocomplete = true -- enables the completion feature


