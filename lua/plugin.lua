local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

-- Make sure you have Fira Code Nerd Font! You can download it here https://github.com/ryanoasis/nerd-fonts/releases

-- brew install tree-sitter
-- brew install luajit
-- brew install git-delta
-- brew install ripgrep
-- brew install fsouza/prettierd/prettierd

packer.startup(function(use)

  use 'wbthomason/packer.nvim' -- Packer
  use 'lunarvim/colorschemes' -- VSCode Theme
  use 'kyazdani42/nvim-web-devicons' -- Nice Icons
  use 'nvim-lualine/lualine.nvim' -- LuaLine!
  use {
    'jinh0/eyeliner.nvim',
    config = function()
      require'eyeliner'.setup {
        highlight_on_key = true, -- show highlights only after keypress
        dim = true              -- dim all other characters if set to true (recommended!)
      }
    end
  }
  use { -- Save with jj without having to slow down when typing "jj"

    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup({
        mapping = {"jj"}, -- a table with mappings to use
        timeout = 200, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
        clear_empty_lines = false, -- clear line after escaping if there is only whitespace
        keys = "<Esc>", -- keys used for escaping, if it is a function will use the result everytime
        -- example(recommended)
        -- keys = function()
        --   return vim.api.nvim_win_get_cursor(0)[2] > 1 and '<esc>l' or '<esc>'
        -- end,
      }
      )
    end,
  }

  use { -- Sessions
    'rmagatti/auto-session',
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
      }
    end
  }

  use "petertriho/nvim-scrollbar" -- VSCode-like scrollbar


  use { -- Relative Line Numbers
    'nkakouros-original/numbers.nvim',
    config = function()
      require('numbers').setup()
    end
  }

  use {
    'declancm/cinnamon.nvim', -- Smooth Scrolling
    config = function() require('cinnamon').setup(
      {
        extra_keymaps = false,    -- Create extra keymaps.
        extended_keymaps = false, -- Create extended keymaps.
        override_keymaps = false, -- The plugin keymaps will override any existing keymaps.

        -- OPTIONS:
        always_scroll = true,    -- Scroll the cursor even when the window hasn't scrolled.
        centered = true,          -- Keep cursor centered in window when using window scrolling.
        disabled = false,         -- Disables the plugin.
        default_delay = 7,        -- The default delay (in ms) between each line when scrolling.
        hide_cursor = true,      -- Hide the cursor while scrolling. Requires enabling termguicolors!
        horizontal_scroll = true, -- Enable smooth horizontal scrolling when view shifts left or right.
        max_length = -1,          -- Maximum length (in ms) of a command. The line delay will be
        -- re-calculated. Setting to -1 will disable this option.
        scroll_limit = 150,       -- Max number of lines moved before scrolling is skipped. Setting
        -- to -1 will disable this option.
      }
    ) end
  }

  use { -- Language Installer
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  use { 'onsails/lspkind.nvim' } -- vscode-like picograms apparently
  use { -- Signature Hints as you type
    "ray-x/lsp_signature.nvim",
  }

  use 'hrsh7th/cmp-buffer' --
  use 'hrsh7th/cmp-nvim-lsp' -- source for cmp to use nvim's LSP
  use 'hrsh7th/nvim-cmp' -- autocompletions
  use 'L3MON4D3/LuaSnip' -- snippets
  use 'mg979/vim-visual-multi' -- MultiCursor
  use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'} -- Bar for buffers
  use 'rcarriga/nvim-notify' -- Nice Notifications

--   use({
--       'rcarriga/nvim-notify',
--     config = function()
-- require('notify').
--       end
--     })

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  use("LudoPinelli/comment-box.nvim") -- Pretty Comments

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
  -- use 'akinsho/bufferline.nvim' -- Bufferline
  use 'norcalli/nvim-colorizer.lua' -- Colorizer

  use({
    "glepnir/lspsaga.nvim", -- Diagnostic UI
    branch = "main",
    config = function()
      require("lspsaga").setup({
        ui = {
          code_action = ""
        }
      })
    end,
    requires = { { "nvim-tree/nvim-web-devicons" } }
  })

  use {
    'kosayoda/nvim-lightbulb',
    config = function()
      require('nvim-lightbulb').setup({autocmd = {enabled = true}})
    end,
    requires = 'antoinemadec/FixCursorHold.nvim',
  }

  use { 'numToStr/Comment.nvim', -- Commenter
    config = function()
      require('Comment').setup()
    end,
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }

  use('jose-elias-alvarez/null-ls.nvim') -- Null-LS
  use('jose-elias-alvarez/typescript.nvim') -- Better TypeScript
  use('MunifTanjim/prettier.nvim')-- Prettier

  use('mbbill/undotree') -- UndoTree

  use({ -- Markdown Preview
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use {
    'lewis6991/gitsigns.nvim', -- GitSigns
    config = function()
      require('gitsigns').setup()
      require("scrollbar.handlers.gitsigns").setup()
    end
  }


  -- Your plugins go here
end)
