return {
  -- Installs the LSP server for errors/autocomplete
  -- Plugin `williamboman/mason.nvim` was renamed to `mason-org/mason.nvim`.
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "graphql-language-service-cli")
    end,
  },

  -- Installs the Treesitter parser for HIGHLIGHTING
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "graphql")
    end,
  },

  -- Configures the LSP to run on TypeScript files
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        graphql = {
          filetypes = {
            "graphql",
            "typescript",
            "typescriptreact",
            "javascript",
            "javascriptreact",
          },
        },
      },
    },
  },
}
