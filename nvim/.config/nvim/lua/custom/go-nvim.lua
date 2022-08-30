require('go').setup()

-- vim.api.nvim_create_autocmd({ "BufWritePre" }, {
--   pattern = { "*.go" },
--   desc = 'Auto format go file on save',
--   callback = function()
--     require('go.format').gofmt()
--     vim.lsp.buf.formatting_sync(nil,500)
--   end
-- })

vim.cmd[[ autocmd BufWritePre *.go :%!goimports ]]
