-- Import lspconfig and other necessary modules
local lspconfig = require 'lspconfig'
local mason_lspconfig = require 'mason-lspconfig'

-- Common on_attach function to set keybindings after LSP attaches to a buffer
local on_attach = function(client, bufnr)
  local buf_set_keymap = vim.api.nvim_buf_set_keymap
  local opts = { noremap = true, silent = true }

  -- Keybindings for LSP features
  buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap(bufnr, 'n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap(bufnr, 'n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
end

-- Capabilities for enhanced completion (using nvim-cmp)
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Ensure that the LSP servers are installed
mason_lspconfig.setup {
  ensure_installed = { 'pyright', 'clangd', 'tsserver', 'lua_ls' },
}

-- Setup for Python (pyright)
lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- Setup for C/C++ (clangd)
lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { 'clangd', '--background-index' },
}

-- Setup for JavaScript/TypeScript (tsserver)
lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- Setup for Lua (lua_ls, formerly sumneko_lua)
lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true),
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
}
