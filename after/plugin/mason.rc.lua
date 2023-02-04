local status, mason = pcall(require, 'mason-lspconfig')
if (not status) then return end

mason.setup {
  ensure_installed = {
    'sumneko_lua',
    'zk',
  }
}
