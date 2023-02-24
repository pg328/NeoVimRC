local set = vim.keymap.set
-- yank stuff
set('n', 'x', '\"_x')
set({"n", "v"}, '<leader>y', '\"+y')
set({"n", "v"}, '<leader>p', '\"+p')
set({"n", "v"}, '<leader>P', '\"+P')
set('n', 'ypiw', 'viwp')
set('n', '<leader>ypiw', 'viw\"+p')

-- Comment
set("n", "<C-c>", "gcc")

-- increment/decrement
set('n', '+', '<C-a>')
set('n', '-', '<C-x>')

-- Select All
set('n', '<leader>a', 'gg<S-v>G')

-- Movement
set('n', 'gl', '$')
set('n', 'gh', '^')

set('i', 'jj', '<Esc>:w<CR>')

-- Splits
set('n', 'ss', ':vsplit<CR><C-w>w', { silent = true })
set('n', 'sv', ':split<CR><C-w>w', { silent = true })

-- Move Split
set('n', 'sh', '<C-w>h')
set('n', 'sj', '<C-w>j')
set('n', 'sk', '<C-w>k')
set('n', 'sl', '<C-w>l')

-- Resize Split
set('n', '<up>', '<C-w>+')
set('n', '<down>', '<C-w>-')
set('n', '<left>', '<C-w><')
set('n', '<right>', '<C-w>>')
