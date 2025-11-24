-- lua/plugins/javascript-types.lua
if true then
  return {}
end
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- Get tsserver configuration
      tsserver = {
        -- Merge the default settings with our new settings
        settings = {
          implicitProjectConfiguration = {
            -- THIS IS THE KEY
            -- This tells tsserver to read JSDoc and provide
            -- type checking for .js files
            checkJs = true,
          },
        },
      },
    },
  },
}
