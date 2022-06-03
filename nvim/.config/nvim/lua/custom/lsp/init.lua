local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require "custom.lsp.configs"
require("custom.lsp.handlers").setup()
-- require("custom.lsp.lsp-installer")
require "custom.lsp.null-ls"
