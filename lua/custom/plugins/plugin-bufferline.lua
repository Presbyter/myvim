return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      vim.opt.termguicolors = true
      vim.opt.mousemoveevent = true
      require('bufferline').setup {
        options = {
          hover = {
            enabled = true,
            delay = 200,
            reveal = { 'close' },
          },
          separator_style = 'slant',
          indicator = {
            icon = '| ',
            style = 'none',
          },
          offsets = {
            {
              filetype = 'NvimTree',
              text = 'File Explorer',
              highlight = 'Directory',
              separator = true, -- use a "true" to enable the default, or set your own character
            },
          },
          diagnostics = 'nvim_lsp',
        },
      }
    end,
  },
}
