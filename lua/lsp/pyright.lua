vim.lsp.config('pyright', {
	cmd = { 'pyright' },
	filetypes = { 'py' },
	root_markers = {},
})


vim.lsp.enable('pyright')
