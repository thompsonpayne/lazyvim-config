-- lua/plugins/neovim-project.lua
local wk = require("which-key")

wk.add({
  { "<leader>m", group = "Manage projects" },
})

local function get_project_name()
  local ok, session_manager = pcall(require, "session_manager")
  if not ok then
    return ""
  end

  local session = session_manager.current_session_name
  if session then
    -- Clean up the name if it includes path info
    return vim.fn.fnamemodify(session, ":t:r")
  end

  -- fallback to project directory name
  return vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
end
return {
  "coffebar/neovim-project",
  lazy = false,
  priority = 100,
  init = function()
    -- Save certain globals in sessions (recommended by the plugin)
    vim.opt.sessionoptions:append("globals")
  end,
  opts = {
    projects = {
      "~/jmco/*",
      "~/jmco/",
      "~/.config/*",
      "~/work/*",
      "~/study/*",
      "~/study/Go/*",
      "~/study/zig/*",
    },
    picker = {
      type = "fzf-lua", -- "telescope", "fzf-lua", or "snacks"
    },
    -- optional: last_session_on_startup = false, dashboard_mode = false, etc.
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "Shatur/neovim-session-manager",
    -- optional pickers
    "folke/snacks.nvim",
  },
  config = function(_, opts)
    require("neovim-project").setup(opts)
  end,
  keys = {
    { "<leader>mr", "<cmd>NeovimProjectHistory<CR>", desc = "Project: recent" },
    { "<leader>ml", "<cmd>NeovimProjectDiscover<CR>", desc = "Project: discover" },
  },
}
