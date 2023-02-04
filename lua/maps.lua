local set = vim.keymap.set


-- Phil - Utility
set('n', '<C-s>', ':Ex<CR>')


-- yank stuff
set('n', 'x', '\"_x')
set('n', '<leader>p', '\"+p')
set('n', '<leader>P', '\"+P')

-- increment/decrement
set('n', '+', '<C-a>')
set('n', '-', '<C-x>')

-- Select All
set('n', '<C-a>', 'gg<S-v>G')

-- New Tab
set('n', 'te', ':tabedit<CR>')

-- Splits
set('n', 'ss', ':vsplit<CR><C-w>w', { silent = true })
set('n', 'sv', ':split<CR><C-w>w', { silent = true })
set('n', 'te', ':tabedit<CR>', { silent = true })

-- Move Split
set('n', '<leader><leader>', '<C-w>w')
set('n', 'sh', '<C-w>h')
set('n', 'sj', '<C-w>j')
set('n', 'sk', '<C-w>k')
set('n', 'sl', '<C-w>l')

-- Resize Split
set('n', '<up>', '<C-w>+')
set('n', '<down>', '<C-w>-')
set('n', '<left>', '<C-w><')
set('n', '<right>', '<C-w>>')
