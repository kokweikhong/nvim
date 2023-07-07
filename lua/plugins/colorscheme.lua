return {
  -- 'folke/tokyonight.nvim',
  -- branch = 'main',
  -- priority = 1000,
  "olimorris/onedarkpro.nvim",
  priority = 1000, -- Ensure it loads first
  config = function()
    -- vim.cmd.colorscheme 'tokyonight'
    vim.cmd.colorscheme "onedark"
  end,
}
