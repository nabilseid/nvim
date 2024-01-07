return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- diagnostics
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.diagnostics.ruff,

        -- formatting
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.black,
      },
    })

    vim.keymap.set("n", "<S-f>", vim.lsp.buf.format, {})
  end,
}
