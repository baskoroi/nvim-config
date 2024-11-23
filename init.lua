require 'core.options'
require 'core.keymaps'

-- lazy.nvim: setup
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

-- lazy.nvim: plugins
require('lazy').setup({
  require('plugins.neotree'),
  require('plugins.color_theme'),
  require('plugins.bufferline'),
  require('plugins.lualine'),
  require('plugins.treesitter'),
})
