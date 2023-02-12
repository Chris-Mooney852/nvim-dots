local wk = require("which-key")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Telescope
wk.register({
  ['<leader>f'] = { name = '+Telescope' },
  ['<leader>ff'] = { '<cmd>Telescope find_files<CR>', 'Find Files' },
  ['<leader>fg'] = { '<cmd>Telescope live_grep<CR>', 'Grep' },
  ['<leader>fb'] = { '<cmd>Telescope current_buffer_fuzzy_find<CR>', 'Find in Buffer' },
  ['<leader>fh'] = { '<cmd>Telescope help_tags<CR>', 'Help' },
})

-- Buffers
wk.register({
  ['<leader>b'] = { name='+Buffers' },
  ['<leader>bb'] = { '<cmd>Telescope buffers<CR>', 'Buffers' },
  ['<leader>bd'] = { '<cmd>bd<CR>', 'Close' },
  ['<leader>bn'] = { '<cmd>bnext<CR>', 'Next' },
  ['<leader>bp'] = { '<cmd>bprevious<CR>', 'Previous' },
})

-- File Tree
wk.register({
  ['<leader>t'] = { name = '+Tree' },
  ['<leader>tt'] = { '<cmd>NvimTreeToggle<CR>', 'Toggle' },
  ['<leader>tr'] = { '<cmd>NvimTreeRefresh<CR>', 'Refresh' },
  ['<leader>tf'] = { '<cmd>NvimTreeFindFile<CR>', 'Find File' },
})

-- Navigation
local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false })
end, {remap=true})
vim.keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false })
end, {remap=true})
vim.keymap.set('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, {remap=true})
vim.keymap.set('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, {remap=true})

-- Lazygit
-- vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<CR>', {})
wk.register({
  ['<leader>g'] = { name = "+Git" },
  ['<leader>gg'] = { '<cmd>LazyGit<CR>', 'Lazygit' },
})

-- Rest
wk.register({
  ['<leader>r'] = { name = '+Rest' },
  ['<leader>rr'] = { '<Plug>RestNvim', 'Run' },
})


-- Misc
wk.register({
  ['<leader>w'] = { '<cmd>w<CR>', 'Save' },
  ['<leader>q'] = { '<cmd>q<CR>', 'Quit' },
  ['<leader>Q'] = { '<cmd>qa<CR>', 'Quit All' },
  ['<leader>h'] = { '<cmd>nohlsearch<CR>', 'No Highlight' },
  ['<leader>l'] = { '<cmd>set list!<CR>', 'Toggle List' },
  ['<leader>o'] = { '<cmd>set list!<CR>', 'Toggle List' },
  ['<leader>s'] = { name = "+Split" },
  ['<leader>sv'] = { '<cmd>vsplit<CR>', 'Split Vertical' },
  ['<leader>sh'] = { '<cmd>split<CR>', 'Split Horizontal' },
})

