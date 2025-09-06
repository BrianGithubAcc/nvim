return {
	"neovim/nvim-lspconfig",
	dependencies = { "saghen/blink.cmp" },
	config = function()
		vim.lsp.enable("pyright")
		--vim.lsp.enable("lua_ls")
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim", "use", "describe", "it" }, --For neoVim API
					},
				},
			},
		})
		vim.lsp.enable("lua_ls")
		-- Handeled by rustaceanvim
		--vim.lsp.enable("rust_analyzer")
	end,
}
