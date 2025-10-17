-- vim.filetype.add({
--   extension = {
--     templ = "templ",
--   },
-- })
require("nvim-treesitter").install({ "templ" })
return {
  -- Enable templ goto support
  {
    "neovim/nvim-lspconfig",
    opts = function(args)
      local go_to_definition = function()
        if vim.bo.filetype == "go" then
          vim.lsp.buf.definition({
            on_list = function(options)
              if options == nil or options.items == nil or #options.items == 0 then
                return
              end

              local targetFile = options.items[1].filename
              local prefix = string.match(targetFile, "(.-)_templ%.go$")

              if prefix then
                local function_name = vim.fn.expand("<cword>")
                options.items[1].filename = prefix .. ".templ"
                local qflist = vim.fn.getqflist()
                vim.fn.setqflist(options.items, " ")
                vim.api.nvim_command("cfirst")
                vim.fn.setqflist(qflist, " ")
                vim.api.nvim_command("silent! /templ " .. function_name)
              else
                vim.lsp.buf.definition()
              end
            end,
          })
        else
          vim.lsp.buf.definition()
        end
      end
      local function go_goto_def()
        if vim.bo.filetype == "go" then
          return go_to_definition()
        else
          return vim.lsp.buf.definition()
        end
      end
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "gd", go_goto_def }
    end,
  },
  -- Enable templ LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        templ = {},
      },
    },
  },
}
