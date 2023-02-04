vim.g.mapleader = ' '
require('base')
require('highlights')
require('maps')
require('plugin')
require('mason').setup()
require("mason-lspconfig").setup()
