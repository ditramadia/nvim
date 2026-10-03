return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}

      -- Markdown: Drop prettier, keep the rest
      opts.formatters_by_ft.markdown = { "markdownlint-cli2", "markdown-toc" }
      opts.formatters_by_ft["markdown.mdx"] = { "markdownlint-cli2", "markdown-toc" }
    end,
  },
}
