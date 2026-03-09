return {
	{
    "folke/todo-comments.nvim",
    cmd = { "TodoTrouble", "TodoTelescope" },
    opts = {},
		-- stylua: igore
    keys = {
      { "<leader>t", "", desc = "Todo-comments" },
      { "<leader>t]", function() require("todo-comments").jump_next() end, desc = "Next Todo Comment" },
      { "<leader>t[", function() require("todo-comments").jump_prev() end, desc = "Previous Todo Comment" },
      { "<leader>tx", "<cmd>Trouble todo toggle<cr>", desc = "Todo (Trouble)" },
      { "<leader>tX", "<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
      { "<leader>tt", "<cmd>TodoTelescope<cr>", desc = "Todo" },
      { "<leader>tT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme" },
    } 
	},
	{
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  -- stylua: ignore
  keys = {
    { "<leader>f", "", desc = "Flash" }, -- This defines the group name
    { "<leader>fs", function() require("flash").jump() end, desc = "Jump", mode = { "n", "o", "x" } },
    { "<leader>fS", function() require("flash").treesitter() end, desc = "Treesitter", mode = { "n", "o", "x" } },
    { "<leader>fr", function() require("flash").remote() end, desc = "Remote", mode = "o" },
    { "<leader>fR", function() require("flash").treesitter_search() end, desc = "TS Search", mode = { "o", "x" } },
    { "<C-s>", function() require("flash").toggle() end, desc = "Toggle Flash Search", mode = "c" }, 
  }
  }
}
