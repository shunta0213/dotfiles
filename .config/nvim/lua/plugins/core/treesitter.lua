return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
		init = function()
			require("lazy.core.loader").disable_rtp_plugin("nvim-treesitter-textobjects")
			load_textobjects = true
		end,
	},
	cmd = { "TSUpdateSync" },
	opts = {
		highlight = { enable = true },
		indent = { enable = true },
		ensure_installed = {
			"bash",
			"vim",
			"",
			"lua",
		},
	},
}
