
local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'lunarvim/colorschemes'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  } 
  use 'neovim/nvim-lspconfig' -- LSP
  use { "williamboman/mason.nvim" }
  use { 'onsails/lspkind.nvim' } -- vscode-like picograms apparently
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp' -- source for cmp to use nvim's LSP
  use 'hrsh7th/nvim-cmp' -- autocompletions
 -- use 'hrsh7th/nvim-lspconfig' -- LSP


  -- Your plugins go here
end)
