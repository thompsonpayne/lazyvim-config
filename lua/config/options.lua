-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "liquid",
--   callback = function()
--     vim.opt_local.foldmethod = "indent"
--     vim.opt_local.foldexpr = "nvim_treesitter#foldexpr()"
--     vim.opt_local.foldlevel = 99
--   end,
-- })
vim.opt.wrap = true

-- Disable backup files to prevent Shopify CLI errors with ~ files
vim.opt.backup = false
vim.opt.writebackup = false
if vim.g.neovide then
  -- vim.g.snacks_animate = false
  vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  vim.keymap.set("v", "<D-c>", '"+y') -- Copy
  vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode

  vim.g.neovide_padding_bottom = 0

  -- 🖋️ Font
  vim.o.guifont = "JetBrainsMono Nerd Font:h16" -- adjust size as you like

  -- 🎯 Cursor
  -- vim.g.neovide_cursor_smooth_blink = true

  vim.g.neovide_cursor_animation_length = 0.075 -- smoother but snappy
  -- vim.g.neovide_cursor_trail_size = 0.8
  vim.g.neovide_cursor_antialiasing = true

  -- 🧍 Window

  -- ⚡ Performance
  vim.g.neovide_refresh_rate = 120 -- match your monitor refresh
  vim.g.neovide_refresh_rate_idle = 5

  -- 💫 Scroll animation
  vim.g.neovide_scroll_animation_length = 0.25

  -- ⌨️ Key behavior tweaks
  vim.g.neovide_input_use_logo = true -- enable Cmd key on macOS
  vim.g.neovide_hide_mouse_when_typing = true

  -- 🔤 Fix font rendering
  vim.opt.linespace = 2 -- adds vertical breathing room
end
