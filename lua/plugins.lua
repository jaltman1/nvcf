vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use {'wbthomason/packer.nvim', opt = true}

    --theme
    use 'folke/tokyonight.nvim'

    --fuzzy find
    use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
	use {'junegunn/fzf.vim'}
    
    --lsp
    use 'neovim/nvim-lspconfig'

    --audo complete
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    --
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- golang
    use 'golang/vscode-go'
    use 'fatih/vim-go'

    -- langauage parsing
    use 'nvim-treesitter/nvim-treesitter'

    if packer_bootstrap then
        require('packer').sync()
    end
end)

