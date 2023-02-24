local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.setup {
  finder = {
    keys = {
      jump_to = 'l',
      vsplit = "v",
      split = "s",
      tabe = "t",
    },
  },
  definition = {
    vsplit = "sv",
    split = "ss",
    tabe = "st",
    quit = "q",
    close = "<Esc>",
  },
  lightbulb = {
    enable_in_insert = false,
  },
  outline = {
    win_position = "right",
    win_with = "",
    win_width = 30,
    show_detail = true,
    auto_preview = true,
    auto_refresh = true,
    auto_close = true,
    custom_sort = nil,
    keys = {
      jump = "<CR>",
      expand_collapse = "<Space>",
    },
  },
  symbol_in_winbar = {
    enable = false
  },
  ui = {
    title = false,
    code_action = "",
  }

}

local set = vim.keymap.set

set('n', '[d', '<Cmd>Lspsaga diagnostic_jump_next<CR>')
set('n', ']d', '<Cmd>Lspsaga diagnostic_jump_prev<CR>')
set('n', 'gD', '<Cmd>Lspsaga peek_definition<CR>')
set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>')
set('n', 'gt', '<Cmd>Lspsaga goto_type_definition<CR>')
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

-- Toggle Terminal
set("n", "<leader>j", "<cmd>Lspsaga term_toggle<CR>")

-- Hover Doc
-- If there is no hover doc,
-- there will be a notification stating that
-- there is no information available.
-- To disable it just use ":Lspsaga hover_doc ++quiet"
-- Pressing the key twice will enter the hover window
set("n", "<leader>k", "<cmd>Lspsaga hover_doc<CR>")
set("n", "<leader>r", "<cmd>Lspsaga rename<CR>")
