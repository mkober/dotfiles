vim.g.mapleader = ' '
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50

vim.opt.termguicolors = true

vim.g.WebDevIconsNerdFonts = 1

vim.opt.cursorline = true
vim.opt.cursorcolumn = false
vim.opt.signcolumn = "yes"
vim.o.matchpairs = "<:>,(:),{:},[:]"

vim.o.t_Co = 256

--vim.cmd("colorscheme tokyonight-storm")
--vim.cmd("colorscheme tokyonight-night")
--vim.cmd("colorscheme tokyonight-moon")

vim.cmd("colorscheme dracula")

vim.cmd('highlight Normal guibg=none ctermbg=none')


