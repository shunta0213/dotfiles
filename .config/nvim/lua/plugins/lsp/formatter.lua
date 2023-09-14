return {
	"mhartington/formatter.nvim",
	event = { "BufRead", "BufWritePre" },
	keys = {
		{ mode = "n", "<leader>fo", ":FormatWrite<cr>", desc = "Format" },
	},
	config = function()
		local util = require("formatter.util")

		require("formatter").setup({
			logging = true,
			log_level = vim.log.levels.INFO,
			filetype = {
				lua = {
					require("formatter.filetypes.lua").stylua,
				},
				javascript = {
					require("formatter.filetypes.javascript").prettier,
				},
				typescript = {
					require("formatter.filetypes.typescript").prettier,
				},
				go = {
					require("formatter.filetypes.go").gofmt,
				},

				-- default configurations on any filetype
				["*"] = {
					require("formatter.filetypes.any").remove_trailing_whitespace,
				},
			},
		})

		-- Format on Save
		vim.api.nvim_create_augroup("FormatAutoGroup", {})
		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			group = "FormatAutoGroup",
			command = "FormatWrite",
		})
	end,
}
