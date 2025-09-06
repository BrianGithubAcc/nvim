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
			{
				"z=",
				function()
					require("telescope.builtin").spell_suggest(require("telescope.themes").get_cursor({
						previewer = false,
						layout_config = {
							width = 50,
							height = 15,
						},
					}))
				end,
				mode = "n",
				desc = "Spelling Suggestions",
			},
		},
		config = function()
			local telescope = require("telescope")
			telescope.setup({})
			telescope.load_extension("file_browser")
			telescope.load_extension("ui-select")
		end,
	},
}
