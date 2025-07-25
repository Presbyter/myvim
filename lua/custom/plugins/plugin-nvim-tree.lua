-- return {
--   'nvim-tree/nvim-tree.lua',
--   version = '*',
--   lazy = false,
--   dependencies = {
--     'nvim-tree/nvim-web-devicons',
--   },
--   keys = {
--     { '<leader>tt', '<cmd>NvimTreeToggle<CR>', desc = 'Toggle nvim-tree' },
--   },
--   config = function()
--     require('nvim-tree').setup {}
--   end,
-- }
return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    keys = {
      { '<leader>tt', '<cmd>NvimTreeToggle<CR>', desc = 'Toggle nvim-tree' },
    },
    config = function()
      -- disable netrw at the very start of your init.lua
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      -- optionally enable 24-bit colour
      vim.opt.termguicolors = true

      require('nvim-tree').setup {
        sort = {
          sorter = 'case_sensitive',
        },
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
      }
    end,
  },
}
