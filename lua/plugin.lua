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
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use { 'onsails/lspkind.nvim' } -- vscode-like picograms apparently
  use 'hrsh7th/cmp-buffer' --
  use 'hrsh7th/cmp-nvim-lsp' -- source for cmp to use nvim's LSP
  use 'hrsh7th/nvim-cmp' -- autocompletions
  use 'L3MON4D3/LuaSnip' -- snippets
  use 'mg979/vim-visual-multi' -- MultiCursor
  use "kylechui/nvim-surround"
  use {
    'nvim-treesitter/nvim-treesitter', -- TreeSitter
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'windwp/nvim-ts-autotag' -- Autotag
  use {
    "windwp/nvim-autopairs", -- Autopairs
    config = function() require("nvim-autopairs").setup {} end
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } , { "kdheepak/lazygit.nvim" } },
    config = function()
        require("telescope").load_extension("lazygit") --LazyGit
    end,
  }
  use 'nvim-telescope/telescope-file-browser.nvim' -- NetRW replacement
  use 'akinsho/bufferline.nvim' -- Bufferline


  use 'norcalli/nvim-colorizer.lua' -- Colorizer
  use({
    "glepnir/lspsaga.nvim", -- Diagnostic UI
    branch = "main",
    config = function()
      require("lspsaga").setup({})
    end,
    requires = { { "nvim-tree/nvim-web-devicons" } }
  })
  use { 'numToStr/Comment.nvim', -- Commenter
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }

  -- null-ls
use('jose-elias-alvarez/null-ls.nvim')
use('MunifTanjim/prettier.nvim')-- Prettier
  -- vim-surround
  -- undotree
  -- Your plugins go here
end)
