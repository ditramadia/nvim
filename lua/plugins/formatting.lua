return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        prettier = {
          -- Globally force Prettier to never insert trailing commas
          prepend_args = { "--trailing-comma", "none" },
        },
      },
    },
  },
}
