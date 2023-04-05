require("nvim-treesitter.install").prefer_git = true
require('nvim-treesitter.configs').setup{
    ensure_installed = { "go", "gomod", "lua", "c", "vim" },
    sync_install = false,
    ignore_install = { "" },
    highlight = {
        enable = true,
        disable = { "" },
        additional_vim_regex_highlighting = true,
    },
    indent = {
        enable = true,
        disable = { "yaml" }
    },
}
