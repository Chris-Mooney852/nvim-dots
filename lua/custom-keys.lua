local wk = require("which-key")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Telescope
wk.register({
  ['<leader>f'] = { name = '+Telescope' },
  ['<leader><space>'] = { '<cmd>Telescope find_files<CR>', 'Find Files' },
  ['<leader>fg'] = { '<cmd>Telescope live_grep<CR>', 'Grep' },
  ['<leader>fb'] = { '<cmd>Telescope current_buffer_fuzzy_find<CR>', 'Find in Buffer' },
  ['<leader>fh'] = { '<cmd>Telescope help_tags<CR>', 'Help' },
  ['<leader>fp'] = { '<cmd>Telescope projects<CR>', 'Projects' },
})

-- Buffers
wk.register({
  ['<leader>b'] = { name='+Buffers' },
  ['<leader>bb'] = { '<cmd>Telescope buffers<CR>', 'Buffers' },
  ['<leader>bd'] = { '<cmd>bd<CR>', 'Close' },
  ['<leader>bn'] = { '<cmd>bnext<CR>', 'Next' },
  ['<leader>bp'] = { '<cmd>bprevious<CR>', 'Previous' },
})

-- Window Navigation
wk.register({
  ['<leader>w'] = { name = '+Windows' },
  ['<leader>wh'] = { '<cmd>wincmd h<CR>', 'Left' },
  ['<leader>wn'] = { '<cmd>wincmd j<CR>', 'Down' },
  ['<leader>we'] = { '<cmd>wincmd k<CR>', 'Up' },
  ['<leader>wi'] = { '<cmd>wincmd l<CR>', 'Right' },
  ['<leader>wc'] = { '<cmd>wincmd c<CR>', 'Close' },
  ['<leader>w='] = { '<cmd>wincmd =<CR>', 'Equalize' },
  ['<leader>w-'] = { '<cmd>wincmd -<CR>', 'Decrease' },
  ['<leader>w+'] = { '<cmd>wincmd +<CR>', 'Increase' },
  ['<leader>ws'] = { name = '+Split' },
  ['<leader>wsv'] = { '<cmd>vsplit<CR>', 'Split Vertical' },
  ['<leader>wsh'] = { '<cmd>split<CR>', 'Split Horizontal' },
})

-- Lazygit
-- vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<CR>', {})
wk.register({
  ['<leader>g'] = { name = "+Git" },
  ['<leader>gg'] = { '<cmd>LazyGit<CR>', 'Lazygit' },
  ['<leader>gn'] = { '<cmd>Gitsigns next_hunk<CR>', 'Next Hunk' },
  ['<leader>gp'] = { '<cmd>Gitsigns prev_hunk<CR>', 'Previous Hunk' },
  ['<leader>gs'] = { '<cmd>Gitsigns stage_hunk<CR>', 'Stage Hunk' },
  ['<leader>gu'] = { '<cmd>Gitsigns undo_stage_hunk<CR>', 'Undo Stage Hunk' },
  ['<leader>gr'] = { '<cmd>Gitsigns reset_hunk<CR>', 'Reset Hunk' },
  ['<leader>gb'] = { '<cmd>Gitsigns blame_line<CR>', 'Blame Line' },
})

-- Rest
wk.register({
  ['<leader>r'] = { name = '+Rest' },
  ['<leader>rr'] = { '<Plug>RestNvim', 'Run' },
})

-- Open
wk.register({
  ['<leader>o'] = { name = '+Open' },
  ['<leader>of'] = { '<cmd>NvimTreeToggle<CR>', 'Toggle' },
  ['<leader>os'] = { '<cmd>SymbolsOutline<CR>', 'SymbolsOutline' },
  ['<leader>ot'] = { name="Terminal" },
  ['<leader>otf'] = { '<cmd>ToggleTerm direction=float<CR>', 'Floating' },
  ['<leader>ott'] = { '<cmd>ToggleTerm<CR>', 'Term' },
})



-- Misc
wk.register({
  ['<leader>fs'] = { '<cmd>w<CR>', 'Save' },
  ['<leader>q'] = { '<cmd>q<CR>', 'Quit' },
  ['<leader>Q'] = { '<cmd>qa<CR>', 'Quit All' },
  ['<leader>h'] = { '<cmd>nohlsearch<CR>', 'No Highlight' },
  ['<leader>l'] = { '<cmd>set list!<CR>', 'Toggle List' },
})
