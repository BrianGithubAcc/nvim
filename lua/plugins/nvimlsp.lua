return {
	"neovim/nvim-lspconfig",
	dependencies = { "saghen/blink.cmp" },
	config = function()
		vim.lsp.enable("pyright")
		vim.lsp.enable("lua-ls")
	end,
}
