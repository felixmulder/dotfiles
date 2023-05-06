vim.g['test#preserve_screen'] = 1

vim.keymap.set("n", "<leader>tf", ":TestFile<CR>")
vim.keymap.set("n", "<leader>tn", ":TestNearest<CR>")
vim.keymap.set("n", "<leader>tl", ":TestLast<CR>")
