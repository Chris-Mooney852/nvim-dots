require('mini.indentscope').setup()
require('mini.comment').setup()
require('mini.cursorword').setup()
require('mini.fuzzy').setup()
require('mini.pairs').setup()
require('mini.splitjoin').setup()
require('mini.starter').setup()
require('mini.surround').setup()
require('mini.tabline').setup()
require('mini.sessions').setup()

require('mini.jump2d').setup({
  allowed_windows = {
    current = true,
    not_current = false,
  }
})
require('mini.move').setup({
  mappings = {
    up = '<M-Up>',
    down = '<M-Down>',
    right = '<M-Right>',
    left = '<M-Left>',
  }
})
require("mini.animate").setup({
  scroll = {
    enable = false
  }
})
