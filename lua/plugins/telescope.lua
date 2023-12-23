return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config= function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', 'ff', builtin.find_files, {})
      vim.keymap.set('n', 'fr', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>e', ':Neotree filesystem toggle left<cr>')
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }

          }
        },
        pickers = {
          colorscheme = {
            enable_preview = true
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
