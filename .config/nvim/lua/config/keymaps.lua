-- Lazy
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>")

-- Terminal
vim.keymap.set("n", "tt", "<cmd>belowright new<CR><cmd>terminal<CR>")
vim.keymap.set("t", "<esc>", "<C-\\><C-n>")
