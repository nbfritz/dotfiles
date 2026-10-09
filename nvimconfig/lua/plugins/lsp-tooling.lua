return {
  { 'mason-org/mason.nvim', opts = {} },
  { 
    'mason-org/mason-lspconfig.nvim', 
    opts = {
      ensure_installed = {
        'lua_ls',
        'ts_ls',
        'ruby_lsp',
      },
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config('lua_ls', {})
      vim.lsp.enable('lua_ls')

      vim.lsp.config('ts_ls', {})
      vim.lsp.enable('ts_ls')

      vim.lsp.config('ruby_lsp', {
        cmd = { 'bundle', 'exec', 'ruby-lsp' },
        filetypes = { 'ruby' },
      })
      vim.lsp.enable('ruby_lsp')
    end
  },
}
