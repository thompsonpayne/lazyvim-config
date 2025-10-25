-- lua/plugins/neovim-project.lua
local wk = require("which-key")

wk.add({
  { "<leader>m", group = "Manage projects" },
})
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
      "~/.config/*",
      "~/work/*",
      "~/study/*",
      "~/study/Go/*",
    },
    picker = {
      type = "snacks", -- "telescope", "fzf-lua", or "snacks"
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
