-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- Copy to clipboard, for linux dont forget to install xclip
vim.opt.clipboard:append("unnamedplus")
vim.api.nvim_set_keymap('v', '<Leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>Y', '"+Y', { noremap = true, silent = true })

-- Resize split
vim.api.nvim_set_keymap('n', '<Up>', ':resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', ':resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', ':vertical resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', ':vertical resize -2<CR>', { noremap = true, silent = true })

-- set line number
vim.wo.number = true

-- Activate color theme
vim.opt.termguicolors = true

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import your plugins
		{ import = "plugins" },
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "habamax" } },
	-- automatically check for plugin updates
	checker = { enabled = true },
})
