return require('packer').startup(
    function(use) 
        use 'wbthomason/packer.nvim'
        use 'neovim/nvim-lspconfig'
        use 'tomlion/vim-solidity'
    end
)
