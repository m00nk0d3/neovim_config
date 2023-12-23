return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup{}
    vim.keymap.set('n', '<Tab>', ":BufferLineCycleNext<cr>")
    vim.keymap.set('n', '<S-Tab>', ":BufferLineCyclePrev<cr>")
  end
}

