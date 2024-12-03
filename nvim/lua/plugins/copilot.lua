return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      local copilot_config = {
        suggestion = {
          enabled = true,
          auto_trigger = false,
          hide_during_completion = true,
          debounce = 75,
          keymap = {
            accept = "<Leader><Tab>",
            accept_word = false,
            accept_line = false,
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
        },
        filetypes = {
          javascript = true,
          typescript = true,
          ruby = true,
          ["*"] = false,     -- disable for all other filetypes and ignore default `filetypes`
        },
      }

      require("copilot").setup(copilot_config)
      require("copilot.suggestion").toggle_auto_trigger()
    end,
  }
}
