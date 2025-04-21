-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    -- amongst your other plugins
    {
      'akinsho/toggleterm.nvim',
      version = '*',
      config = function()
        require('toggleterm').setup {
          open_mapping = [[<c-\>]],
        }
        insert_mappings = true
      end,
    },
    {
      'simrat39/rust-tools.nvim',
      opts = {
        server = {
          settings = {
            ['rust-analyzer'] = {
              checkOnSave = {
                allFeatures = false,
              },
              diagnostics = {
                disabled = { 'inactive-code' },
              },
            },
          },
        },
      },
    },
  },
  { 'augmentcode/augment.vim' },
  -- {
  --   'simrat39/rust-tools.nvim',
  --   config = function()
  --     require('rust-tools').setup{
  --
  --     }
  --   end
  -- }
}
