vim.opt.scrolloff = 5
vim.g.mapleader = " "


-- indentation settings -- 
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")


-- absolute and relative line numbers --
vim.cmd("set number")

local numbertogglegroup = vim.api.nvim_create_augroup("numbertoggle", {clear = true})
vim.api.nvim_create_autocmd(
    {"BufEnter","FocusGained","InsertLeave"},
    {
        pattern = '*',
        callback = function()
            vim.wo.relativenumber = true
        end,
        group = numbertogglegroup
    })
vim.api.nvim_create_autocmd(
    {"BufLeave","FocusLost","InsertEnter"},
    {
        pattern = '*',
        callback = function()
            vim.wo.relativenumber = false
        end,
        group = numbertogglegroup
    })
