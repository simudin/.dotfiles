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
      require("mason-lspconfig").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "rust_analyzer", "ts_ls", "clangd", "gopls", "golangci_lint_ls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config("lua_ls", {})
      vim.lsp.config("rust_analyzer", {})
      vim.lsp.config("ts_ls", {})
      vim.lsp.config("clangd", {})
      vim.lsp.config("gopls", {})
      vim.lsp.config("golangci_lint_ls", {})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<Leader>e", vim.diagnostic.open_float, {})
    end,
  },
}
