return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  lazy = true,
  dependencies = { 
	{ 'nvim-lua/plenary.nvim' },
	{ "nvim-tree/nvim-web-devicons" },
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ "nvim-telescope/telescope-ui-select.nvim" }
  },
  keys = {
    {
      "<leader>s", "", desc = "Telescope"  -- This defines the group name

    },
    {
      "<leader>sf",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "Find File (CWD)",
    },
    {
      "<leader>sg",
      function()
	require("telescope.builtin").live_grep()
      end,
      desc = "Live grep",
    },
    {
      "<leader>sh",
      function()
	require("telescope.builtin").help_tags()
      end,
      desc = "Find help"
    },
    {
      "<leader>sb",
      function()
	require("telescope.builtin").buffers()
      end,
      desc = "Buffers"
    },
    {
      "<leader>sc",
      function()
	require("telescope.builtin").commands()
      end,
      desc = "Commands"
    },
    {
      "<leader>sk",
      function()
	require("telescope.builtin").keymaps()
      end,
      desc = "Keymaps"
    },
    {
     "<leader>st",
     function()
	require("telescope.builtin").colorscheme()
     end,
     desc = "Themes"
    }
  },
}
