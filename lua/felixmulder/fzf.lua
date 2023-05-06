vim.keymap.set("n", "<space><space>", ":Files<CR>")
vim.keymap.set("n", "<space>b", ":Buffers<CR>")
vim.keymap.set("n", "<space>l", ":Lines<CR>")

vim.cmd([[
  let g:fzf_action = { 'ctrl-t': 'e', 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }
]])
