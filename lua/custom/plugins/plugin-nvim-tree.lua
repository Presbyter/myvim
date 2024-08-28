return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    keys = {
      { '<leader>t', '<cmd>NvimTreeToggle<CR>', desc = 'Toggle nvim-tree' },
    },
    config = function()
      require('nvim-web-devicons').set_default_icon('', '#6d8086', 65)

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
