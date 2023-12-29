return {
  'stevearc/conform.nvim',
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")
    local formatters_by_ft = require("akash.plugins.lsp.servers").formatters_by_ft

    conform.setup({
      formatters_by_ft = formatters_by_ft,
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      }
    })

    vim.keymap.set({ "n", "v" }, "<leader>fm", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      })
    end, { desc = "Format File" })
  end
}
