return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = {
      sources = {
        require("null-ls").builtins.formatting.stylua,
        require("null-ls").builtins.formatting.shfmt,
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      -- autoformat = false,
      servers = {
        gopls = {},
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              cargo = {
                buildScripts = {
                  enabled = true,
                },
              },
              imports = {
                granularity = {
                  group = "module",
                },
              },
              checkOnSave = {
                allFeatures = true,
                overrideCommand = {
                  "cargo",
                  "clippy",
                  "--workspace",
                  "--message-format=json",
                  "--all-targets",
                  "--all-features",
                },
              },
            },
          },
        },
      },
    },
  },
}
