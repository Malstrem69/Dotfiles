return {
	{
		"Bekaboo/dropbar.nvim",
		-- optional, but required for fuzzy finder support
		dependencies = {
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		keys = {
			{ "<leader>b", "", desc = "dropbar" }, -- This defines the group name
			{
				"<leader>bb",
				function()
					require("dropbar.api").pick()
				end,
				desc = "Pick symbols in winbar",
			},
			{
				"<leader>b[",
				function()
					require("dropbar.api").goto_context_start()
				end,
				desc = "Go to start of current context",
			},
			{
				"<leader>b]",
				function()
					require("dropbar.api").select_next_context()
				end,
				desc = "Select next context",
			},
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional: for file icons
		opts = {
			options = {
				theme = "auto", -- You can replace with a specific theme like 'gruvbox', 'tokyonight', etc.
				icons_enabled = true,
				section_separators = "", -- or ''
				component_separators = "", -- or '|'
				extensions = { "neo-tree" },
				disabled_filetypes = {
					statusline = { "snacks_dashboard" },
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				always_show_tabline = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
					refresh_time = 16, -- ~60fps
					events = {
						"WinEnter",
						"BufEnter",
						"BufWritePost",
						"SessionLoadPost",
						"FileChangedShellPost",
						"VimResized",
						"Filetype",
						"CursorMoved",
						"CursorMovedI",
						"ModeChanged",
					},
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "searchcounts", "filename", "lsp_status" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = { "neo-tree" },
		},
	},
	{
		"folke/snacks.nvim",
		---@type snacks.Config
		opts = {
			dashboard = {
				preset = {
					header = [[
	    ███╗   ███╗ █████╗ ██████╗ ██╗  ██╗    ██╗
	    ████╗ ████║██╔══██╗██╔══██╗██║ ██╔╝    ██║
	    ██╔████╔██║███████║██████╔╝█████╔╝     ██║
	    ██║╚██╔╝██║██╔══██║██╔══██╗██╔═██╗     ██║
	    ██║ ╚═╝ ██║██║  ██║██║  ██║██║  ██╗    ██║	
	    ]],
					keys = {
						{
							icon = " ",
							key = "f",
							desc = "Find File",
							action = ":lua Snacks.dashboard.pick('files')",
						},
						{ icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
						{
							icon = " ",
							key = "g",
							desc = "Find Text",
							action = ":lua Snacks.dashboard.pick('live_grep')",
						},
						{
							icon = " ",
							key = "r",
							desc = "Recent Files",
							action = ":lua Snacks.dashboard.pick('oldfiles')",
						},
						{
							icon = " ",
							key = "c",
							desc = "Config",
							action = ":lua Snacks.dashboard.pick('files', { cwd = vim.fn.stdpath('config') })",
						},
						{ icon = " ", key = "s", desc = "Restore Session", section = "session" },
						{
							icon = "󰒲 ",
							key = "L",
							desc = "Lazy",
							action = ":Lazy",
							enabled = package.loaded.lazy ~= nil,
						},
					},
				},
				sections = {
					{ section = "header" },
					{ section = "keys", gap = 1, indent = 2, padding = 1 },
					-- { section = "keys", gap = 1, padding = 1 },
					-- { icon = " ", title = "Keymaps", section = "keys", gap = 1, indent = 2, padding = 1 },
					{ icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 2 },
					-- { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
					{ section = "startup" },
				},
			},
		},
	},
}
