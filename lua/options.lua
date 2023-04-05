local cmd = vim.cmd
local opt = vim.opt

opt.number = false
opt.cursorline = false
opt.title = true
-- opt.showtabline = 2

opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = false
opt.smarttab = true

opt.wrap = false
opt.hidden = true
opt.swapfile = false
opt.backup = false
opt.whichwrap='<,>,[,]'
opt.backspace='indent,eol,start'

opt.incsearch = true
opt.hlsearch = true
opt.termguicolors = true

cmd('colorscheme xcodedarkhc')
