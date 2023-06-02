
local ICONS =  {
  ERROR = " ",
  WARN = " ",
  INFO = " ",
  DEBUG = " ",
  TRACE = "✎ ",
}

-- Set barbar's options
require'bufferline'.setup {

  -- Enable/disable animations
  animation = true,

  -- Enable/disable auto-hiding the tab bar when there is a single buffer
  auto_hide = false,

  -- Enable/disable close button
  -- closable = false, //DEPRECATED

  -- Enables/disable clickable tabs
  --  - left-click: go to buffer
  --  - middle-click: delete buffer
  clickable = true,

  -- Enables / disables diagnostic symbols
  -- diagnostics = {
  --   [vim.diagnostic.severity.ERROR] = {enabled = true, icon = ICONS.ERROR},
  --   [vim.diagnostic.severity.WARN] = {enabled = true, icon=ICONS.WARN},
  --   [vim.diagnostic.severity.INFO] = {enabled = true, icon=ICONS.INFO},
  --  [vim.diagnostic.severity.HINT] = {enabled = true, icon=ICONS.TRACE},
  -- },
  -- //DEPRECATED

  -- Disable highlighting alternate buffers
  highlight_alternate = false,

  -- Disable highlighting file icons in inactive buffers
  highlight_inactive_file_icons = false,

  -- Enable highlighting visible buffers
  highlight_visible = true,

  -- Enable/disable icons
  -- if set to 'numbers', will show buffer index in the tabline
  -- if set to 'both', will show buffer index and icons in the tabline
  -- icons = true, DEPRECATED

  -- If set, the icon color will follow its corresponding buffer
  -- highlight group. By default, the Buffer*Icon group is linked to the
  -- Buffer* group (see Highlighting below). Otherwise, it will take its
  -- default value as defined by devicons.
  icon_custom_colors = false,

  -- Configure icons on the bufferline.
  -- icon_separator_active = '▎',
  -- icon_separator_inactive = '▎',
  -- icon_close_tab = '',
  -- icon_close_tab_modified = '●',
  -- icon_pinned = '車',

  -- If true, new buffers will be inserted at the start/end of the list.
  -- Default is to insert after current buffer.
  insert_at_end = false,
  insert_at_start = false,

  -- Sets the maximum padding width with which to surround each tab
  maximum_padding = 1,

  -- Sets the minimum padding width with which to surround each tab
  minimum_padding = 1,

  -- Sets the maximum buffer name length.
  maximum_length = 30,

  -- If set, the letters for each buffer in buffer-pick mode will be
  -- assigned based on their name. Otherwise or in case all letters are
  -- already assigned, the behavior is to assign letters in order of
  -- usability (see order below)
  semantic_letters = true,

  -- New buffer letters are assigned in this order. This order is
  -- optimal for the qwerty keyboard layout but might need adjustement
  -- for other layouts.
  letters = 'qwertyuiopasdfghjklzxcvbnm',

  -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
  -- where X is the buffer number. But only a static string is accepted here.
  no_name_title = 'Untitled',
}
-- Highlighting
-- For the highlight groups, here are the default ones. Your colorscheme can override them by defining them. See the "Meaning of terms" comment inside the example below.
-- 
-- let fg_target = 'red'
-- 
-- let fg_current  = s:fg(['Normal'], '#efefef')
-- let fg_visible  = s:fg(['TabLineSel'], '#efefef')
-- let fg_inactive = s:fg(['TabLineFill'], '#888888')
-- 
-- let fg_modified  = s:fg(['WarningMsg'], '#E5AB0E')
-- let fg_special  = s:fg(['Special'], '#599eff')
-- let fg_subtle  = s:fg(['NonText', 'Comment'], '#555555')
-- 
-- let bg_current  = s:bg(['Normal'], '#000000')
-- let bg_visible  = s:bg(['TabLineSel', 'Normal'], '#000000')
-- let bg_inactive = s:bg(['TabLineFill', 'StatusLine'], '#000000')

-- Meaning of terms:
--
-- format: "Buffer" + status + part
--
-- status:
--     *Current: current buffer
--     *Visible: visible but not current buffer
--    *Inactive: invisible but not current buffer
--
-- part:
--        *Icon: filetype icon
--       *Index: buffer index
--         *Mod: when modified
--        *Sign: the separator between buffers
--      *Target: letter in buffer-picking mode
--
-- BufferTabpages: tabpage indicator
-- BufferTabpageFill: filler after the buffer section
-- BufferOffset: offset section, created with set_offset()

-- call s:hi_all([
-- ['BufferCurrent',        fg_current,  bg_current],
-- ['BufferCurrentIndex',   fg_special,  bg_current],
-- ['BufferCurrentMod',     fg_modified, bg_current],
-- ['BufferCurrentSign',    fg_special,  bg_current],
-- ['BufferCurrentTarget',  fg_target,   bg_current,   'bold'],
-- ['BufferVisible',        fg_visible,  bg_visible],
-- ['BufferVisibleIndex',   fg_visible,  bg_visible],
-- ['BufferVisibleMod',     fg_modified, bg_visible],
-- ['BufferVisibleSign',    fg_visible,  bg_visible],
-- ['BufferVisibleTarget',  fg_target,   bg_visible,   'bold'],
-- ['BufferInactive',       fg_inactive, bg_inactive],
-- ['BufferInactiveIndex',  fg_subtle,   bg_inactive],
-- ['BufferInactiveMod',    fg_modified, bg_inactive],
-- ['BufferInactiveSign',   fg_subtle,   bg_inactive],
-- ['BufferInactiveTarget', fg_target,   bg_inactive,  'bold'],
-- ['BufferTabpages',       fg_special,  bg_inactive, 'bold'],
-- ['BufferTabpageFill',    fg_inactive, bg_inactive],
-- ])
--
--all s:hi_link([
-- ['BufferCurrentIcon',  'BufferCurrent'],
-- ['BufferVisibleIcon',  'BufferVisible'],
-- ['BufferInactiveIcon', 'BufferInactive'],
-- ['BufferOffset',       'BufferTabpageFill'],
-- ])
--
-- NOTE: this is an example taken from the source, implementation of
-- s:fg(), s:bg(), s:hi_all() and s:hi_link() is left as an exercise
-- for the reader.

local set = vim.keymap.set

set("n", "<leader>t", "<cmd>BufferPick<CR>", {silent = true})
set('n', 'gn', '<cmd>BufferNext<CR>', {silent = true})
set('n', 'tn', '<cmd>BufferNext<CR>', {silent = true})
set('n', 'gp', '<cmd>BufferPrevious<CR>', {silent=true})
set('n', 'tp', '<cmd>BufferPrevious<CR>', {silent=true})
set('n', '!tq', '<cmd>BufferClose!<CR>', {silent=true})
set('n', 'tq', '<cmd>BufferClose<CR>', {silent=true})
set('n', '<leader>q', '<cmd>BufferPickDelete<CR>', {silent=true})
set('n', 'to', '<cmd>BufferOrderByDirectory<CR>', {silent=true})
