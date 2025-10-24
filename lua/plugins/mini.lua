return {
  'nvim-mini/mini.nvim',
  version = '*',
  config = function()
    local icons = require 'mini.icons'
    icons.setup()
    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = true }
  end
}
