local status, tscope = pcall(require, 'telescope')
if (not status) then return end

local actions = require('telescope.actions')

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb = require 'telescope'.extensions.file_browser.actions

tscope.setup {
  defaults = {
    mappings = {
      n = {
        ['q'] = actions.close
      }
    }
  },
  extensions = {
    file_browser = {
      theme = 'dropdown',
      --
      hijack_netrw = true,
      mappings = {
        ['i'] = {
          ['<C-w>'] = function() vim.cmd('normal vbd') end,
        },
        ['n'] = {
          ['N'] = fb.create,
          ['h'] = fb.goto_parent_dir,
          ['/'] = function()
            vim.cmd('startinsert')
          end
        }
      }
    }
  },
}

  tscope.load_extension('file_browser')

  local opts = {noremap = true, silent = true}
  local set = vim.keymap.set

  set('n', '<leader>f', '<cmd>lua require("telescope.builtin").find_files({no_ignore = false, hidden = true})<CR>', opts)

  set('n', '<leader>/', '<cmd>lua require("telescope.builtin").live_grep()<CR>', opts)

