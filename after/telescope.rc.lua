local status, tscope = pcall(require, 'telescope')
if (not status) then return end

local actions = require('telescope.actions')

function telescope_buffer_dir()
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

  set('n', '<leader>b', '<cmd>lua require("telescope.builtin").buffers()<CR>', opts)

  set('n', '<leader>h', '<cmd>lua require("telescope.builtin").help_tags()<CR>', opts)

  set('n', '<leader>d', '<cmd>lua require("telescope.builtin").diagnostics()<CR>', opts)

  set('n', '<leader><leader>', '<cmd>lua require("telescope.builtin").resume()<CR>', opts)

  set('n', '<C-s>', '<cmd>lua require("telescope").extensions.file_browser.file_browser({ path = "%:p:h", cwd = telescope_buffer_dir(), respect_git_ignore = false, hidden = true, grouped = true, previewer = false, initial_mode = "normal", layout_config = { height = 40 }})<CR>', opts)
