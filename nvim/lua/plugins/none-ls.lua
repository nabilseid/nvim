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

        -- spelling & grammar
        -- null_ls.builtins.diagnostics.cspell,
         null_ls.builtins.diagnostics.codespell,
        null_ls.builtins.diagnostics.write_good
      },
    })

    vim.keymap.set("n", "<S-f>", vim.lsp.buf.format, {})
  end,
}
