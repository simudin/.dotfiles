return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		-- See Commands section for default commands if you want to lazy load on them
		opts = {
			debug = true, -- Enable debugging
			-- See Configuration section for rest
		},
		-- See Commands section for default commands if you want to lazy load on them
		keys = {
			{ "<leader>cc", "<cmd>CopilotChatToggle<cr>", desc = "CopilotChat - Chat with current buffer" },
			{ "<leader>lm", "<cmd>CopilotChatModels<cr>", desc = "CopilotChat - Select models" },
		},
    model = "claude-sonnet-4",
		window = {
			layout = "float",
			width = 80, -- Fixed width in columns
			height = 20, -- Fixed height in rows
			border = "rounded", -- 'single', 'double', 'rounded', 'solid'
			title = "🤖 AI Assistant",
			zindex = 100, -- Ensure window stays on top
		},

		headers = {
			user = "👤 You",
			assistant = "🤖 Copilot",
			tool = "🔧 Tool",
		},

		separator = "━━",
		auto_fold = true, -- Automatically folds non-assistant messages
	},
}
