vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Automatically change local working directory to current buffer folder
vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		local dir = vim.fn.expand("%:p:h") -- current buffer directory
		if vim.fn.isdirectory(dir) == 1 then
			vim.cmd("lcd " .. dir) -- change local working directory for window
		end
	end,
})
