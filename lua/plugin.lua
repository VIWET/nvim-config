return require('packer').startup(
    function(use) 
        use 'wbthomason/packer.nvim'
        use 'neovim/nvim-lspconfig'
        use 'tomlion/vim-solidity'

        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }
		use {
			'kdheepak/monochrome.nvim'
			-- config = function()
			-- 	vim.cmd 'colorscheme monochrome'
			-- end
		}
    end
)
