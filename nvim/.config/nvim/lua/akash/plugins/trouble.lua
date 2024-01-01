return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local trouble = require("trouble")
    vim.keymap.set("n", "<leader>fd", function() trouble.toggle() end, { desc = "File Diagnostics" })
  end
}
