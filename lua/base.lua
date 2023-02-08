vim.cmd "colorscheme darkplus"

vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.encoding = 'utf-8'
vim.fileencoding = 'utf-8'

vim.wo.number = true

local o = vim.opt

o.title = true
o.autoindent = true
o.hlsearch = false
o.incsearch = true
o.backup = false
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.showcmd = true
o.cmdheight = 1
o.laststatus = 2
o.expandtab = true
o.scrolloff = 10
o.shell = 'zsh'
o.backupskip = '/tmp/*,/private/tmp/*'
o.inccommand = 'split'
o.ignorecase = true
o.smarttab = true
o.breakindent = true
o.shiftwidth = 2
o.tabstop = 2
o.ai = true -- autoindent
o.si = true -- smartindent
o.wrap = true -- no wrap lines
o.backspace = 'start,eol,indent'
o.path:append { '**' } -- recursive file search
o.wildignore:append { '*/node_modules/*' } -- recursive file search
o.formatoptions:append { 'r' }
o.colorcolumn = "80"

vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = 'set nopaste',
})

