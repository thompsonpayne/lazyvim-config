return {
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          -- rust-analyzer language server configuration
          ["rust-analyzer"] = {
            procMacro = {
              enable = true,
              attributes = {
                enable = true,
              },
            },
            -- Optional: Disable the annoying "unresolved-proc-macro" diagnostic
            diagnostics = {
              disabled = { "unresolved-proc-macro" },
            },
          },
        },
      },
    },
  },
}
