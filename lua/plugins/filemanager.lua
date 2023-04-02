return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<F2>", "<cmd>:Neotree toggle<CR>" }
  },
  config = function()
    require("neo-tree").setup({
      default_component_configs = {
        icon = {
          folder_closed = "+",
          folder_open = "-",
          folder_empty = "#",
          -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
          -- then these will never be used.
          default = "*",
          highlight = "NeoTreeFileIcon"
        },
        git_status = {
          symbols = {
            -- Change type
            added     = "+",    -- or "✚", but this is redundant info if you use git_status_colors on the name
            modified  = "m",    -- or "", but this is redundant info if you use git_status_colors on the name
            deleted   = "✖", -- this can only be used in the git_status source
            renamed   = "", -- this can only be used in the git_status source
            -- Status type
            untracked = "",
            ignored   = "i",
            unstaged  = "u",
            staged    = "s",
            conflict  = "c",
          }
        },
      }
    })
  end
}
