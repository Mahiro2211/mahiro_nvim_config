return {
	{ "ojroques/vim-oscyank" },
	{
		"brenoprata10/nvim-highlight-colors",
		config = function()
			require("nvim-highlight-colors").setup({})
		end,
	},
	{
		"folke/persistence.nvim",
		event = "BufReadPre",
		opts = {},
		-- stylua: ignore
		keys = {
			{ "<leader>qs", function() require("persistence").load() end, desc = "Restore Session" },
			{ "<leader>qS", function() require("persistence").select() end,desc = "Select Session" },
			{ "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
			{ "<leader>qd", function() require("persistence").stop() end, desc = "Don't Save Current Session" },
		},
	},
	{ "nvim-lua/plenary.nvim", lazy = true },
	{ "Darazaki/indent-o-matic" },
}
