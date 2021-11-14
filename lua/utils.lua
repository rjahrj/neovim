local execute = vim.api.nvim_command
local vim = vim
local opt  = vim.opt   -- global
local g  = vim.g     -- global for let options
local wo = vim.wo    -- window local
local bo = vim.bo    -- buffer local
local fn = vim.fn    -- access vim functions
local cmd = vim.cmd  -- vim commands
local api = vim.api  -- access vim api

local M = {}

function M.ReloadConfig()
    local hls_status = vim.v.hlsearch
    for name,_ in pairs(package.loaded) do
        if name:match('^cnull') then
            package.loaded[name] = nil
        end
    end
    dofile(vim.env.MYVIMRC)
    if hls_status == 0 then
        vim.opt.hlsearch = false
    end
end

return M
