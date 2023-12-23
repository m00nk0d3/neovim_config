
return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
    {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { 'lua_ls', 'tsserver' },
     })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local cmp_nvim_lsp = require("cmp_nvim_lsp")
      local capabilities = cmp_nvim_lsp.default_capabilities()


      local opts = { noremap = true, silent = true }
      local on_attach = function()
      local keymap = vim.keymap -- for conciseness
        opts.buffer = 0        -- set keybinds
        keymap.set("n", "K", vim.lsp.buf.hover, opts)

        keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, opts)
      end
      lspconfig["tsserver"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })
      lspconfig["lua_ls"].setup({
        on_attach = on_attach,
      })
    end
  },
  {
    "hrsh7th/nvim-cmp",
    event= "InsertEnter",
    dependencies = {
    "hrsh7th/cmp-buffer", -- source for text in buffer
    "hrsh7th/cmp-path", -- source for file system paths
    "L3MON4D3/LuaSnip", -- snippet engine
    "saadparwaiz1/cmp_luasnip", -- for autocompletion
    "rafamadriz/friendly-snippets", -- useful snippets
    "onsails/lspkind.nvim", -- vs-code like pictograms
  },
    config = function()
      local cmp = require("cmp")
       local luasnip = require("luasnip")

    local lspkind = require("lspkind")
    require("luasnip.loaders.from_vscode").lazy_load()
      cmp.setup({
      snippet = { -- configure how nvim-cmp interacts with snippet engine
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<CR>'] = cmp.mapping.confirm({ select = true}),
          ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
          ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion

        }),
       sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" }, -- snippets
        { name = "buffer" }, -- text within current buffer
        { name = "path" }, -- file system paths
      }),
      -- configure lspkind for vs-code like pictograms in completion menu

      formatting = {
        format = lspkind.cmp_format({
          maxwidth = 50,
          ellipsis_char = "...",
        }),
      },      })
    end
  },
  {
    "hrsh7th/cmp-nvim-lsp",
    config = function()
      require("cmp_nvim_lsp").setup({})
    end
  },
}
