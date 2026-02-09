return {
	{ "ellisonleao/gruvbox.nvim" },
	{ "nyoom-engineering/oxocarbon.nvim" },
	{ "EdenEast/nightfox.nvim" },
	{ "folke/tokyonight.nvim" },
	{ "rebelot/kanagawa.nvim" },
	{ "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyonight",
		},
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opt = {
			theme = "gruvbox",
		},
	},
}
