return {
  "Exafunction/codeium.nvim",
  enabled = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      sources = {
        { name = "codeium" },
      },
    })
    require("codeium").setup({
      enable_chat = true,
    })
  end,
}
