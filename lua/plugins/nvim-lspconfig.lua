return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'saghen/blink.cmp',
    {
      'folke/lazydev.nvim',
      ft = 'lua', -- only load on lua files
      opts = {
        library = {
          -- See the configuration section for more details
          -- Load luvit types when the `vim.uv` word is found
          { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
        },
      },
    },
  },
  config = function()
    vim.lsp.enable('clangd')
    vim.lsp.enable('lua_ls')

    local capabilities = require('blink.cmp').get_lsp_capabilities()
    vim.lsp.config('*', { capabilities = capabilities })
    vim.diagnostic.config({ virtual_text = true })
  end
}
