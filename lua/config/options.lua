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
