require("lazy").setup({
	spec = {
		{ import = "plugins.core" },
		{ import = "plugins.lsp" },
		{ import = "plugins.colorscheme" },
	},
	defaults = { lazy = true },
	install = {},
	checker = { enabled = true },
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"matchit",
				"matchparen",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})
