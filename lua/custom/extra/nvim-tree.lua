return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("custom.util").keys({
      { "<leader>t", "<cmd>NvimTreeToggle<cr>", desc = "File tree toggle" },
    })
    require("nvim-tree").setup({
      view = {
        side = "right",
        width = 40,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          git_placement = "right_align",
          glyphs = {
            git = {
              untracked = "*",
            },
          },
        },
      },
    })
  end,
}
