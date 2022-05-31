vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use {'wbthomason/packer.nvim', opt = true}

    --theme
    use 'folke/tokyonight.nvim'
    vim.cmd[[colorscheme tokyonight]]
    vim.g.tokyonight_style="night"

    -- UI
    use 'preservim/nerdtree'
    vim.api.nvim_set_keymap('n', ',n', ":NERDTree<Enter>", { noremap = true })

    --fuzzy find
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    
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
    require('nvim-treesitter.configs').setup {
      ensure_installed = "all",
      highlight = {
        enable = true,
      },
      indent = {
          enable = true
      }
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)

