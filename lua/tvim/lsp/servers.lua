local lspconfig = require("lspconfig")

local on_attach = function(_client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  -- LSP keymaps

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, opts)
end

local handlers = {
  function(server_name)
    require("lspconfig")[server_name].setup {
      on_attach = on_attach,
    }
  end,
}
-- Lua language server for lua
lspconfig.lua_ls.setup {
  on_attach = on_attach,
  settings = {
    lua = {
      diagnostics = {
        globals = { "vim" }
      }
    }
  }
}

-- Pyright for Python
lspconfig.pyright.setup {
  on_attach = on_attach
}

-- Clangd for C/C++
lspconfig.clangd.setup {
  on_attach = on_attach
}

require("mason-lspconfig").setup({ handlers = handlers })
return {}
