-- ~/.config/nvim/lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  opts = {
    animate = {
      -- Set animation fps to 120
      -- fps = 120,
      enabled = true,
    },
    terminal = {
      win = {
        position = "float",
        border = "rounded",
      },
    },
    picker = {
      sources = {
        explorer = {
          auto_close = true,
          layout = {
            preset = "default",
            preview = true,
          },
          hidden = true,
          ignored = true,
          follow = true,
        },
        files = {
          hidden = true,
          ignored = true,
          follow = true,
          exclude = {
            "**/.git/*",
            "**/target/*",
            "**/node_modules/*",
            "**/.yarn/cache/*",
            "**/.yarn/releases/*",
            "**/.pnpm-store/*",
          },
        },
      },
    },
  },
}
