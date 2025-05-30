local keybindings = require("ferran.plugins.lsp.keybindings")
local capabilities = require("ferran.plugins.lsp.capabilities")


vim.lsp.config('ts_ls', {
    on_attach = keybindings.on_attach,
    capabilities = capabilities,
    filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
})
