--Function for keymapper
local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end


--Remap space as leader key
key_mapper('', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--Source init

--Remap for dealing with word wrap
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Y yank until the end of line  (note: this is now a default on master)
key_mapper('n', 'Y', 'y$')

-- Terminal Keybindings
key_mapper('t', 'jk', [[<c-\><c-n>]])
key_mapper('t', '<C-h>', [[<C-\><C-n><C-W>h]])
key_mapper('t', '<C-j>', [[<C-\><C-n><C-W>j]])
key_mapper('t', '<C-k>', [[<C-\><C-n><C-W>k]])
key_mapper('t', '<C-l>', [[<C-\><C-n><C-W>l]])

-- Window Management
key_mapper('n', '<C-h>', [[<C-W>h]])
key_mapper('n', '<C-j>', [[<C-W>j]])
key_mapper('n', '<C-k>', [[<C-W>k]])
key_mapper('n', '<C-l>', [[<C-W>l]])

key_mapper('n', "<C-A-h>", ":vertical resize +2<CR>")
key_mapper('n', "<C-A-j>", ":resize +2<CR>")
key_mapper('n', "<C-A-k>", ":resize -2<CR>")
key_mapper('n', "<C-A-l>", ":vertical resize -2<CR>")

-- Telescope
key_mapper('n', '<leader><space>', [[<cmd>lua require('telescope.builtin').buffers()<CR>]])
key_mapper('n', '<leader>sf', [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]])
key_mapper('n', '<leader>sb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]])
key_mapper('n', '<leader>sh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]])
key_mapper('n', '<leader>st', [[<cmd>lua require('telescope.builtin').tags()<CR>]])
key_mapper('n', '<leader>sd', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]])
key_mapper('n', '<leader>sp', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]])
key_mapper('n', '<leader>so', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]])
key_mapper('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]])

key_mapper('n', '<leader>m', [[<cmd>lua require('telescope.builtin').marks()<CR>]])
