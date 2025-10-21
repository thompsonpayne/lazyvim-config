-- ~/.config/nvim/lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  opts = {
    animate = {
      -- Set animation fps to 120
      fps = 120,
    },
    picker = {
      sources = {
        explorer = {
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
