return {
	"lewis6991/gitsigns.nvim",
	event = "VeryLazy", -- load after startup or idle
	priority = 1000, -- high priority among lazy-loaded plugins
	keys = {
		{ "]c",         function() require('gitsigns').nav_hunk('next') end,            desc = "Next Git Hunk" },
		{ "[c",         function() require('gitsigns').nav_hunk('prev') end,            desc = "Previous Git Hunk" },
		{ "<leader>hs", function() require('gitsigns').stage_hunk() end,                desc = "Stage Hunk" },
		{ "<leader>hr", function() require('gitsigns').reset_hunk() end,                desc = "Reset Hunk" },
		{ "<leader>hp", function() require('gitsigns').preview_hunk() end,              desc = "Preview Hunk" },
		{ "<leader>hb", function() require('gitsigns').blame_line { full = true } end,  desc = "Blame Line" },
		{ "<leader>tb", function() require('gitsigns').toggle_current_line_blame() end, desc = "Toggle Line Blame" },
	},
	config = function()
		vim.api.nvim_create_autocmd("BufEnter", {
			pattern = "fugitive://*",
			callback = function()
				require('gitsigns').refresh()
			end,
		})
		require("gitsigns").setup({
			attach_to_untracked = true, })
	end,
}
