require('mini.indentscope').setup()
require('mini.comment').setup()
require('mini.cursorword').setup()
require('mini.fuzzy').setup()
require('mini.jump2d').setup()
require('mini.pairs').setup()
require('mini.splitjoin').setup()
require('mini.sessions').setup()
require('mini.starter').setup()
require('mini.surround').setup()
require('mini.tabline').setup()

require('mini.move').setup({
  mappings = {
    up = '<M-Up>',
    down = '<M-Down>',
    right = '<M-Right>',
    left = '<M-Left>',
  }
})

