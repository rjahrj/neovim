require("lspconfig")["null-ls"].setup({
  on_attach = save_on_attach,
})
-- nvim-lsp-installer
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
  local opts = {
    capabilities = capabilities,
    on_attach = function(client)
      client.resolved_capabilities.document_formatting = true
      client.resolved_capabilities.document_range_formatting = true
    end,
  }
  opts.capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  server:setup(opts)
end)
