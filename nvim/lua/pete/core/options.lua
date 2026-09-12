vim.cmd("let g:netrw_liststyle = 3")

-- Line Wrapping --
vim.opt.wrap = false

-- 
vim.opt.undofile = true

vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"

-- TABS and Indentation --
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent  = true
vim.opt.smartindent = true
vim.opt.cindent     = true

-- Line numbers --
vim.opt.number = true
vim.opt.relativenumber = true

-- Searching --
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Cursos Line -- 
vim.opt.cursorline = true

-- Clipboard -- 
vim.opt.clipboard:append("unnamedplus")

-- Appearance --
vim.opt.termguicolors = true
vim.opt.background = "dark" 
vim.opt.signcolumn = "yes"

-- Backspace -- 
vim.opt.backspace = "indent,eol,start" 

-- Split Windows --
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.iskeyword:append("-")

vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.swapfile = false
vim.opt.scrolloff = 999
vim.opt.foldmethod = 'indent'
vim.opt.foldnestmax = 2
vim.opt.foldminlines = 25

-- Concealment
vim.opt.conceallevel = 1
