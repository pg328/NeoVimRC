local BUILTIN_STAGES = {
  FADE = "fade",
  SLIDE = "slide",
  FADE_IN_SLIDE_OUT = "fade_in_slide_out",
  STATIC = "static",
}

local notifyConfig = {
  level = vim.log.levels.INFO,
  timeout = 5000,
  max_width = nil,
  max_height = nil,
  stages = BUILTIN_STAGES.FADE_IN_SLIDE_OUT,
  render = 'compact',
  background_colour = "NotifyBackground",
  on_open = nil,
  on_close = nil,
  minimum_width = 50,
  fps = 30,
  top_down = true,
  icons = {
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎",
  },
}

require('notify').setup(notifyConfig)

vim.keymap.set('n', '<leader><Esc>', ':lua vim.notify.dismiss()<CR>')
