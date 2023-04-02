local n_keymap = function(map, func)
  vim.api.nvim_set_keymap('n', map,
  "<cmd>lua require('telescope.builtin')." .. func .. "(require('telescope.themes').get_dropdown({}))<CR>",
  { noremap = true, silent = true })
end

n_keymap('<Leader>ff', "find_files")
n_keymap('<Leader>fg', "live_grep")
n_keymap('<Leader>fb', "buffers")
n_keymap('<Leader>fh', "help_tags")
n_keymap('<Leader>fq', "quickfix")
n_keymap('<Leader>fk', "keymaps")
n_keymap('<Leader>fe', "diagnostics")
n_keymap('<Leader>fd', "lsp_definitions")
return {

  {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup {
        defaults = {
          mappings = {
            i = {
              ['<C-u>'] = false,
              ['<C-d>'] = false,
            },
          },
        },
      }

      -- Enable telescope fzf native, if installed
      require('telescope').load_extension('fzf')
    end,
  },

  -- Fuzzy Finder Algorithm which requires local dependencies to be built.
  -- Only load if `make` is available. Make sure you have the system
  -- requirements installed.
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    -- NOTE: If you are having trouble with this installation,
    --       refer to the README for telescope-fzf-native for more instructions.
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
    config = function()
      -- require('telescope').load_extension('fzf')
    end,
  },

}

-- vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
-- vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
-- vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
-- vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
-- vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
