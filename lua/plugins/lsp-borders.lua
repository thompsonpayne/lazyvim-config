return {
  -- Configure noice.nvim for LSP hover borders
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true, -- add border to hover docs and signature help
      },
    },
  },

  -- Add borders to nvim-cmp completion menu
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      }
      return opts
    end,
  },
}
