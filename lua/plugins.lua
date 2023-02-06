vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- You add plugins here  
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'hrsh7th/nvim-cmp' 
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'                             
  use 'hrsh7th/cmp-path'                              
  use 'hrsh7th/cmp-buffer'                            
  use 'Mofiqul/dracula.nvim'
  use "lukas-reineke/indent-blankline.nvim"
  use 'wakatime/vim-wakatime'
  use 'f-person/git-blame.nvim'
  use 'lukas-reineke/lsp-format.nvim'
  use {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end,
  }
  use {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua", "nvim-cmp" },
    config = function ()
      require("copilot_cmp").setup({
        method = "getCompletionsCycling"
      })
    end
  }
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    -- recommended packer way of installing it is to run this function, copied from documentation
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,

  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end,
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require('hop').setup({})
    end
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use {
    'akinsho/git-conflict.nvim', 
    tag = "*", 
    config = function()
      require('git-conflict').setup()
    end
  }
  use {
    'vimwiki/vimwiki',
    config = function()
      vim.g.vimwiki_list = {
        {
          path = '~/vimwiki',
          syntax = 'markdown',
          ext = '.md',
        }
      }
    end
  }
  use {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    tag = "v<CurrentMajor>.*",
    -- install jsregexp (optional!:).
    run = "make install_jsregexp"
  }
  use {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'doom',
        config = {
          header = {
            '',
            '',
            '',
            '',
            '',
            '',
            '██████╗░██╗░██████╗░  ██████╗░░█████╗░██╗███╗░░██╗██╗░░██╗░██████╗',
            '██╔══██╗██║██╔════╝░  ██╔══██╗██╔══██╗██║████╗░██║██║░██╔╝██╔════╝',
            '██████╦╝██║██║░░██╗░  ██║░░██║██║░░██║██║██╔██╗██║█████═╝░╚█████╗░',
            '██╔══██╗██║██║░░╚██╗  ██║░░██║██║░░██║██║██║╚████║██╔═██╗░░╚═══██╗',
            '██████╦╝██║╚██████╔╝  ██████╔╝╚█████╔╝██║██║░╚███║██║░╚██╗██████╔╝',
            '╚═════╝░╚═╝░╚═════╝░  ╚═════╝░░╚════╝░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝╚═════╝░',
            '',
            '',
            '',
            '',
            '',
            '',
            ''
          }, --your header
          center = {
            {
              icon = ' ',
              desc = 'Find File           ',
              key = 'f',
              keymap = 'SPC f f',
              action = 'Telescope find_files'
            },
            {
              icon = ' ',
              desc = 'Find Text           ',
              key = 't',
              keymap = 'SPC f g',
              action = 'Telescope grep_string'
            },
            {
              icon = ' ',
              desc = 'Wiki Index           ',
              key = 'w',
              keymap = 'SPC w w',
              action = 'VimwikiIndex'
            },
            {
              icon = ' ',
              desc = 'Meeting Notes           ',
              key = 'i',
              keymap = 'SPC w i',
              action = 'VimwikiDiaryIndex'
            },
            {
              icon = ' ',
              desc = 'Quit           ',
              key = 'q',
              keymap = 'SPC q q',
              action = 'q'
            }
          },
          footer = {
            '',
            '',
            '',
            '',
            '🌟 Don\'t let your memes be dreams 🌟'
          }  --your footer
        }
      }
    end,
    requires = {'nvim-tree/nvim-web-devicons'}
  }
end)
