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
  vim.g.snacks_animate = true
  vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  vim.keymap.set("v", "<D-c>", '"+y') -- Copy
  vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode

  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0
  vim.g.neovide_padding_bottom = 0
  -- 🖋️ Font
  vim.o.guifont = "JetBrainsMono Nerd Font:h14" -- adjust size as you like

  -- 🎯 Cursor
  -- vim.g.neovide_cursor_smooth_blink = true

  vim.g.neovide_cursor_animation_length = 0.075 -- smoother but snappy
  vim.g.neovide_cursor_short_animation_length = 0.03
  -- vim.g.neovide_cursor_trail_size = 0.8
  -- vim.g.neovide_cursor_antialiasing = true

  -- ⚡ Performance
  vim.g.neovide_refresh_rate = 120 -- match your monitor refresh

  -- 💫 Scroll animation
  vim.g.neovide_scroll_animation_length = 0.15
  -- vim.g.neovide_floating_blur_amount_x = 0
  -- vim.g.neovide_floating_blur_amount_y = 0

  -- ⌨️ Key behavior tweaks
  vim.g.neovide_input_use_logo = true -- enable Cmd key on macOS
  vim.g.neovide_hide_mouse_when_typing = true

  -- vim.g.neovide_opacity = 0.8
  -- vim.g.neovide_normal_opacity = 0.8
  -- vim.g.neovide_window_blurred = true
end
vim.opt.linespace = 2 -- adds vertical breathing room
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#444444", bg = "NONE" })
vim.api.nvim_set_hl(0, "VertSplit", { fg = "#444444", bg = "NONE" })
