vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- You add plugins here  
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-path'                              
  use 'hrsh7th/cmp-buffer'                            
  use 'Mofiqul/dracula.nvim'
  use 'marko-cerovac/material.nvim'
  use 'rmehri01/onenord.nvim'
  use 'sainnhe/everforest'
  use 'wakatime/vim-wakatime'
  use 'f-person/git-blame.nvim'
  use 'lukas-reineke/lsp-format.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'kdheepak/lazygit.nvim'
  use "rafamadriz/friendly-snippets"
  use 'rktjmp/lush.nvim'
  use '~/Downloads/packages/fullstop'
  use 'simrat39/symbols-outline.nvim'
  use 'echasnovski/mini.nvim'
  -- Lua
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use { 'L3MON4D3/LuaSnip' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'saadparwaiz1/cmp_luasnip' }
  use {
    'NvChad/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end
  }
  use({
    "folke/noice.nvim",
    config = function()
      require("noice").setup({
        -- add any options here
      })
    end,
    requires = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  })
  -- Lua
  use {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
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
  -- use {
  --   'phaazon/hop.nvim',
  --   branch = 'v2', -- optional but strongly recommended
  --   config = function()
  --     -- you can configure Hop the way you like here; see :h hop-config
  --     require('hop').setup({})
  --   end
  -- }
  use {
    'akinsho/git-conflict.nvim', 
    tag = "*", 
    config = function()
      require('git-conflict').setup()
    end
  }
  use {
    'nvim-orgmode/orgmode',
    config = function()
      require('orgmode').setup{
        org_agenda_files = {'~/org/**/*'},
        org_default_notes_file = '~/org/refile.org',
      }
    end
  }
  use {
    "rest-nvim/rest.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("rest-nvim").setup({
        -- Open request results in a horizontal split
        result_split_horizontal = false,
        -- Keep the http file buffer above|left when split horizontal|vertical
        result_split_in_place = false,
        -- Skip SSL verification, useful for unknown certificates
        skip_ssl_verification = false,
        -- Encode URL before making request
        encode_url = true,
        -- Highlight request on run
        highlight = {
          enabled = true,
          timeout = 150,
        },
        result = {
          -- toggle showing URL, HTTP info, headers at top the of result window
          show_url = true,
          show_http_info = true,
          show_headers = true,
          -- executables or functions for formatting response body [optional]
          -- set them to false if you want to disable them
          formatters = {
            json = "jq",
            html = function(body)
              return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
            end
          },
        },
        -- Jump to request line on run
        jump_to_request = false,
        env_file = '.env',
        custom_dynamic_variables = {},
        yank_dry_run = true,
      })
    end
  }
--   use {
--     'glepnir/dashboard-nvim',
--     event = 'VimEnter',
--     config = function()
--       require('dashboard').setup {
--         theme = 'doom',
--         config = {
--           header = {
--             '',
--             '',
--             '',
--             '',
--             '',
--             '',
--             '██████╗░██╗░██████╗░  ██████╗░░█████╗░██╗███╗░░██╗██╗░░██╗░██████╗',
--             '██╔══██╗██║██╔════╝░  ██╔══██╗██╔══██╗██║████╗░██║██║░██╔╝██╔════╝',
--             '██████╦╝██║██║░░██╗░  ██║░░██║██║░░██║██║██╔██╗██║█████═╝░╚█████╗░',
--             '██╔══██╗██║██║░░╚██╗  ██║░░██║██║░░██║██║██║╚████║██╔═██╗░░╚═══██╗',
--             '██████╦╝██║╚██████╔╝  ██████╔╝╚█████╔╝██║██║░╚███║██║░╚██╗██████╔╝',
--             '╚═════╝░╚═╝░╚═════╝░  ╚═════╝░░╚════╝░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝╚═════╝░',
--             '',
--             '',
--             '',
--             '',
--             '',
--             '',
--             ''
--           }, --your header
--           center = {
--             {
--               icon = ' ',
--               desc = 'Find File           ',
--               key = 'f',
--               keymap = 'SPC f f',
--               action = 'Telescope find_files'
--             },
--             {
--               icon = ' ',
--               desc = 'Find Text           ',
--               key = 't',
--               keymap = 'SPC f g',
--               action = 'Telescope live_grep'
--             },
--             {
--               icon = ' ',
--               desc = 'Find Project           ',
--               key = 'p',
--               keymap = 'SPC f p',
--               action = 'Telescope projects'
--             },
--             {
--               icon = ' ',
--               desc = 'agenda           ',
--               key = 'a',
--               keymap = 'SPC o a',
--             },
--             {
--               icon = ' ',
--               desc = 'Quit           ',
--               key = 'q',
--               keymap = 'SPC q q',
--               action = 'q'
--             }
--           },
--           footer = {
--             '',
--             '',
--             '',
--             '',
--             '🌟 Don\'t let your memes be dreams 🌟'
--           }  --your footer
--         }
--       }
--     end,
--     requires = {'nvim-tree/nvim-web-devicons'}
--   }
end)
