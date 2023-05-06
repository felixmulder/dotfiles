vim.g.mapleader = ","

vim.keymap.set("n", "<C-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==")

vim.keymap.set("i", "<C-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<C-k>", "<Esc>:m .-2<CR>==gi")

vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

-- Intelligently clear last highlighted search term
vim.keymap.set("n", "<esc>", ":noh<CR><esc>")
vim.keymap.set("n", "<CR>", ":noh<CR><CR>")


-- Buffered tab bindings
vim.keymap.set("n", "th", ":b1<CR>")
vim.keymap.set("n", "tj", ":bn<CR>")
vim.keymap.set("n", "tk", ":bp<CR>")
vim.keymap.set("n", "tl", ":bl<CR>")
vim.keymap.set("n", "tn", ":enew<CR>")
vim.keymap.set("n", "td", ":bd<CR>")
