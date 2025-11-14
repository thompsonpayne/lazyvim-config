-- In lua/plugins/zlint.lua
-- if true then
--   return {}
-- end
return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      -- This adds zlint to the list of linters for Zig files
      opts.linters_by_ft = opts.linters_by_ft or {}
      opts.linters_by_ft["zig"] = opts.linters_by_ft["zig"] or {}
      table.insert(opts.linters_by_ft["zig"], "zlint")
    end,
  },
}
