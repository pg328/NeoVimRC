local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.setup {}

local set = vim.keymap.set

set('n', '[d', '<Cmd>Lspsaga diagnostic_jump_next<CR>')
set('n', ']d', '<Cmd>Lspsaga diagnostic_jump_prev<CR>')
set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>')
set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>')
set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>')
set({ 'n', 'v' }, '<leader>.', '<Cmd>Lspsaga code_action<CR>')

-- Diagnostic jump with filters such as only jumping to an error
set("n", "[e", function()
  require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
end)
set("n", "]e", function()
  require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
end)

-- Toggle outline
set("n", "<leader>o", "<cmd>Lspsaga outline<CR>")

-- Hover Doc
-- If there is no hover doc,
-- there will be a notification stating that
-- there is no information available.
-- To disable it just use ":Lspsaga hover_doc ++quiet"
-- Pressing the key twice will enter the hover window
set("n", "<leader>k", "<cmd>Lspsaga hover_doc<CR>")
set("n", "<leader>r", "<cmd>Lspsaga rename<CR>")
