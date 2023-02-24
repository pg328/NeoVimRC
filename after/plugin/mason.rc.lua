require('mason').setup {}

local status, mason = pcall(require, 'mason-lspconfig')
if (not status) then return end

mason.setup {
  ensure_installed = {
    'lua_ls',
    'marksman',
    'tailwindcss'
  }
}

require 'lspconfig'.tailwindcss.setup {}
