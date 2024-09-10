return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright", "ts_ls", "clangd" }, -- List your required LSPs here
	
      })
    end,
  },
  {
    "neovim/nvim-lspconfig", -- You need this plugin to configure LSPs
  }
}

