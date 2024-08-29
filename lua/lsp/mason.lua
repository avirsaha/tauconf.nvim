return {
  'williamboman/mason.nvim', -- Mason plugin for managing external tooling
  dependencies = {
    'williamboman/mason-lspconfig.nvim', -- Integration with lspconfig for automatic LSP installation
    'WhoIsSethDaniel/mason-tool-installer.nvim', -- Automatically install tools for LSP servers
  },
  config = function()
    -- Setup Mason
    require('mason').setup()

    -- Configure Mason LSP Config
    require('mason-lspconfig').setup {
      automatic_installation = true, -- Automatically install LSP servers
      ensure_installed = { -- List of LSP servers to ensure are installed
        -- "cssls",
        -- "eslint",
        -- "html",
        -- "jsonls",
        'tsserver',
        'pyright',
        -- "tailwindcss",
        'ccls',
        'lua_ls',
      },
    }

    -- Configure Mason Tool Installer
    require('mason-tool-installer').setup {
      ensure_installed = { -- List of tools to ensure are installed
        'prettier', -- Code formatter for JavaScript, TypeScript, etc.
        'stylua', -- Lua code formatter
        'isort', -- Python import sorter
        'black', -- Python code formatter
        'pylint', -- Python linter
        'eslint_d', -- ESLint with faster performance
        'clang-format', -- C/C++ code formatter
      },
    }
  end,
}
