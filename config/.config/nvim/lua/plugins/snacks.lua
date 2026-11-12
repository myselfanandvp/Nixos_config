return {
  {
    "folke/snacks.nvim",
    opts = {
      bigfile = { enable = false },
      terminal = {
        win = {
          keys = {
            term_normal = {
              "<esc>",
              "<c-\\><c-n>",
              mode = "t",
              desc = "Enter Normal Mode",
            },
          },
        },
      },
    },
  },
}
