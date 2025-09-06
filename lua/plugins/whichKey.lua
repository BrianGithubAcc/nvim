--config/whichKey.lua
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	dependencies = {
		"echasnovski/mini.icons",
	},
	opts = {
		plugins = {
			spelling = {
				--I do not like which-key implementation of this better to use telescope
				enabled = false,
			},
		},
	},
	config = function(_, opts)
		-- Setup mini.icons first (do NOT call get() here to avoid errors)
		require("mini.icons").setup()

		-- Just assign empty icons or safe fallback to opts.icons (do NOT call get here)
		opts.icons = {}

		local wk = require("which-key")
		wk.setup(opts)
	end,
}
