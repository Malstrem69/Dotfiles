vim.g.mapleader = ' '
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--[[ moving between splits ]]
-- Map <Space>w to act like <C-w>
vim.keymap.set('n', '<Space>w', '<C-w>', { noremap = true })

-- To move text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

