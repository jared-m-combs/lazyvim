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
      servers = {
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
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
