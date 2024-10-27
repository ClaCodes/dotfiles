--space as leader key
vim.g.mapleader = " "

--cursor wide in insert mode
vim.opt.guicursor = ""

--line numbers
vim.opt.nu = false
vim.opt.relativenumber = false

-- mouse
vim.opt.mouse = ""

--presentation
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = {80}
vim.opt.termguicolors = true

-- backup/undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true

--tabs and indent
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

--display tabs and trailing whitechars
vim.opt.listchars = {trail = '·',tab = '»·'}
vim.opt.list = true

--search and highlights
vim.opt.incsearch = true
vim.opt.hlsearch = false

--background
vim.opt.background = "light"

-- visualize a yank motion by flashing the yanked area
vim.cmd[[
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank()
augroup END
]]

--completion
vim.opt.completeopt = { "menu", "menuone", "noselect" }
