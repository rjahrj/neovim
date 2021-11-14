--Incremental live completion (note: this is now a default on master)
vim.o.inccommand = 'nosplit'

--Set highlight on search
vim.o.hlsearch = false

--Make line numbers default
vim.wo.number = true

--Do not save when switching buffers (note: this is now a default on master)
vim.o.hidden = true

--Enable mouse mode
vim.o.mouse = 'a'

--Enable break indent
vim.o.breakindent = true

--Save undo history
vim.opt.undofile = true

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

vim.bo.autoindent = true
vim.bo.smartindent = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.o.scrolloff = 10

--Autochange
vim.o.autochdir = true

-- autocommands
--- This function is taken from https://github.com/norcalli/nvim_utils
--function nvim_create_augroups(definitions)
--  for group_name, definition in pairs(definitions) do
--    api.nvim_command('augroup '..group_name)
--    api.nvim_command('autocmd!')
--    for _, def in ipairs(definition) do
--      local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
--      api.nvim_command(command)
--    end
--    api.nvim_command('augroup END')
--  end
--end
--
--local autocmds = {
--    reload_vimrc = {
--        -- Reload vim config automatically
--        {"BufWritePost",[[$VIM_PATH/{*.vim,*.yaml,vimrc} nested source $MYVIMRC | redraw]]};
--    };
--    packer = {
--        { "BufWritePost", "plugins.lua", "PackerCompile" };
--    };
--    terminal_job = {
--        { "TermOpen", "*", "startinsert" };
--        { "TermOpen", "*", "setlocal listchars= nonumber norelativenumber" };
--    };
--    resize_windows_proportionally = {
--        { "VimResized", "*", ":wincmd =" };
--    };
--    toggle_search_highlighting = {
--        { "InsertEnter", "*", "setlocal nohlsearch" };
--    };
--}
--
--nvim_create_augroups(autocmds)
-- autocommands END

