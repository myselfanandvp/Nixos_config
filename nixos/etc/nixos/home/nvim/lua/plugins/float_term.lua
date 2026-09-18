return {
  "akinsho/toggleterm.nvim",

  opts = {
    direction = "float",

    float_opts = {
      border = "rounded",
      width = 80,
      height = 20,
    },

    on_open = function(term)
      -- Esc: terminal mode -> normal mode
      vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], {
        buffer = term.bufnr,
        silent = true,
      })

      -- q: quit/kill this terminal
      vim.keymap.set("n", "q", function()
        term:shutdown()
      end, {
        buffer = term.bufnr,
        silent = true,
      })
    end,
  },

  keys = {
    {
      "<leader>ft",
      "<cmd>ToggleTerm<cr>",
      desc = "Toggle floating terminal",
    },
  },
}
