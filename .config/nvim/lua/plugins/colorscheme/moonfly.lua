return {
	"bluz71/vim-moonfly-colors",
	name = "moonfly",
	lazy = false,
	priority = 1000,
	config = function()
		require("plugins.colorscheme.moonfly")
		vim.cmd("colorscheme moonfly")
	end,
}
