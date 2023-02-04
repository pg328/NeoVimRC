local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer
  use 'lunarvim/colorschemes' -- VSCode Theme
  use 'kyazdani42/nvim-web-devicons' -- Nice Icons
  use 'nvim-lualine/lualine.nvim' -- LuaLine! 
  use 'neovim/nvim-lspconfig' -- LSP starter config
  use { "williamboman/mason.nvim" }
  use { 'onsails/lspkind.nvim' } -- vscode-like picograms apparently
  use 'hrsh7th/cmp-buffer' -- 
  use 'hrsh7th/cmp-nvim-lsp' -- source for cmp to use nvim's LSP
  use 'hrsh7th/nvim-cmp' -- autocompletions
  use 'L3MON4D3/LuaSnip' -- snippets
  use {
    'nvim-treesitter/nvim-treesitter',  -- LSP
    run = ':TSUpdate'
  }
  use 'windwp/nvim-ts-autotag' -- Autotag
  use {
    "windwp/nvim-autopairs",  -- Autopairs
    config = function() require("nvim-autopairs").setup {} end
  }
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use 'nvim-telescope/telescope-file-browser.nvim'



  -- Your plugins go here
end)
