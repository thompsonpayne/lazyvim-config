-- Options: "vscode", "kanagawa-dragon", "tokyonight", "ayu-dark"
local default_scheme = "kanagawa-dragon"

return {
  -- ==========================================================================
  -- 1. VSCODE THEME
  -- ==========================================================================
  {
    "Mofiqul/vscode.nvim",
    lazy = true, -- We let LazyVim load it if it's the active scheme
    opts = {
      style = "dark",
    },
  },

  -- ==========================================================================
  -- 2. KANAGAWA THEME
  -- ==========================================================================
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    opts = {},
  },

  -- ==========================================================================
  -- 3. TOKYONIGHT THEME
  -- ==========================================================================
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",
      on_colors = function(colors)
        colors.border = "#5C6370"
        -- colors.bg = "#0C0F12"
      end,
      on_highlights = function(hl)
        hl.WinSeparator = { fg = "#2f3846", bg = "NONE" }
        hl.Visual = { bg = "#2f3e76" }
        return hl
      end,
    },
  },

  -- ==========================================================================
  -- 4. AYU THEME
  -- ==========================================================================
  {
    "Shatur/neovim-ayu",
    lazy = true,
    config = function()
      require("ayu").setup({
        mirage = false,
        overrides = {
          TelescopeSelection = { bg = "#3A506B", fg = "#FFFFFF" },
          TelescopeMatching = { fg = "#FFD580", bold = true },
          MiniPickPath = { fg = "#9DA5B4" },
          LineNr = { fg = "#A0A0A0" },
          CursorLineNr = { fg = "#FFD580", bold = true },
        },
      })
      -- Note: We removed vim.cmd("colorscheme...") from here
      -- so it doesn't conflict with the logic below.
      vim.api.nvim_set_hl(0, "Visual", { bg = "#3A506B" })
    end,
  },

  -- ==========================================================================
  -- 5. CONFIGURE LAZYVIM TO USE THE SELECTION
  -- ==========================================================================
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = default_scheme,
    },
  },
}
