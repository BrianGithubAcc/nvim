-- plugins/bufferline.lua
return {
	{
		"akinsho/bufferline.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("bufferline").setup({
				options = {
					offsets = {
						{
							filetype = "SidebarNvim", -- Important: matches sidebar.nvim's filetype
							text = "Sidebar",
							highlight = "Directory",
							text_align = "left",
						},
					},
				},
			})
		end,
	},
}
