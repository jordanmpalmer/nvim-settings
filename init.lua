-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'core.options'
require 'core.keymaps'
require 'core.autocommands'

-- Map 'nn' in Insert mode to escape Insert mode (i.e., press Esc)
-- vim.api.nvim_set_keymap('i', 'nn', '<Esc>', { noremap = true })

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

vim.o.clipboard = 'unnamedplus'
vim.g.clipboard = {
  name = 'win32yank-wsl',
  copy = {
    ['+'] = '/mnt/c/Users/jorda/OneDrive/Documents/WSLPlugins/win32yank.exe -i --crlf',
    ['*'] = '/mnt/c/Users/jorda/OneDrive/Documents/WSLPlugins/win32yank.exe -i --crlf',
  },
  paste = {
    ['+'] = '/mnt/c/Users/jorda/OneDrive/Documents/WSLPlugins/win32yank.exe -o --lf',
    ['*'] = '/mnt/c/Users/jorda/OneDrive/Documents/WSLPlugins/win32yank.exe -o --lf',
  },
  cache_enabled = 0,
}
