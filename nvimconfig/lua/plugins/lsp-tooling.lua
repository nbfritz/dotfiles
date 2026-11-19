-- Language servers are installed outside Neovim:
--
--   brew install lua-language-server typescript-language-server
--
-- ruby-lsp is not installed with brew. It is a gem that has to live in each asdf Ruby, so it runs
-- with the project's Ruby and can build its bundle (.ruby-lsp/, which adds ruby-lsp-rails) from the
-- project's Gemfile:
--
--   gem install ruby-lsp       (once per Ruby version; listing it in ~/.default-gems automates this)
return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config('lua_ls', {})
      vim.lsp.enable('lua_ls')

      vim.lsp.config('ts_ls', {})
      vim.lsp.enable('ts_ls')

      vim.lsp.config('ruby_lsp', {
        -- cmd = { 'bundle', 'exec', 'ruby-lsp' },
        init_options = {
          -- pagy defines `Pagy::Method = Module.new`, which ruby-lsp indexes as a constant. Because tropic's
          -- ApplicationController includes it, ancestor resolution raises and every controller loses its
          -- inherited methods (concerns, ActionController::Base). Not indexing pagy makes ruby-lsp skip the include.
          indexing = { excludedGems = { 'pagy' } },
        },
      })
      vim.lsp.enable('ruby_lsp')
    end
  },
}
