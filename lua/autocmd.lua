local opt = vim.opt
local api = vim.api
local cmd = vim.cmd

function buf_config()
    local buffer = api.nvim_get_current_buf()
    local filetype = api.nvim_buf_get_option(buffer, 'filetype')

    if filetype == 'go' then
        opt.expandtab = true
        opt.tabstop = 4
        opt.shiftwidth = 4
        opt.tabstop = 4
        opt.filetype = 'go'
    end
end

api.nvim_create_autocmd(
    {
        "BufNewFile",
        "BufRead",
    },
    {
        pattern = '*',
        callback = function()
            vim.schedule(buf_config)
        end
    }
)

function close_preview()
    if vim.fn.pumvisible() == 0 then
        cmd('pclose')
    end
end

api.nvim_create_autocmd(
    {
        'CursorMovedI',
        'InsertLeave',
    },
    {
        pattern = '*',
        callback = function()
            vim.schedule(close_preview)
        end
    }
)
