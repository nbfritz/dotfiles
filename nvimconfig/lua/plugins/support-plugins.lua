return {
  { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, opts = { transparent_background = true } },

  { "MunifTanjim/nui.nvim", lazy = true },

  {
    "nvim-mini/mini.icons",
    lazy = true,
    opts = {
      file = {
        [".keep"] = { glyph = "󰊢", hl = "MiniIconsGrey" },
        ["devcontainer.json"] = { glyph = "", hl = "MiniIconsAzure" },
      },
      filetype = {
        dotenv = { glyph = "", hl = "MiniIconsYellow" },
      },
    },
    init = function()
      package.preload["nvim-web-devicons"] = function()
        require("mini.icons").mock_nvim_web_devicons()
        return package.loaded["nvim-web-devicons"]
      end
    end,
  },

  -- Parsers are compiled locally on install, which needs the tree-sitter CLI (plus curl, tar and a C compiler,
  -- which macOS already has):
  --
  --   brew install tree-sitter-cli
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter').install({ 'ruby', 'embedded_template', 'html', 'javascript', 'css' })

      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'ruby', 'eruby' },
        callback = function() vim.treesitter.start() end,
      })

      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'ruby' },
        callback = function()
          vim.wo[0][0].foldmethod = 'expr'
          vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
          vim.wo[0][0].foldlevel = 99
        end,
      })
    end,
  },
}
