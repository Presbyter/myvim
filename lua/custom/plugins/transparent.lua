vim.pack.add {
  'https://github.com/xiyaowong/transparent.nvim',
}

require('transparent').setup {
  -- 额外需要清除背景的组（可以根据需要添加）
  extra_groups = {
    'NvimTreeNormal', -- NvimTree 侧边栏
    'NeoTreeNormal', -- NeoTree 侧边栏
  },
  -- 排除不需要透明的组（比如你希望浮窗有背景）
  exclude_groups = {},
}

-- 把你的命令挂载到 VimEnter 事件上
vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    -- 这里的命令会推迟到整个 Neovim 完全启动后才跑
    vim.cmd 'TransparentEnable'
  end,
})
