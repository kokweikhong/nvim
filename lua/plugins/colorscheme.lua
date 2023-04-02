return {
  'folke/tokyonight.nvim',
  branch = 'main',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'tokyonight'
  end,
}
