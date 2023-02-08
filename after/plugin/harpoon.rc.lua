local status, mark = pcall(require, 'harpoon.mark')
if (not status) then return end
local status2, ui = pcall(require, 'harpoon.ui')
if (not status2) then return end

local set = vim.keymap.set

set("n", "<leader>+", mark.add_file)
set("n", "<leader>-", mark.rm_file)
set("n", "<leader><Tab>", ui.toggle_quick_menu)

