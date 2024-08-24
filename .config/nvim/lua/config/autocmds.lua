-- Terminal
vim.api.nvim_create_augroup("lazyvim_terminal", { clear = true })
vim.api.nvim_create_autocmd("TermOpen", {
	group = "lazyvim_terminal",
	callback = function()
		vim.cmd("startinsert")
		vim.cmd("setlocal nonumber norelativenumber")
	end,
})
