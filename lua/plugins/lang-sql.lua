return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters = opts.formatters or {}

      -- Use postgres dialect
      opts.formatters.sqlfluff = {
        args = { "format", "--dialect=postgres", "-" },
      }
    end,
  },
}
