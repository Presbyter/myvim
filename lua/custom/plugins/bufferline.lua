vim.pack.add {
  'https://github.com/akinsho/bufferline.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
}

require('bufferline').setup {
  options = {
    hover = {
      enabled = true,
      delay = 200,
      reveal = { 'close' },
    },
    separator_style = 'thin',
    indicator = {
      icon = '| ',
      style = 'none',
    },
    offsets = {
      {
        filetype = 'neo-tree',
        text = 'Neo-tree',
        text_align = 'left',
        separator = true, -- Adds a vertical line separating the offset from tabs
      },
    },
    diagnostics = 'nvim_lsp',
  },
}
