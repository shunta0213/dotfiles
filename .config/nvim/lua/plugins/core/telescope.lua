return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ mode = "n", "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find a File" },
		{ mode = "n", "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
	},
}
