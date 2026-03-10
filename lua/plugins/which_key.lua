return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
			{
				"<leader>B",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Set Break Point Here for debug (must in debug mode)",
			},
			{
				"<leader>t",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Eval the variable under cursor (must in debug mode)",
			},
		},
	},
}
