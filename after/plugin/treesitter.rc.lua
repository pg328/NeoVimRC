local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  auto_install = true,
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "markdown",
    "tsx",
    "toml",
    "json",
    "yaml",
    "css",
    "html",
  },
  autotag = {
    enable = true,
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
