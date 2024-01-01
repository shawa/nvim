local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '
vim.g.maplocalleader = ','

require('lazy').setup({
  'nvim-treesitter/nvim-treesitter',
  "nvim-treesitter/nvim-treesitter-textobjects",
  'neovim/nvim-lspconfig',
  '/loctvl842/monokai-pro.nvim',
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true
  },
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'sindrets/diffview.nvim'
    }
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  },
  {
    'numToStr/Comment.nvim',
    opts = {},
    lazy = false,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
      })
    end
  },
})

require('nvim-treesitter.configs').setup(
  {
    ensure_installed = {
      'lua',
      'elixir'
    },
    highlight = {
      enable = 'true'
    }
  }
)

require('monokai-pro').setup()
require('neogit').setup()
require('toggleterm').setup()
