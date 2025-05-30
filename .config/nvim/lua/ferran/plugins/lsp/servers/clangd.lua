local keybindings = require("ferran.plugins.lsp.keybindings")

vim.lsp.config('clangd', {
    on_attach = keybindings.on_attach,
})
