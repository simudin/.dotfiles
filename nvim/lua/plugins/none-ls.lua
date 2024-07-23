return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    { "nvimtools/none-ls-extras.nvim" },   -- for curl, log wrapper
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        require("none-ls.diagnostics.eslint_d"),
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.rubocop,
        null_ls.builtins.diagnostics.rubocop,
      },
    })

    vim.keymap.set("n", "<Leader>gf", vim.lsp.buf.format, {})
  end,
}
