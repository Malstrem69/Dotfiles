return {
	{
    "mason-org/mason-lspconfig.nvim",
		opts = {
			automatic_installation = true,
			automatic_enable = true,
			ensure_installed = {
				"lua_ls",
				"helm_ls",
				"gopls",
				"pyright"
			}
		},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
			{ "WhoIsSethDaniel/mason-tool-installer.nvim",
			  opts = {
			    ensure_installed = {
			      "prettier",
			      "stylua",
			      "isort",
						"debugpy",
						"golines",
						"templ",
						"pylint",
					},
			    auto_update = true,
			    run_on_start = true,
  			},
			}
    },
  }
}
