-- if true then
--   return {}
-- end
return {
  {
    "stevearc/conform.nvim",
    opts = {
      -- for filetype "liquid", use prettier as formatter
      formatters_by_ft = {
        ["liquid"] = { "prettier" },
        -- you might also want to format HTML inside .liquid or other related types:
        ["html"] = { "prettier" },
      },
      formatters = {
        -- override or specify how prettier should be invoked
        prettier = {
          -- if you need to explicitly point to a binary, you can do so
          command = "prettier",
          args = { "--stdin-filepath", "$FILENAME" },
        },
      },
    },
  },
}
