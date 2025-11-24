-- if true then
--   return {}
-- end
return {
  {
    "stevearc/conform.nvim",
    cmd = { "ConformInfo" },
    opts = {
      -- for filetype "liquid", use prettier as formatter
      formatters_by_ft = {
        ["liquid"] = { "prettier" },
        -- you might also want to format HTML inside .liquid or other related types:
        ["html"] = { "biome-check" },

        templ = { "templ" },

        -- Add explicit JSON formatting - use jq for pure JSON, prettier for JSONC
        javascript = { "biome-check" },
        typescript = { "biome-check" },
        javascriptreact = { "biome-check" },
        typescriptreact = { "biome-check" },
        json = { "biome-check" },
        jsonc = { "biome-check" },
      },
      formatters = {
        -- jq for JSON formatting
        jq = {
          command = "jq",
          args = { "." },
          stdin = true,
        },
        -- override or specify how prettier should be invoked
        prettier = {
          -- Use npx to access prettier since it's not in direct PATH
          command = "npx",
          args = { "prettier", "--stdin-filepath", "$FILENAME" },
        },
        ["biome"] = {
          require_cwd = false,
        },
      },
    },
  },
}
