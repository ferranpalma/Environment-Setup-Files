local keybindings = require("ferran.plugins.lsp.keybindings")

vim.lsp.config('gopls', {
    cmd = { 'gopls' },
    on_attach = keybindings.on_attach
})
