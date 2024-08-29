local M = {}

M.servers = {
  -- TypeScript server
  ['tsserver'] = function(on_attach, capabilities)
    require('lspconfig').tsserver.setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end,

  -- CSS server
  -- ["cssls"] = function(on_attach, capabilities)
  -- require("lspconfig").cssls.setup({
  -- on_attach = on_attach,
  -- capabilities = capabilities,
  -- })
  -- end,

  -- TailwindCSS server
  -- ["tailwindcss"] = function(on_attach, capabilities)
  -- require("lspconfig").tailwindcss.setup({
  -- on_attach = on_attach,
  -- capabilities = capabilities,
  -- })
  -- end,

  -- HTML server
  -- ["html"] = function(on_attach, capabilities)
  -- require("lspconfig").html.setup({
  -- on_attach = on_attach,
  -- capabilities = capabilities,
  -- })
  -- end,

  -- JSON server
  ['jsonls'] = function(on_attach, capabilities)
    require('lspconfig').jsonls.setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end,

  -- ESLint server
  -- ["eslint"] = function(on_attach, capabilities)
  -- require("lspconfig").eslint.setup({
  -- on_attach = on_attach,
  -- capabilities = capabilities,
  -- })
  -- end,

  -- Python server
  ['pyright'] = function(on_attach, capabilities)
    require('lspconfig').pyright.setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end,

  -- Lua server
  ['lua_ls'] = function(on_attach, capabilities)
    require('lspconfig').lua_ls.setup {
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        Lua = {
          runtime = {
            version = 'LuaJIT', -- Lua version
            path = vim.split(package.path, ';'),
          },
          diagnostics = {
            globals = { 'vim' }, -- Global variables to be considered in diagnostics
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file('', true), -- Libraries to be included in workspace
          },
          telemetry = {
            enable = false, -- Disable telemetry
          },
        },
      },
    }
  end,

  -- C/C++ server
  ['clangd'] = function(on_attach, capabilities)
    require('lspconfig').clangd.setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end,
}

return M
