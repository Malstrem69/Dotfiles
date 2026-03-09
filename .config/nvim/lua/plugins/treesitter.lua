return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",

		config = function ()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = {
					"lua",
					"bash",
					"c",
					"helm",
					"javascript",
					"python",
					"go",
					"sql",
					"make",
					"dockerfile",
					"yaml",
					"json",
					"terraform",
					"html",
					"yaml",
					"hyprlang",
					"markdown"
				},
				sync_install = false,
				auto_isntall = true,
				highlight = { enable = true },
				indent = { enable = true},
			})
 		end
  }
}
