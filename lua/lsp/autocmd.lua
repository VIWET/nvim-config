local api = vim.api

function show_diagnostics()
    vim.diagnostic.show()
end

api.nvim_create_autocmd(
    {
        'CursorHold'
    },
    {
        pattern = '*',
        callback = function()
            vim.schedule(show_diagnostics)
        end
    }

)
