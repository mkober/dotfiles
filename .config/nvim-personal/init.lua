local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 50

--vim.opt.scrolloff = 8
--vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

-- go back to file view
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)

-- save the file if it's been updated
vim.keymap.set("n","<C-S>",":update<CR>")

-- go to previous and next buffer
vim.keymap.set("n","<leader>bb",":bp<CR>")
vim.keymap.set("n","<leader>nn",":bn<CR>")

-- go forward a page
vim.keymap.set("n","f", "<C-F>")

-- go back a page
vim.keymap.set("n","b", "<C-B>")

-- exit insert mode by pressing jk quickly, also save the file 
vim.keymap.set("i","jk", "<Esc>:update<CR>")

-- quick splits
vim.keymap.set("n","<leader>vs",":vsplit<CR>")
vim.keymap.set("n","<leader>hs",":split<CR>")


return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'Mofiqul/dracula.nvim'
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use 'folke/trouble.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  use 'nvim-treesitter/playground'
  use 'nvim-treesitter/nvim-treesitter-context'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'saadparwaiz1/cmp_luasnip'},
	 	  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use("github/copilot.vim")

  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)


