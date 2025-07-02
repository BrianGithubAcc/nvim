-- plugins/telescope.lua
return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
		},
		cmd = "Telescope",
		keys = {
			{ ",ff", ":Telescope file_browser path=%:p:h<CR>", mode = "n", desc = "File Browser" },
			{ ",fg", ":Telescope oldfiles<CR>", mode = "n", desc = "Old Files" },
			{ ",fb", ":Telescope buffers<CR>", mode = "n", desc = "Buffers" },
		},
		config = function()
			local telescope = require("telescope")
			telescope.setup({})
			telescope.load_extension("file_browser")
			telescope.load_extension("ui-select")
		end,
	},
}
