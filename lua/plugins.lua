-- LSP
vim.pack.add({
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/mason-org/mason.nvim' },
    { src = 'https://github.com/mason-org/mason-lspconfig.nvim' },
})

require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = { 'lua_ls', 'pyright', 'clangd' },
    automatic_enable = true,
})

-- LSP CONFIGS
vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      diagnostics = { globals = { 'vim' } },
    },
  },
})

vim.lsp.config('pyright', {
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace", -- Analyzes open files + workspace
      },
    },
  },
})

vim.lsp.config('clangd', {
  -- Clangd uses command-line flags for customization instead of a settings block
  cmd = {
    "clangd",
    "--background-index",      -- Index code in the background
    "--clang-tidy",            -- Enable linter diagnostics
    "--header-insertion=iwyu", -- "Include What You Use" code actions
  },
})
