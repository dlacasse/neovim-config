-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- Telescope
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.8', requires = { {'nvim-lua/plenary.nvim'} }}
  
  -- Tree sitter
  use({'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})

  -- Theme
  use ({
	'dracula/vim', 
  	as = 'dracula', 
  	config = function()
	  vim.cmd("colorscheme dracula")
  	end
  })
end)
