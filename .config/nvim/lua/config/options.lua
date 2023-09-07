local options = {
	tabstop = 2,
	shiftwidth = 2,
	number = true,
	relativenumber = true,
	fileencoding = "utf-8",
	clipboard = "unnamedplus",
	showmode = false,
}

for option, value in pairs(options) do
	vim.opt[option] = value
end
