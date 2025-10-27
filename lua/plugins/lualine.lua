return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local function get_project_name()
      local ok, session_manager = pcall(require, "session_manager")
      if not ok then
        return ""
      end
      local session = session_manager.current_session_name
      if session then
        return "󰀻 " .. vim.fn.fnamemodify(session, ":t:r")
      end
      return "󰀻 " .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
    end

    -- move mode indicator after project name if you prefer:
    opts.sections.lualine_a = { get_project_name, "mode" }

    return opts
    -- table.insert(opts.sections.lualine_c, { get_project_name })
  end,
}
