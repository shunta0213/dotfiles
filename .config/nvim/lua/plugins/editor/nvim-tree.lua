return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	cmd = "Neotree",
	keys = {
		{
			"<leader>fe",
			function()
				require("neo-tree.command").execute({
					toggle = true,
					dire = require("utils").get_root(),
				})
			end,
			desc = "Explorer NeoTree RootDir",
		},
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		window = {
			width = 30,
		},
	},
	conifg = function(_, opts)
		require("neo-tree").setup(opts)
	end,
}
