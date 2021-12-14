--Function for keymapper
local map = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

--Remap space as leader key
map('', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Y yank until the end of line  (note: this is now a default on master)
map('n', 'Y', 'y$')

-- Terminal Keybindings
map('t', 'jk', [[<c-\><c-n>]])
map('t', '<C-h>', [[<C-\><C-n><C-W>h]])
map('t', '<C-j>', [[<C-\><C-n><C-W>j]])
map('t', '<C-k>', [[<C-\><C-n><C-W>k]])
map('t', '<C-l>', [[<C-\><C-n><C-W>l]])

-- Window Management
map('n', '<C-h>', [[<C-W>h]])
map('n', '<C-j>', [[<C-W>j]])
map('n', '<C-k>', [[<C-W>k]])
map('n', '<C-l>', [[<C-W>l]])

map('n', "<C-A-h>", ":vertical resize +2<CR>")
map('n', "<C-A-j>", ":resize +2<CR>")
map('n', "<C-A-k>", ":resize -2<CR>")
map('n', "<C-A-l>", ":vertical resize -2<CR>")

-- Telescope
--map('n', '<leader><space>', [[<cmd>lua require('telescope.builtin').buffers()<CR>]])
map('n', '<leader>sf', [[<cmd>lua require('telescope.builtin').find_files()<CR>]])
map('n', '<leader>sb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]])
--map('n', '<leader>sh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]])
--map('n', '<leader>st', [[<cmd>lua require('telescope.builtin').tags()<CR>]])
--map('n', '<leader>sd', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]])
--map('n', '<leader>sp', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]])
--map('n', '<leader>so', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]])
--map('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]])
--
--map('n', '<leader>m', [[<cmd>lua require('telescope.builtin').marks()<CR>]])
