return {
	"lewis6991/gitsigns.nvim",
	event = "VeryLazy", -- load after startup or idle
	priority = 1000, -- high priority among lazy-loaded plugins
	config = function()
		require("gitsigns").setup()
	end,
}
