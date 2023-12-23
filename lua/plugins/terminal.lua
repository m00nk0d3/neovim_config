return {
  {'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
      local term = require("toggleterm")
      local Terminal  = require('toggleterm.terminal').Terminal
      local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction ='float' })

      function _lazygit_toggle()
        lazygit:toggle()
      end

      vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
      vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>ToggleTerm<CR>", {noremap = true, silent = true})

      term.setup({
        direction = 'float'
      })

    end}
}
