require("config.remap")
require("config.lazy")
require("config.search")
require("config.tabs")

-- Number of the string
vim.opt.number = true          -- absolute number
vim.opt.relativenumber = true  -- relative number


-- Light up current line
vim.opt.cursorline = true

-- Status column near string number
vim.opt.signcolumn = "yes"

-- tab size
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

-- Use whitespaces insted of tabs
vim.opt.expandtab = true

-- aured if file changed outside vim
vim.opt.autoread = true

-- System clipboard
vim.opt.clipboard = "unnamedplus"
