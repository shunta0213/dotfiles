return {
	"williamboman/mason.nvim",
	cmd = "Mason",
	build = ":MasonUpdate",
	keys = {
		{ mode = "n", "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" },
	},
	opts = {
		ensure_installed = {
			"stylua",
			"shfmt",
		},
	},
	dependencies = {
		{
			"williamboman/mason-lspconfig.nvim",
			config = function()
				require("mason-lspconfig").setup()
			end,
		},
		{
			"neovim/nvim-lspconfig",
		},
	},
}
