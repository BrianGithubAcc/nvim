vim.g.mapleader      = " "
vim.g.maplocalleader = "\\"

local opt            = vim.opt
opt.number           = true
opt.relativenumber   = true
opt.hlsearch         = false
opt.incsearch        = true
opt.mouse            = "a"
opt.clipboard        = "unnamedplus"
opt.breakindent      = true
opt.undofile         = true
opt.ignorecase       = true
opt.smartcase        = true
opt.updatetime       = 250
opt.timeoutlen       = 300
opt.spell            = true
opt.spelllang        = "en_gb"
opt.smartindent      = true
opt.autoindent       = true
opt.termguicolors    = true
opt.scrolloff        = 10
opt.inccommand       = "split"
opt.foldmethod       = "indent"
opt.foldexpr         = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevel        = 99
opt.wrap             = true
opt.showmode         = false
opt.numberwidth      = 2
opt.syntax           = "enable"
opt.guicursor        =
'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175'
opt.whichwrap      = '<,>,[,]'
opt.encoding       = 'UTF-8'
opt.signcolumn     = "yes"
opt.cursorline     = true
opt.tabstop        = 4
opt.shiftwidth     = 4
opt.softtabstop    = 4
opt.expandtab      = true
opt.splitright     = true
opt.splitbelow     = true
opt.autochdir      = true

vim.opt.listchars  = {
    tab = '-->',
    multispace = ' ',
    trail = '▯',
    extends = '⟩',
    precedes = '⟨'
}
vim.log.level      = "warn"

vim.diagnostic.config({
    virtual_text = true,
    update_in_insert = true
})

vim.lsp.on_type_formatting.enable()

vim.api.nvim_set_hl(0, "@lsp.type.variable.rust", { link = "TSVariable" })
vim.api.nvim_set_hl(0, "@lsp.type.unresolvedReference.rust", { link = "Character" })
