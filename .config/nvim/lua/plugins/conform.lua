return {
	"stevearc/conform.nvim",
	lazy = true,
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" }, -- Conform will run multiple formatters sequentially
			markdown = { "prettier" },
			html = { "prettier" },
			json = { "prettier" },
			golang = { "golines" },
			yaml = { "prettier" },
			-- Conform will run the first available formatter
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
		},
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
	keys = {
		{ "<leader>r", "", desc = "Code" },
		{
			"<leader>rc",
			function()
				require("conform").format({ lsp_fallback = true, async = false, timeout_ms = 1000 })
			end,
			desc = "Format",
			mode = { "n", "v" },
		},
	},
}
