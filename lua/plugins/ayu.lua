vim.api.nvim_set_hl(0, "MiniPickHeader", { fg = "#9DA5B4" }) -- Brighten NonText (for blank lines, end-of-line markers, etc)
local function override_nontext()
  vim.api.nvim_set_hl(0, "NonText", { fg = "#5C6370" })
  -- You can pick any color you like — "#5C6370" is just an example
end

-- Reapply on colorscheme change
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    override_nontext()
  end,
})

-- Also apply once after startup
vim.schedule(function()
  override_nontext()
end)
return {
  {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    config = function()
      require("ayu").setup({
        mirage = false, -- set to true for Ayu Mirage (lighter dark variant)
        overrides = {
          -- Make text in Telescope or file pickers brighter
          TelescopeSelection = { bg = "#3A506B", fg = "#FFFFFF" },
          TelescopeMatching = { fg = "#FFD580", bold = true },

          MiniPickPath = { fg = "#9DA5B4" }, -- brighter gray
          -- Make line numbers brighter
          LineNr = { fg = "#A0A0A0" },
          CursorLineNr = { fg = "#FFD580", bold = true },
        },
      })
      vim.cmd("colorscheme ayu-dark")

      -- Make selection background more visible
      vim.api.nvim_set_hl(0, "Visual", { bg = "#3A506B" }) -- or "#465A77", "#5C7AFF", etc.
    end,
  },
}
