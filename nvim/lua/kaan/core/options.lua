local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- Tabs & Indendation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Search Settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

-- Term Colors
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- Split Windows
opt.splitright = true
opt.splitbelow = true

-- Checkhealth recommended session options
vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
