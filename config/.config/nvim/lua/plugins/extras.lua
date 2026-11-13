return {
  -- Add CSS to TreeSitter for accurate syntax and indentation
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "css",
        "scss",
      },
    },
  },

  {
    {
      "folke/snacks.nvim",
      opts = {
        bigfile = {
          -- Increase threshold from 1.5MB to 5MB (or higher)
          size = 5 * 1024 * 1024,
          -- Optional: keep LSP/formatting active even on big files
          setup = function(ctx)
            -- Leave empty or customize what gets disabled
          end,
        },
      },
    },
  },

  -- Enable CSS Language Server (css-lsp) for suggestions
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        cssls = {}, -- CSS language server
        tailwindcss = {}, -- (Optional) Uncomment if you use Tailwind CSS
        eslint = {
          root_dir = function(fname)
            local util = require("lspconfig.util")
            if util.root_pattern(".oxlintrc.json", "oxlint.config.ts")(fname) then
              return nil
            end
            return util.root_pattern(
              ".eslintrc",
              ".eslintrc.js",
              ".eslintrc.cjs",
              ".eslintrc.json",
              "eslint.config.js",
              "eslint.config.mjs",
              "eslint.config.cjs"
            )(fname)
          end,
        },
        oxlint = {},
      },
    },
  },
}
