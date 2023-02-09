local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

bufferline.setup {
  options = {
    mode = 'buffers',
    indicator = {
      style = "underline",
    },
    diagnostics = 'nvim_lsp',
    separator_style = 'thin',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      --fg = fg,
      --bg = bg
    },
    separator_selected = {
      --fg = fg,
    },
    background = {
      --fg = black,
      --bg = bg
    },
    buffer_selected = {
      --fg = black,
      --bold = true
    },
    fill = {
      --bg = fg
    }
  }
}

vim.api.nvim_set_keymap('n', '<Tab>', '<cmd>BufferLineCycleNext<CR>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<CR>', {})
