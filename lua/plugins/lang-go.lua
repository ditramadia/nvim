return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              -- Stop gopls from applying gofumpt rules
              gofumpt = false,
            },
          },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}

      -- Goimports only (gofmt rules + import sorting), no gofumpt
      opts.formatters_by_ft.go = { "goimports" }
    end,
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        -- Linter
        go = { "golangcilint" },
      },
    },
  },
}
