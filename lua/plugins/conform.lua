return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			-- Customize or remove this keymap to your liking
			"<leader>f",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	-- This will provide type hinting with LuaLS
	---@module "conform"
	---@type conform.setupOpts
	opts = {
		-- Define your formatters
		-- ONLY USE WHEN LSP DOES NOT SUPPORT
		formatters_by_ft = {
			-- lua = { "stylua" },
			--python = { "isort", "black" },
			--javascript = { "prettierd", "prettier", stop_after_first = true },
		},
		-- Set default options
		-- Now that lsp does autoformat may be better to use lsp to prevent fighting
		-- Although when lsp does not support still use a dedicated formatter
		default_format_opts = {
			lsp_format = "fallback",
		},
		-- Set up format-on-save
		format_on_save = { timeout_ms = 500 },
		-- Customize formatters
		formatters = {
			shfmt = {
				prepend_args = { "-i", "2" },
			},
		},
	},
	init = function()
		-- If you want the formatexpr, here is the place to set it
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})
	end,
}
