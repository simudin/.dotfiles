return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			auto_install = true,
			ensure_installed = { "c", "lua", "vim", "query", "javascript", "html", "rust", "go", "ruby" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
