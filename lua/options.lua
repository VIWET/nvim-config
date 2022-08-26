local cmd = vim.cmd
local opt = vim.opt

opt.number = false
opt.cursorline = true
opt.title = true
opt.showtabline = 2

opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smarttab = true

opt.wrap = false
opt.hidden = true
opt.swapfile = false
opt.backup = false
opt.whichwrap='<,>,[,]'
opt.backspace='indent,eol,start'

opt.incsearch = true
opt.hlsearch = false

cmd('colorscheme xcodedarkhc')
