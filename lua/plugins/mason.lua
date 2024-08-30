-- Import mason and mason-lspconfig
local mason = require 'mason'
local mason_lspconfig = require 'mason-lspconfig'

-- Set up Mason
mason.setup {
  ui = {
    icons = {
      package_installed = '✓',
      package_pending = '➜',
      package_uninstalled = '✗',
    },
  },
}

-- Set up Mason LSPConfig integration
mason_lspconfig.setup {
  -- Specify the LSP servers to be installed automatically
  ensure_installed = {
    'pyright', -- Python LSP server
    'clangd', -- C/C++ LSP server
    'tsserver', -- JavaScript/TypeScript LSP server
    'lua_ls', -- Lua LSP server
  },
  -- Automatically install the servers specified in ensure_installed
  automatic_installation = true,
}

-- Additional setup for formatters and linters
require('mason').setup {
  ensure_installed = {
    'black', -- Python formatter
    'prettier', -- JavaScript formatter
  },
  automatic_installation = true,
}

-- Optionally, you can add additional setup for other tools (linters, formatters) if needed
