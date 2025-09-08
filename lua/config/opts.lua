vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.clipboard = "unnamedplus"
vim.opt.spell = true
vim.opt.spelllang = "en_gb"
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.lsp.on_type_formatting.enable()

vim.wo.number = true
vim.api.nvim_set_hl(0, "@lsp.type.variable.rust", { link = "TSVariable" })
vim.api.nvim_set_hl(0, "@lsp.type.unresolvedReference.rust", { link = "Character" })

-- Automatically change local working directory to current buffer folder
vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		local dir = vim.fn.expand("%:p:h") -- current buffer directory
		if vim.fn.isdirectory(dir) == 1 then
			vim.cmd("lcd " .. dir) -- change local working directory for window
		end
	end,
})
