return {
  {
    'sindrets/diffview.nvim',
    dependencies = 'nvim-lua/plenary.nvim',  -- Required dependency
    keys = {
      { "<leader>gd", ":DiffviewOpen<CR>", desc = "DiffView", silent = true },
    },
    cmd = { "DiffviewOpen" },
    config = function()
      require('diffview').setup({
        -- enable syntax highlighting
        enhanced_diff_hl = true,
        -- Optional: Customize UI or keybindings
        view = {
          default = { winbar_info = true },  -- Show file info in winbar
        },
      })
    end
  }
}
