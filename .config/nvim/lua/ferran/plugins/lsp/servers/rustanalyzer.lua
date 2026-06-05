local keybindings = require("ferran.plugins.lsp.keybindings")
local capabilities = require("ferran.plugins.lsp.capabilities")

vim.lsp.config('rust_analyzer', {
    cmd = { 'rust-analyzer' },
    on_attach = keybindings.on_attach,
    capabilities = capabilities
})
